; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c__iwm_mvm_enable_beacon_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c__iwm_mvm_enable_beacon_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iwm_vap = type { i32 }
%struct.iwm_beacon_filter_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_vap*, %struct.iwm_beacon_filter_cmd*)* @_iwm_mvm_enable_beacon_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_iwm_mvm_enable_beacon_filter(%struct.iwm_softc* %0, %struct.iwm_vap* %1, %struct.iwm_beacon_filter_cmd* %2) #0 {
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_vap*, align 8
  %6 = alloca %struct.iwm_beacon_filter_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_vap* %1, %struct.iwm_vap** %5, align 8
  store %struct.iwm_beacon_filter_cmd* %2, %struct.iwm_beacon_filter_cmd** %6, align 8
  %8 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %9 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %10 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %6, align 8
  %11 = call i32 @iwm_mvm_beacon_filter_set_cqm_params(%struct.iwm_softc* %8, %struct.iwm_vap* %9, %struct.iwm_beacon_filter_cmd* %10)
  %12 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %13 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %6, align 8
  %14 = call i32 @iwm_mvm_beacon_filter_send_cmd(%struct.iwm_softc* %12, %struct.iwm_beacon_filter_cmd* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %19 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local i32 @iwm_mvm_beacon_filter_set_cqm_params(%struct.iwm_softc*, %struct.iwm_vap*, %struct.iwm_beacon_filter_cmd*) #1

declare dso_local i32 @iwm_mvm_beacon_filter_send_cmd(%struct.iwm_softc*, %struct.iwm_beacon_filter_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
