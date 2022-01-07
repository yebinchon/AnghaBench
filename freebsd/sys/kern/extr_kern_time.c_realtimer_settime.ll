; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_realtimer_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_realtimer_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimer = type { i32, %struct.itimerspec, i32, i32 }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i32 }
%struct.timeval = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIMER_ABSTIME = common dso_local global i32 0, align 4
@realtimer_expire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.itimer*, i32, %struct.itimerspec*, %struct.itimerspec*)* @realtimer_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realtimer_settime(%struct.itimer* %0, i32 %1, %struct.itimerspec* %2, %struct.itimerspec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.itimerspec*, align 8
  %9 = alloca %struct.itimerspec*, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.itimerspec, align 4
  store %struct.itimer* %0, %struct.itimer** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.itimerspec* %2, %struct.itimerspec** %8, align 8
  store %struct.itimerspec* %3, %struct.itimerspec** %9, align 8
  %14 = load %struct.itimer*, %struct.itimer** %6, align 8
  %15 = getelementptr inbounds %struct.itimer, %struct.itimer* %14, i32 0, i32 3
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @mtx_assert(i32* %15, i32 %16)
  %18 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %19 = bitcast %struct.itimerspec* %13 to i8*
  %20 = bitcast %struct.itimerspec* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %13, i32 0, i32 0
  %22 = call i64 @itimespecfix(%struct.timespec* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %5, align 4
  br label %90

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %13, i32 0, i32 0
  %28 = call i64 @timespecisset(%struct.timespec* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %13, i32 0, i32 1
  %32 = call i64 @itimespecfix(%struct.timespec* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %90

36:                                               ; preds = %30
  br label %40

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %13, i32 0, i32 1
  %39 = call i32 @timespecclear(%struct.timespec* %38)
  br label %40

40:                                               ; preds = %37, %36
  %41 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %42 = icmp ne %struct.itimerspec* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.itimer*, %struct.itimer** %6, align 8
  %45 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %46 = call i32 @realtimer_gettime(%struct.itimer* %44, %struct.itimerspec* %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.itimer*, %struct.itimer** %6, align 8
  %49 = getelementptr inbounds %struct.itimer, %struct.itimer* %48, i32 0, i32 1
  %50 = bitcast %struct.itimerspec* %49 to i8*
  %51 = bitcast %struct.itimerspec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 8, i1 false)
  %52 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %13, i32 0, i32 0
  %53 = call i64 @timespecisset(%struct.timespec* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %47
  %56 = load %struct.itimer*, %struct.itimer** %6, align 8
  %57 = getelementptr inbounds %struct.itimer, %struct.itimer* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @realtimer_clocktime(i32 %58, %struct.timespec* %10)
  %60 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %13, i32 0, i32 0
  %61 = bitcast %struct.timespec* %11 to i8*
  %62 = bitcast %struct.timespec* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TIMER_ABSTIME, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %55
  %68 = load %struct.itimer*, %struct.itimer** %6, align 8
  %69 = getelementptr inbounds %struct.itimer, %struct.itimer* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %69, i32 0, i32 0
  %71 = load %struct.itimer*, %struct.itimer** %6, align 8
  %72 = getelementptr inbounds %struct.itimer, %struct.itimer* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %72, i32 0, i32 0
  %74 = call i32 @timespecadd(%struct.timespec* %70, %struct.timespec* %10, %struct.timespec* %73)
  br label %77

75:                                               ; preds = %55
  %76 = call i32 @timespecsub(%struct.timespec* %11, %struct.timespec* %10, %struct.timespec* %11)
  br label %77

77:                                               ; preds = %75, %67
  %78 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %12, %struct.timespec* %11)
  %79 = load %struct.itimer*, %struct.itimer** %6, align 8
  %80 = getelementptr inbounds %struct.itimer, %struct.itimer* %79, i32 0, i32 0
  %81 = call i32 @tvtohz(%struct.timeval* %12)
  %82 = load i32, i32* @realtimer_expire, align 4
  %83 = load %struct.itimer*, %struct.itimer** %6, align 8
  %84 = call i32 @callout_reset(i32* %80, i32 %81, i32 %82, %struct.itimer* %83)
  br label %89

85:                                               ; preds = %47
  %86 = load %struct.itimer*, %struct.itimer** %6, align 8
  %87 = getelementptr inbounds %struct.itimer, %struct.itimer* %86, i32 0, i32 0
  %88 = call i32 @callout_stop(i32* %87)
  br label %89

89:                                               ; preds = %85, %77
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %34, %24
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @itimespecfix(%struct.timespec*) #1

declare dso_local i64 @timespecisset(%struct.timespec*) #1

declare dso_local i32 @timespecclear(%struct.timespec*) #1

declare dso_local i32 @realtimer_gettime(%struct.itimer*, %struct.itimerspec*) #1

declare dso_local i32 @realtimer_clocktime(i32, %struct.timespec*) #1

declare dso_local i32 @timespecadd(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.itimer*) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
