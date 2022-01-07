; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_del_aux_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_del_aux_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IWM_MVM_STATION_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwm_mvm_del_aux_sta(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %3 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %4 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %3, i32 0, i32 0
  %5 = call i32 @memset(%struct.TYPE_2__* %4, i32 0, i32 4)
  %6 = load i32, i32* @IWM_MVM_STATION_COUNT, align 4
  %7 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %8 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
