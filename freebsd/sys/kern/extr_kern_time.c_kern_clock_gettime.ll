; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32 }

@time_second = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_clock_gettime(%struct.thread* %0, i32 %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %11 = load %struct.thread*, %struct.thread** %5, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %10, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %71 [
    i32 136, label %15
    i32 134, label %15
    i32 135, label %18
    i32 128, label %21
    i32 137, label %34
    i32 141, label %48
    i32 139, label %48
    i32 131, label %48
    i32 129, label %48
    i32 130, label %51
    i32 140, label %51
    i32 133, label %54
    i32 132, label %60
    i32 138, label %63
  ]

15:                                               ; preds = %3, %3
  %16 = load %struct.timespec*, %struct.timespec** %7, align 8
  %17 = call i32 @nanotime(%struct.timespec* %16)
  br label %81

18:                                               ; preds = %3
  %19 = load %struct.timespec*, %struct.timespec** %7, align 8
  %20 = call i32 @getnanotime(%struct.timespec* %19)
  br label %81

21:                                               ; preds = %3
  %22 = load %struct.proc*, %struct.proc** %10, align 8
  %23 = call i32 @PROC_LOCK(%struct.proc* %22)
  %24 = load %struct.proc*, %struct.proc** %10, align 8
  %25 = call i32 @PROC_STATLOCK(%struct.proc* %24)
  %26 = load %struct.proc*, %struct.proc** %10, align 8
  %27 = call i32 @calcru(%struct.proc* %26, %struct.timeval* %9, %struct.timeval* %8)
  %28 = load %struct.proc*, %struct.proc** %10, align 8
  %29 = call i32 @PROC_STATUNLOCK(%struct.proc* %28)
  %30 = load %struct.proc*, %struct.proc** %10, align 8
  %31 = call i32 @PROC_UNLOCK(%struct.proc* %30)
  %32 = load %struct.timespec*, %struct.timespec** %7, align 8
  %33 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %9, %struct.timespec* %32)
  br label %81

34:                                               ; preds = %3
  %35 = load %struct.proc*, %struct.proc** %10, align 8
  %36 = call i32 @PROC_LOCK(%struct.proc* %35)
  %37 = load %struct.proc*, %struct.proc** %10, align 8
  %38 = call i32 @PROC_STATLOCK(%struct.proc* %37)
  %39 = load %struct.proc*, %struct.proc** %10, align 8
  %40 = call i32 @calcru(%struct.proc* %39, %struct.timeval* %9, %struct.timeval* %8)
  %41 = load %struct.proc*, %struct.proc** %10, align 8
  %42 = call i32 @PROC_STATUNLOCK(%struct.proc* %41)
  %43 = load %struct.proc*, %struct.proc** %10, align 8
  %44 = call i32 @PROC_UNLOCK(%struct.proc* %43)
  %45 = call i32 @timevaladd(%struct.timeval* %9, %struct.timeval* %8)
  %46 = load %struct.timespec*, %struct.timespec** %7, align 8
  %47 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %9, %struct.timespec* %46)
  br label %81

48:                                               ; preds = %3, %3, %3, %3
  %49 = load %struct.timespec*, %struct.timespec** %7, align 8
  %50 = call i32 @nanouptime(%struct.timespec* %49)
  br label %81

51:                                               ; preds = %3, %3
  %52 = load %struct.timespec*, %struct.timespec** %7, align 8
  %53 = call i32 @getnanouptime(%struct.timespec* %52)
  br label %81

54:                                               ; preds = %3
  %55 = load i32, i32* @time_second, align 4
  %56 = load %struct.timespec*, %struct.timespec** %7, align 8
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.timespec*, %struct.timespec** %7, align 8
  %59 = getelementptr inbounds %struct.timespec, %struct.timespec* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %81

60:                                               ; preds = %3
  %61 = load %struct.timespec*, %struct.timespec** %7, align 8
  %62 = call i32 @get_thread_cputime(i32* null, %struct.timespec* %61)
  br label %81

63:                                               ; preds = %3
  %64 = load %struct.proc*, %struct.proc** %10, align 8
  %65 = call i32 @PROC_LOCK(%struct.proc* %64)
  %66 = load %struct.proc*, %struct.proc** %10, align 8
  %67 = load %struct.timespec*, %struct.timespec** %7, align 8
  %68 = call i32 @get_process_cputime(%struct.proc* %66, %struct.timespec* %67)
  %69 = load %struct.proc*, %struct.proc** %10, align 8
  %70 = call i32 @PROC_UNLOCK(%struct.proc* %69)
  br label %81

71:                                               ; preds = %3
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %4, align 4
  br label %82

76:                                               ; preds = %71
  %77 = load %struct.thread*, %struct.thread** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.timespec*, %struct.timespec** %7, align 8
  %80 = call i32 @get_cputime(%struct.thread* %77, i32 %78, %struct.timespec* %79)
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %63, %60, %54, %51, %48, %34, %21, %18, %15
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %76, %74
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_STATLOCK(%struct.proc*) #1

declare dso_local i32 @calcru(%struct.proc*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @PROC_STATUNLOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @timevaladd(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local i32 @getnanouptime(%struct.timespec*) #1

declare dso_local i32 @get_thread_cputime(i32*, %struct.timespec*) #1

declare dso_local i32 @get_process_cputime(%struct.proc*, %struct.timespec*) #1

declare dso_local i32 @get_cputime(%struct.thread*, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
