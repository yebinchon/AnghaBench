; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_realtimer_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_realtimer_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimer = type { %struct.itimerspec, i32, i32 }
%struct.itimerspec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.timespec = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.itimer*, %struct.itimerspec*)* @realtimer_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realtimer_gettime(%struct.itimer* %0, %struct.itimerspec* %1) #0 {
  %3 = alloca %struct.itimer*, align 8
  %4 = alloca %struct.itimerspec*, align 8
  %5 = alloca %struct.timespec, align 4
  store %struct.itimer* %0, %struct.itimer** %3, align 8
  store %struct.itimerspec* %1, %struct.itimerspec** %4, align 8
  %6 = load %struct.itimer*, %struct.itimer** %3, align 8
  %7 = getelementptr inbounds %struct.itimer, %struct.itimer* %6, i32 0, i32 2
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.itimer*, %struct.itimer** %3, align 8
  %11 = getelementptr inbounds %struct.itimer, %struct.itimer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @realtimer_clocktime(i32 %12, %struct.timespec* %5)
  %14 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %15 = load %struct.itimer*, %struct.itimer** %3, align 8
  %16 = getelementptr inbounds %struct.itimer, %struct.itimer* %15, i32 0, i32 0
  %17 = bitcast %struct.itimerspec* %14 to i8*
  %18 = bitcast %struct.itimerspec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %20 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %26 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %24, %2
  %31 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %32 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %31, i32 0, i32 0
  %33 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %34 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %33, i32 0, i32 0
  %35 = call i32 @timespecsub(%struct.TYPE_3__* %32, %struct.timespec* %5, %struct.TYPE_3__* %34)
  %36 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %37 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %30
  %42 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %43 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %49 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47, %30
  %54 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %55 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %58 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %53, %47, %41
  br label %61

61:                                               ; preds = %60, %24
  ret i32 0
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @realtimer_clocktime(i32, %struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespecsub(%struct.TYPE_3__*, %struct.timespec*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
