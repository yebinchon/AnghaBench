; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_timertouch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_timertouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i32, %struct.kevent, i32, i32, %struct.kqueue*, %struct.TYPE_2__ }
%struct.kevent = type { i32, i32, i32 }
%struct.kqueue = type { i32 }
%struct.TYPE_2__ = type { %struct.kq_timer_cb_data* }
%struct.kq_timer_cb_data = type { i32 }

@EV_ADD = common dso_local global i32 0, align 4
@KN_QUEUED = common dso_local global i32 0, align 4
@KN_ACTIVE = common dso_local global i32 0, align 4
@EV_ERROR = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"filt_timertouch() - invalid type (%ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*, %struct.kevent*, i32)* @filt_timertouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_timertouch(%struct.knote* %0, %struct.kevent* %1, i32 %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.kevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kq_timer_cb_data*, align 8
  %8 = alloca %struct.kqueue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.kevent* %1, %struct.kevent** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %99 [
    i32 128, label %12
    i32 129, label %81
  ]

12:                                               ; preds = %3
  %13 = load %struct.kevent*, %struct.kevent** %5, align 8
  %14 = getelementptr inbounds %struct.kevent, %struct.kevent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EV_ADD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %12
  %20 = load %struct.knote*, %struct.knote** %4, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.kq_timer_cb_data*, %struct.kq_timer_cb_data** %22, align 8
  store %struct.kq_timer_cb_data* %23, %struct.kq_timer_cb_data** %7, align 8
  %24 = load %struct.kq_timer_cb_data*, %struct.kq_timer_cb_data** %7, align 8
  %25 = getelementptr inbounds %struct.kq_timer_cb_data, %struct.kq_timer_cb_data* %24, i32 0, i32 0
  %26 = call i32 @callout_drain(i32* %25)
  %27 = load %struct.knote*, %struct.knote** %4, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 7
  %29 = load %struct.kqueue*, %struct.kqueue** %28, align 8
  store %struct.kqueue* %29, %struct.kqueue** %8, align 8
  %30 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  %31 = call i32 @KQ_LOCK(%struct.kqueue* %30)
  %32 = load %struct.knote*, %struct.knote** %4, align 8
  %33 = getelementptr inbounds %struct.knote, %struct.knote* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @KN_QUEUED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %19
  %39 = load %struct.knote*, %struct.knote** %4, align 8
  %40 = call i32 @knote_dequeue(%struct.knote* %39)
  br label %41

41:                                               ; preds = %38, %19
  %42 = load i32, i32* @KN_ACTIVE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.knote*, %struct.knote** %4, align 8
  %45 = getelementptr inbounds %struct.knote, %struct.knote* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.knote*, %struct.knote** %4, align 8
  %49 = getelementptr inbounds %struct.knote, %struct.knote* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  %51 = call i32 @KQ_UNLOCK(%struct.kqueue* %50)
  %52 = load %struct.kevent*, %struct.kevent** %5, align 8
  %53 = getelementptr inbounds %struct.kevent, %struct.kevent* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.knote*, %struct.knote** %4, align 8
  %56 = getelementptr inbounds %struct.knote, %struct.knote* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load %struct.kevent*, %struct.kevent** %5, align 8
  %58 = getelementptr inbounds %struct.kevent, %struct.kevent* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.knote*, %struct.knote** %4, align 8
  %61 = getelementptr inbounds %struct.knote, %struct.knote* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.knote*, %struct.knote** %4, align 8
  %63 = call i32 @filt_timervalidate(%struct.knote* %62, i32* %9)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %41
  %67 = load i32, i32* @EV_ERROR, align 4
  %68 = load %struct.knote*, %struct.knote** %4, align 8
  %69 = getelementptr inbounds %struct.knote, %struct.knote* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.knote*, %struct.knote** %4, align 8
  %74 = getelementptr inbounds %struct.knote, %struct.knote* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %41
  %76 = load %struct.knote*, %struct.knote** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @filt_timerstart(%struct.knote* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %66
  br label %80

80:                                               ; preds = %79, %12
  br label %102

81:                                               ; preds = %3
  %82 = load %struct.kevent*, %struct.kevent** %5, align 8
  %83 = load %struct.knote*, %struct.knote** %4, align 8
  %84 = getelementptr inbounds %struct.knote, %struct.knote* %83, i32 0, i32 4
  %85 = bitcast %struct.kevent* %82 to i8*
  %86 = bitcast %struct.kevent* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 8 %86, i64 12, i1 false)
  %87 = load %struct.knote*, %struct.knote** %4, align 8
  %88 = getelementptr inbounds %struct.knote, %struct.knote* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @EV_CLEAR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %81
  %94 = load %struct.knote*, %struct.knote** %4, align 8
  %95 = getelementptr inbounds %struct.knote, %struct.knote* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.knote*, %struct.knote** %4, align 8
  %97 = getelementptr inbounds %struct.knote, %struct.knote* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %81
  br label %102

99:                                               ; preds = %3
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %98, %80
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @KQ_LOCK(%struct.kqueue*) #1

declare dso_local i32 @knote_dequeue(%struct.knote*) #1

declare dso_local i32 @KQ_UNLOCK(%struct.kqueue*) #1

declare dso_local i32 @filt_timervalidate(%struct.knote*, i32*) #1

declare dso_local i32 @filt_timerstart(%struct.knote*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
