; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_discard_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_discard_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfe_desc32*, %struct.nfe_desc64*, %struct.nfe_rx_data* }
%struct.nfe_desc32 = type { i8*, i8* }
%struct.nfe_desc64 = type { i8*, i8*, i8** }
%struct.nfe_rx_data = type { i32, %struct.mbuf* }
%struct.mbuf = type { i32 }

@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_RX_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*, i32)* @nfe_discard_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_discard_rxbuf(%struct.nfe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfe_desc32*, align 8
  %6 = alloca %struct.nfe_desc64*, align 8
  %7 = alloca %struct.nfe_rx_data*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %10 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %12, i64 %14
  store %struct.nfe_rx_data* %15, %struct.nfe_rx_data** %7, align 8
  %16 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %17 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %16, i32 0, i32 1
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  store %struct.mbuf* %18, %struct.mbuf** %8, align 8
  %19 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %20 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %2
  %26 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %27 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.nfe_desc64*, %struct.nfe_desc64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nfe_desc64, %struct.nfe_desc64* %29, i64 %31
  store %struct.nfe_desc64* %32, %struct.nfe_desc64** %6, align 8
  %33 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %34 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @NFE_ADDR_HI(i32 %35)
  %37 = call i8* @htole32(i32 %36)
  %38 = load %struct.nfe_desc64*, %struct.nfe_desc64** %6, align 8
  %39 = getelementptr inbounds %struct.nfe_desc64, %struct.nfe_desc64* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  store i8* %37, i8** %41, align 8
  %42 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %43 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @NFE_ADDR_LO(i32 %44)
  %46 = call i8* @htole32(i32 %45)
  %47 = load %struct.nfe_desc64*, %struct.nfe_desc64** %6, align 8
  %48 = getelementptr inbounds %struct.nfe_desc64, %struct.nfe_desc64* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* %46, i8** %50, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @htole16(i32 %53)
  %55 = load %struct.nfe_desc64*, %struct.nfe_desc64** %6, align 8
  %56 = getelementptr inbounds %struct.nfe_desc64, %struct.nfe_desc64* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @NFE_RX_READY, align 4
  %58 = call i8* @htole16(i32 %57)
  %59 = load %struct.nfe_desc64*, %struct.nfe_desc64** %6, align 8
  %60 = getelementptr inbounds %struct.nfe_desc64, %struct.nfe_desc64* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %79

61:                                               ; preds = %2
  %62 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %63 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.nfe_desc32*, %struct.nfe_desc32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.nfe_desc32, %struct.nfe_desc32* %65, i64 %67
  store %struct.nfe_desc32* %68, %struct.nfe_desc32** %5, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @htole16(i32 %71)
  %73 = load %struct.nfe_desc32*, %struct.nfe_desc32** %5, align 8
  %74 = getelementptr inbounds %struct.nfe_desc32, %struct.nfe_desc32* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @NFE_RX_READY, align 4
  %76 = call i8* @htole16(i32 %75)
  %77 = load %struct.nfe_desc32*, %struct.nfe_desc32** %5, align 8
  %78 = getelementptr inbounds %struct.nfe_desc32, %struct.nfe_desc32* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %61, %25
  ret void
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @NFE_ADDR_HI(i32) #1

declare dso_local i32 @NFE_ADDR_LO(i32) #1

declare dso_local i8* @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
