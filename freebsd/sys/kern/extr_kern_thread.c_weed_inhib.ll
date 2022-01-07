; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_weed_inhib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_weed_inhib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TDF_SINTR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TDF_BOUNDARY = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@TDF_ALLPROCSUSP = common dso_local global i32 0, align 4
@TDF_SBDRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.thread*, %struct.proc*)* @weed_inhib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @weed_inhib(i32 %0, %struct.thread* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.thread* %1, %struct.thread** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  %8 = load %struct.proc*, %struct.proc** %6, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %8, i32 %9)
  %11 = load %struct.proc*, %struct.proc** %6, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @PROC_SLOCK_ASSERT(%struct.proc* %11, i32 %12)
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %14, i32 %15)
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %134 [
    i32 129, label %18
    i32 130, label %46
    i32 128, label %46
    i32 131, label %81
  ]

18:                                               ; preds = %3
  %19 = load %struct.thread*, %struct.thread** %5, align 8
  %20 = call i32 @TD_IS_SUSPENDED(%struct.thread* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.thread*, %struct.thread** %5, align 8
  %24 = load %struct.proc*, %struct.proc** %6, align 8
  %25 = call i32 @thread_unsuspend_one(%struct.thread* %23, %struct.proc* %24, i32 1)
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = call i32 @TD_ON_SLEEPQ(%struct.thread* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.thread*, %struct.thread** %5, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TDF_SINTR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.thread*, %struct.thread** %5, align 8
  %41 = load i32, i32* @EINTR, align 4
  %42 = call i32 @sleepq_abort(%struct.thread* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %39, %32, %28
  br label %134

46:                                               ; preds = %3, %3
  %47 = load %struct.thread*, %struct.thread** %5, align 8
  %48 = call i32 @TD_IS_SUSPENDED(%struct.thread* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.thread*, %struct.thread** %5, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TDF_BOUNDARY, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.thread*, %struct.thread** %5, align 8
  %59 = load %struct.proc*, %struct.proc** %6, align 8
  %60 = call i32 @thread_unsuspend_one(%struct.thread* %58, %struct.proc* %59, i32 0)
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %57, %50, %46
  %64 = load %struct.thread*, %struct.thread** %5, align 8
  %65 = call i32 @TD_ON_SLEEPQ(%struct.thread* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.thread*, %struct.thread** %5, align 8
  %69 = getelementptr inbounds %struct.thread, %struct.thread* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TDF_SINTR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.thread*, %struct.thread** %5, align 8
  %76 = load i32, i32* @ERESTART, align 4
  %77 = call i32 @sleepq_abort(%struct.thread* %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %74, %67, %63
  br label %134

81:                                               ; preds = %3
  %82 = load %struct.thread*, %struct.thread** %5, align 8
  %83 = call i32 @TD_IS_SUSPENDED(%struct.thread* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.thread*, %struct.thread** %5, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TDF_BOUNDARY, align 4
  %90 = load i32, i32* @TDF_ALLPROCSUSP, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.thread*, %struct.thread** %5, align 8
  %96 = load %struct.proc*, %struct.proc** %6, align 8
  %97 = call i32 @thread_unsuspend_one(%struct.thread* %95, %struct.proc* %96, i32 0)
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %94, %85, %81
  %101 = load %struct.thread*, %struct.thread** %5, align 8
  %102 = call i32 @TD_ON_SLEEPQ(%struct.thread* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %100
  %105 = load %struct.thread*, %struct.thread** %5, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @TDF_SINTR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %104
  %112 = load %struct.thread*, %struct.thread** %5, align 8
  %113 = getelementptr inbounds %struct.thread, %struct.thread* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @TDF_SBDRY, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load %struct.thread*, %struct.thread** %5, align 8
  %120 = call i32 @thread_suspend_one(%struct.thread* %119)
  %121 = load i32, i32* @TDF_ALLPROCSUSP, align 4
  %122 = load %struct.thread*, %struct.thread** %5, align 8
  %123 = getelementptr inbounds %struct.thread, %struct.thread* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %132

126:                                              ; preds = %111
  %127 = load %struct.thread*, %struct.thread** %5, align 8
  %128 = load i32, i32* @ERESTART, align 4
  %129 = call i32 @sleepq_abort(%struct.thread* %127, i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %126, %118
  br label %133

133:                                              ; preds = %132, %104, %100
  br label %134

134:                                              ; preds = %3, %133, %80, %45
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_SLOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @TD_IS_SUSPENDED(%struct.thread*) #1

declare dso_local i32 @thread_unsuspend_one(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @TD_ON_SLEEPQ(%struct.thread*) #1

declare dso_local i32 @sleepq_abort(%struct.thread*, i32) #1

declare dso_local i32 @thread_suspend_one(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
