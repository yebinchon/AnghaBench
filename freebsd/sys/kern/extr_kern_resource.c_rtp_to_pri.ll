; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_rtp_to_pri.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_rtp_to_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtprio = type { i64, i32 }
%struct.thread = type { i64, i64 }

@RTP_PRIO_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PRI_MIN_REALTIME = common dso_local global i64 0, align 8
@PRI_MAX_TIMESHARE = common dso_local global i64 0, align 8
@PRI_MIN_TIMESHARE = common dso_local global i64 0, align 8
@PRI_MIN_IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtp_to_pri(%struct.rtprio* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtprio*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rtprio* %0, %struct.rtprio** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %9 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %10 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @RTP_PRIO_BASE(i32 %11)
  switch i32 %12, label %57 [
    i32 128, label %13
    i32 129, label %27
    i32 130, label %43
  ]

13:                                               ; preds = %2
  %14 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %15 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RTP_PRIO_MAX, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %115

21:                                               ; preds = %13
  %22 = load i64, i64* @PRI_MIN_REALTIME, align 8
  %23 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %24 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %6, align 8
  br label %59

27:                                               ; preds = %2
  %28 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %29 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PRI_MAX_TIMESHARE, align 8
  %32 = load i64, i64* @PRI_MIN_TIMESHARE, align 8
  %33 = sub nsw i64 %31, %32
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %115

37:                                               ; preds = %27
  %38 = load i64, i64* @PRI_MIN_TIMESHARE, align 8
  %39 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %40 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  store i64 %42, i64* %6, align 8
  br label %59

43:                                               ; preds = %2
  %44 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %45 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RTP_PRIO_MAX, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %115

51:                                               ; preds = %43
  %52 = load i64, i64* @PRI_MIN_IDLE, align 8
  %53 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %54 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  store i64 %56, i64* %6, align 8
  br label %59

57:                                               ; preds = %2
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %3, align 4
  br label %115

59:                                               ; preds = %51, %37, %21
  %60 = load %struct.thread*, %struct.thread** %5, align 8
  %61 = call i32 @thread_lock(%struct.thread* %60)
  %62 = load %struct.thread*, %struct.thread** %5, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  %65 = load %struct.thread*, %struct.thread** %5, align 8
  %66 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %67 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sched_class(%struct.thread* %65, i32 %68)
  %70 = load %struct.thread*, %struct.thread** %5, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  %73 = load %struct.thread*, %struct.thread** %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @sched_user_prio(%struct.thread* %73, i64 %74)
  %76 = load %struct.thread*, %struct.thread** %5, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %59
  %82 = load i64, i64* %7, align 8
  %83 = icmp ne i64 %82, 129
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load %struct.thread*, %struct.thread** %5, align 8
  %86 = getelementptr inbounds %struct.thread, %struct.thread* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 129
  br i1 %88, label %89, label %95

89:                                               ; preds = %84, %81
  %90 = load %struct.thread*, %struct.thread** %5, align 8
  %91 = load %struct.thread*, %struct.thread** %5, align 8
  %92 = getelementptr inbounds %struct.thread, %struct.thread* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @sched_prio(%struct.thread* %90, i64 %93)
  br label %95

95:                                               ; preds = %89, %84, %59
  %96 = load %struct.thread*, %struct.thread** %5, align 8
  %97 = call i64 @TD_ON_UPILOCK(%struct.thread* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = call i32 (...) @critical_enter()
  %105 = load %struct.thread*, %struct.thread** %5, align 8
  %106 = call i32 @thread_unlock(%struct.thread* %105)
  %107 = load %struct.thread*, %struct.thread** %5, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @umtx_pi_adjust(%struct.thread* %107, i64 %108)
  %110 = call i32 (...) @critical_exit()
  br label %114

111:                                              ; preds = %99, %95
  %112 = load %struct.thread*, %struct.thread** %5, align 8
  %113 = call i32 @thread_unlock(%struct.thread* %112)
  br label %114

114:                                              ; preds = %111, %103
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %57, %49, %35, %19
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @RTP_PRIO_BASE(i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_class(%struct.thread*, i32) #1

declare dso_local i32 @sched_user_prio(%struct.thread*, i64) #1

declare dso_local i32 @sched_prio(%struct.thread*, i64) #1

declare dso_local i64 @TD_ON_UPILOCK(%struct.thread*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @umtx_pi_adjust(%struct.thread*, i64) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
