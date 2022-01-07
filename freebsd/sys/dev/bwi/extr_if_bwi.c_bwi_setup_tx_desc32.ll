; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_setup_tx_desc32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_setup_tx_desc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }
%struct.bwi_ring_data = type { i32 }

@BWI_TX_NDESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"buf_idx %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, %struct.bwi_ring_data*, i32, i32, i32)* @bwi_setup_tx_desc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_setup_tx_desc32(%struct.bwi_softc* %0, %struct.bwi_ring_data* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bwi_softc*, align 8
  %7 = alloca %struct.bwi_ring_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %6, align 8
  store %struct.bwi_ring_data* %1, %struct.bwi_ring_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @BWI_TX_NDESC, align 4
  %13 = icmp slt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %14, i8* %17)
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %20 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %7, align 8
  %21 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BWI_TX_NDESC, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @bwi_setup_desc32(%struct.bwi_softc* %19, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 1)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_setup_desc32(%struct.bwi_softc*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
