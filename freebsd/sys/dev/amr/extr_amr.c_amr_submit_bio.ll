; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_submit_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_submit_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32 }
%struct.bio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amr_submit_bio(%struct.amr_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.amr_softc* %0, %struct.amr_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = call i32 @debug_called(i32 2)
  %6 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %7 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = call i32 @amr_enqueue_bio(%struct.amr_softc* %9, %struct.bio* %10)
  %12 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %13 = call i32 @amr_startio(%struct.amr_softc* %12)
  %14 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %15 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_unlock(i32* %15)
  ret i32 0
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @amr_enqueue_bio(%struct.amr_softc*, %struct.bio*) #1

declare dso_local i32 @amr_startio(%struct.amr_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
