; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_sys_rtprio_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_sys_rtprio_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i64, %struct.proc* }
%struct.proc = type { i32 }
%struct.rtprio_thread_args = type { i32, i64, i32 }
%struct.rtprio = type { i32 }

@curproc = common dso_local global %struct.TYPE_2__* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@RTP_PRIO_REALTIME = common dso_local global i32 0, align 4
@RTP_PRIO_IDLE = common dso_local global i32 0, align 4
@unprivileged_idprio = common dso_local global i32 0, align 4
@PRIV_SCHED_RTPRIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_rtprio_thread(%struct.thread* %0, %struct.rtprio_thread_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.rtprio_thread_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.rtprio, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.rtprio_thread_args* %1, %struct.rtprio_thread_args** %5, align 8
  %11 = load %struct.rtprio_thread_args*, %struct.rtprio_thread_args** %5, align 8
  %12 = getelementptr inbounds %struct.rtprio_thread_args, %struct.rtprio_thread_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.rtprio_thread_args*, %struct.rtprio_thread_args** %5, align 8
  %17 = getelementptr inbounds %struct.rtprio_thread_args, %struct.rtprio_thread_args* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @copyin(i32 %18, %struct.rtprio* %7, i32 4)
  store i32 %19, i32* %9, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load %struct.rtprio_thread_args*, %struct.rtprio_thread_args** %5, align 8
  %23 = getelementptr inbounds %struct.rtprio_thread_args, %struct.rtprio_thread_args* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.rtprio_thread_args*, %struct.rtprio_thread_args** %5, align 8
  %28 = getelementptr inbounds %struct.rtprio_thread_args, %struct.rtprio_thread_args* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26, %21
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 1
  %37 = load %struct.proc*, %struct.proc** %36, align 8
  store %struct.proc* %37, %struct.proc** %6, align 8
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  store %struct.thread* %38, %struct.thread** %8, align 8
  %39 = load %struct.proc*, %struct.proc** %6, align 8
  %40 = call i32 @PROC_LOCK(%struct.proc* %39)
  br label %57

41:                                               ; preds = %26
  %42 = load %struct.rtprio_thread_args*, %struct.rtprio_thread_args** %5, align 8
  %43 = getelementptr inbounds %struct.rtprio_thread_args, %struct.rtprio_thread_args* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curproc, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.thread* @tdfind(i64 %44, i32 %47)
  store %struct.thread* %48, %struct.thread** %8, align 8
  %49 = load %struct.thread*, %struct.thread** %8, align 8
  %50 = icmp eq %struct.thread* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @ESRCH, align 4
  store i32 %52, i32* %3, align 4
  br label %117

53:                                               ; preds = %41
  %54 = load %struct.thread*, %struct.thread** %8, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 1
  %56 = load %struct.proc*, %struct.proc** %55, align 8
  store %struct.proc* %56, %struct.proc** %6, align 8
  br label %57

57:                                               ; preds = %53, %34
  %58 = load %struct.rtprio_thread_args*, %struct.rtprio_thread_args** %5, align 8
  %59 = getelementptr inbounds %struct.rtprio_thread_args, %struct.rtprio_thread_args* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %111 [
    i32 129, label %61
    i32 128, label %76
  ]

61:                                               ; preds = %57
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = load %struct.proc*, %struct.proc** %6, align 8
  %64 = call i32 @p_cansee(%struct.thread* %62, %struct.proc* %63)
  store i32 %64, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %113

67:                                               ; preds = %61
  %68 = load %struct.thread*, %struct.thread** %8, align 8
  %69 = call i32 @pri_to_rtp(%struct.thread* %68, %struct.rtprio* %7)
  %70 = load %struct.proc*, %struct.proc** %6, align 8
  %71 = call i32 @PROC_UNLOCK(%struct.proc* %70)
  %72 = load %struct.rtprio_thread_args*, %struct.rtprio_thread_args** %5, align 8
  %73 = getelementptr inbounds %struct.rtprio_thread_args, %struct.rtprio_thread_args* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @copyout(%struct.rtprio* %7, i32 %74, i32 4)
  store i32 %75, i32* %3, align 4
  br label %117

76:                                               ; preds = %57
  %77 = load %struct.thread*, %struct.thread** %4, align 8
  %78 = load %struct.proc*, %struct.proc** %6, align 8
  %79 = call i32 @p_cansched(%struct.thread* %77, %struct.proc* %78)
  store i32 %79, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %76
  br label %113

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @RTP_PRIO_BASE(i32 %87)
  %89 = load i32, i32* @RTP_PRIO_REALTIME, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @RTP_PRIO_BASE(i32 %93)
  %95 = load i32, i32* @RTP_PRIO_IDLE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load i32, i32* @unprivileged_idprio, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97, %85
  %101 = load %struct.thread*, %struct.thread** %4, align 8
  %102 = load i32, i32* @PRIV_SCHED_RTPRIO, align 4
  %103 = call i32 @priv_check(%struct.thread* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %113

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %97, %91
  %109 = load %struct.thread*, %struct.thread** %8, align 8
  %110 = call i32 @rtp_to_pri(%struct.rtprio* %7, %struct.thread* %109)
  store i32 %110, i32* %10, align 4
  br label %113

111:                                              ; preds = %57
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %111, %108, %106, %84, %66
  %114 = load %struct.proc*, %struct.proc** %6, align 8
  %115 = call i32 @PROC_UNLOCK(%struct.proc* %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %67, %51
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @copyin(i32, %struct.rtprio*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.thread* @tdfind(i64, i32) #1

declare dso_local i32 @p_cansee(%struct.thread*, %struct.proc*) #1

declare dso_local i32 @pri_to_rtp(%struct.thread*, %struct.rtprio*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @copyout(%struct.rtprio*, i32, i32) #1

declare dso_local i32 @p_cansched(%struct.thread*, %struct.proc*) #1

declare dso_local i32 @RTP_PRIO_BASE(i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @rtp_to_pri(%struct.rtprio*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
