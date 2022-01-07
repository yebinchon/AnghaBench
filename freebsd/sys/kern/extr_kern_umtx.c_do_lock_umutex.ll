; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_lock_umutex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_lock_umutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.umutex = type { i32 }
%struct._umtx_time = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@_UMUTEX_WAIT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.umutex*, %struct._umtx_time*, i32)* @do_lock_umutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lock_umutex(%struct.thread* %0, %struct.umutex* %1, %struct._umtx_time* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.umutex*, align 8
  %8 = alloca %struct._umtx_time*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.umutex* %1, %struct.umutex** %7, align 8
  store %struct._umtx_time* %2, %struct._umtx_time** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.umutex*, %struct.umutex** %7, align 8
  %13 = getelementptr inbounds %struct.umutex, %struct.umutex* %12, i32 0, i32 0
  %14 = call i32 @fueword32(i32* %13, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @EFAULT, align 4
  store i32 %18, i32* %5, align 4
  br label %68

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 129
  switch i32 %21, label %43 [
    i32 0, label %22
    i32 129, label %29
    i32 128, label %36
  ]

22:                                               ; preds = %19
  %23 = load %struct.thread*, %struct.thread** %6, align 8
  %24 = load %struct.umutex*, %struct.umutex** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct._umtx_time*, %struct._umtx_time** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @do_lock_normal(%struct.thread* %23, %struct.umutex* %24, i32 %25, %struct._umtx_time* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  br label %45

29:                                               ; preds = %19
  %30 = load %struct.thread*, %struct.thread** %6, align 8
  %31 = load %struct.umutex*, %struct.umutex** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct._umtx_time*, %struct._umtx_time** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @do_lock_pi(%struct.thread* %30, %struct.umutex* %31, i32 %32, %struct._umtx_time* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %45

36:                                               ; preds = %19
  %37 = load %struct.thread*, %struct.thread** %6, align 8
  %38 = load %struct.umutex*, %struct.umutex** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct._umtx_time*, %struct._umtx_time** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @do_lock_pp(%struct.thread* %37, %struct.umutex* %38, i32 %39, %struct._umtx_time* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  br label %45

43:                                               ; preds = %19
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %5, align 4
  br label %68

45:                                               ; preds = %36, %29, %22
  %46 = load %struct._umtx_time*, %struct._umtx_time** %8, align 8
  %47 = icmp eq %struct._umtx_time* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @EINTR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @_UMUTEX_WAIT, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @ERESTART, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %52, %48
  br label %66

59:                                               ; preds = %45
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @ERESTART, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @EINTR, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %43, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @do_lock_normal(%struct.thread*, %struct.umutex*, i32, %struct._umtx_time*, i32) #1

declare dso_local i32 @do_lock_pi(%struct.thread*, %struct.umutex*, i32, %struct._umtx_time*, i32) #1

declare dso_local i32 @do_lock_pp(%struct.thread*, %struct.umutex*, i32, %struct._umtx_time*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
