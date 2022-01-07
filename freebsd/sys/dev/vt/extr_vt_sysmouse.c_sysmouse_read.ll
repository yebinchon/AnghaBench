; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }

@sysmouse_lock = common dso_local global i32 0, align 4
@sysmouse_level = common dso_local global i32 0, align 4
@MOUSE_SYS_PACKETSIZE = common dso_local global i32 0, align 4
@MOUSE_MSC_PACKETSIZE = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@sysmouse_sleep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @sysmouse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysmouse_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.uio*, %struct.uio** %5, align 8
  %11 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = call i32 @mtx_lock(i32* @sysmouse_lock)
  %14 = load i32, i32* @sysmouse_level, align 4
  %15 = icmp sge i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @MOUSE_MSC_PACKETSIZE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %59, %34, %20
  %23 = load %struct.uio*, %struct.uio** %5, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  %29 = load %struct.uio*, %struct.uio** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @sysmouse_buf_read(%struct.uio* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %22

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @EWOULDBLOCK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %60

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.uio*, %struct.uio** %5, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @O_NONBLOCK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %40
  br label %60

52:                                               ; preds = %46
  %53 = call i32 @cv_wait_sig(i32* @sysmouse_sleep, i32* @sysmouse_lock)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %60

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  br label %22

60:                                               ; preds = %56, %51, %39, %22
  %61 = call i32 @mtx_unlock(i32* @sysmouse_lock)
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sysmouse_buf_read(%struct.uio*, i32) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
