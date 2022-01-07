; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c_mpr_mapping_free_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c_mpr_mapping_free_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i32, i32, i32, i32, i32 }

@M_MPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpr_mapping_free_memory(%struct.mpr_softc* %0) #0 {
  %2 = alloca %struct.mpr_softc*, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %2, align 8
  %3 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @M_MPR, align 4
  %7 = call i32 @free(i32 %5, i32 %6)
  %8 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @M_MPR, align 4
  %12 = call i32 @free(i32 %10, i32 %11)
  %13 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @M_MPR, align 4
  %17 = call i32 @free(i32 %15, i32 %16)
  %18 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @M_MPR, align 4
  %22 = call i32 @free(i32 %20, i32 %21)
  %23 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @M_MPR, align 4
  %27 = call i32 @free(i32 %25, i32 %26)
  %28 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %29 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @M_MPR, align 4
  %32 = call i32 @free(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
