; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_deregister_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_deregister_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.mpr_event_handle = type { i32 }

@eh_list = common dso_local global i32 0, align 4
@M_MPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpr_deregister_events(%struct.mpr_softc* %0, %struct.mpr_event_handle* %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct.mpr_event_handle*, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store %struct.mpr_event_handle* %1, %struct.mpr_event_handle** %4, align 8
  %5 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %6 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %5, i32 0, i32 0
  %7 = load %struct.mpr_event_handle*, %struct.mpr_event_handle** %4, align 8
  %8 = load i32, i32* @eh_list, align 4
  %9 = call i32 @TAILQ_REMOVE(i32* %6, %struct.mpr_event_handle* %7, i32 %8)
  %10 = load %struct.mpr_event_handle*, %struct.mpr_event_handle** %4, align 8
  %11 = load i32, i32* @M_MPR, align 4
  %12 = call i32 @free(%struct.mpr_event_handle* %10, i32 %11)
  %13 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %14 = call i32 @mpr_update_events(%struct.mpr_softc* %13, i32* null, i32* null)
  ret i32 %14
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mpr_event_handle*, i32) #1

declare dso_local i32 @free(%struct.mpr_event_handle*, i32) #1

declare dso_local i32 @mpr_update_events(%struct.mpr_softc*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
