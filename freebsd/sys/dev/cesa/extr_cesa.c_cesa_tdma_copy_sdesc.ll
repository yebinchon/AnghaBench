; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_tdma_copy_sdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_tdma_copy_sdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_tdma_desc = type { i32 }
%struct.cesa_softc = type { i32 }
%struct.cesa_sa_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cesa_tdma_desc* (%struct.cesa_softc*, %struct.cesa_sa_desc*)* @cesa_tdma_copy_sdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cesa_tdma_desc* @cesa_tdma_copy_sdesc(%struct.cesa_softc* %0, %struct.cesa_sa_desc* %1) #0 {
  %3 = alloca %struct.cesa_softc*, align 8
  %4 = alloca %struct.cesa_sa_desc*, align 8
  store %struct.cesa_softc* %0, %struct.cesa_softc** %3, align 8
  store %struct.cesa_sa_desc* %1, %struct.cesa_sa_desc** %4, align 8
  %5 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %6 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %7 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %4, align 8
  %10 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cesa_tdma_desc* @cesa_tdma_copy(%struct.cesa_softc* %5, i32 %8, i32 %11, i32 4)
  ret %struct.cesa_tdma_desc* %12
}

declare dso_local %struct.cesa_tdma_desc* @cesa_tdma_copy(%struct.cesa_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
