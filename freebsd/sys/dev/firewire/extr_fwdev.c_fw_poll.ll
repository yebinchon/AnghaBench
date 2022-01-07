; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.fw_xferq = type { i32, i32 }
%struct.fw_drv1 = type { %struct.fw_xferq* }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_poll(%struct.cdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fw_xferq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = call i64 @DEV_FWMEM(%struct.cdev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.cdev*, %struct.cdev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @fwmem_poll(%struct.cdev* %15, i32 %16, i32* %17)
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load %struct.cdev*, %struct.cdev** %5, align 8
  %21 = getelementptr inbounds %struct.cdev, %struct.cdev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.fw_drv1*
  %24 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %23, i32 0, i32 0
  %25 = load %struct.fw_xferq*, %struct.fw_xferq** %24, align 8
  store %struct.fw_xferq* %25, %struct.fw_xferq** %8, align 8
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* @POLLIN, align 4
  %27 = load i32, i32* @POLLRDNORM, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %19
  %34 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %35 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %34, i32 0, i32 1
  %36 = call i32* @STAILQ_FIRST(i32* %35)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %45 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %44, i32 0, i32 0
  %46 = call i32 @selrecord(i32* %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* @POLLOUT, align 4
  %50 = load i32, i32* @POLLWRNORM, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @DEV_FWMEM(%struct.cdev*) #1

declare dso_local i32 @fwmem_poll(%struct.cdev*, i32, i32*) #1

declare dso_local i32* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @selrecord(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
