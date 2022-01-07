; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_evq_stat_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_evq_stat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i64, i32, i32, i64 }

@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@ticks = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_evq*)* @sfxge_evq_stat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_evq_stat_update(%struct.sfxge_evq* %0) #0 {
  %2 = alloca %struct.sfxge_evq*, align 8
  %3 = alloca i64, align 8
  store %struct.sfxge_evq* %0, %struct.sfxge_evq** %2, align 8
  %4 = load %struct.sfxge_evq*, %struct.sfxge_evq** %2, align 8
  %5 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %4)
  %6 = load %struct.sfxge_evq*, %struct.sfxge_evq** %2, align 8
  %7 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @__predict_false(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  %16 = load i64, i64* @ticks, align 8
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.sfxge_evq*, %struct.sfxge_evq** %2, align 8
  %19 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* @hz, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %38

27:                                               ; preds = %15
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.sfxge_evq*, %struct.sfxge_evq** %2, align 8
  %30 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load %struct.sfxge_evq*, %struct.sfxge_evq** %2, align 8
  %32 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sfxge_evq*, %struct.sfxge_evq** %2, align 8
  %35 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @efx_ev_qstats_update(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %27, %26, %14
  %39 = load %struct.sfxge_evq*, %struct.sfxge_evq** %2, align 8
  %40 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %39)
  ret void
}

declare dso_local i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @efx_ev_qstats_update(i32, i32) #1

declare dso_local i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
