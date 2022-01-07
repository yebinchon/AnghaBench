; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_discard_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_discard_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { %struct.bfe_desc*, %struct.bfe_rx_data* }
%struct.bfe_desc = type { i32 }
%struct.bfe_rx_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*, i32)* @bfe_discard_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_discard_buf(%struct.bfe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfe_rx_data*, align 8
  %6 = alloca %struct.bfe_desc*, align 8
  store %struct.bfe_softc* %0, %struct.bfe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %7, i32 0, i32 1
  %9 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %9, i64 %11
  store %struct.bfe_rx_data* %12, %struct.bfe_rx_data** %5, align 8
  %13 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %13, i32 0, i32 0
  %15 = load %struct.bfe_desc*, %struct.bfe_desc** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bfe_desc, %struct.bfe_desc* %15, i64 %17
  store %struct.bfe_desc* %18, %struct.bfe_desc** %6, align 8
  %19 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %5, align 8
  %20 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @htole32(i32 %21)
  %23 = load %struct.bfe_desc*, %struct.bfe_desc** %6, align 8
  %24 = getelementptr inbounds %struct.bfe_desc, %struct.bfe_desc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
