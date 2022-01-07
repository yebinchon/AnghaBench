; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas_lsi.c_mpssas_fw_event_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas_lsi.c_mpssas_fw_event_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }
%struct.mps_fw_event_work = type { %struct.mps_fw_event_work* }

@M_MPT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*, %struct.mps_fw_event_work*)* @mpssas_fw_event_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpssas_fw_event_free(%struct.mps_softc* %0, %struct.mps_fw_event_work* %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.mps_fw_event_work*, align 8
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store %struct.mps_fw_event_work* %1, %struct.mps_fw_event_work** %4, align 8
  %5 = load %struct.mps_fw_event_work*, %struct.mps_fw_event_work** %4, align 8
  %6 = getelementptr inbounds %struct.mps_fw_event_work, %struct.mps_fw_event_work* %5, i32 0, i32 0
  %7 = load %struct.mps_fw_event_work*, %struct.mps_fw_event_work** %6, align 8
  %8 = load i32, i32* @M_MPT2, align 4
  %9 = call i32 @free(%struct.mps_fw_event_work* %7, i32 %8)
  %10 = load %struct.mps_fw_event_work*, %struct.mps_fw_event_work** %4, align 8
  %11 = load i32, i32* @M_MPT2, align 4
  %12 = call i32 @free(%struct.mps_fw_event_work* %10, i32 %11)
  ret void
}

declare dso_local i32 @free(%struct.mps_fw_event_work*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
