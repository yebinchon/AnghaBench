; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_rx_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_rx_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32*, i32, i8*, i8*, i32*, %struct.rx_bd**, i8*, i8*, i64, i64, i64 }
%struct.rx_bd = type { i8*, i8* }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_VERBOSE_RECV = common dso_local global i32 0, align 4
@BCE_VERBOSE_LOAD = common dso_local global i32 0, align 4
@BCE_VERBOSE_CTX = common dso_local global i32 0, align 4
@USABLE_RX_BD_ALLOC = common dso_local global i8* null, align 8
@USABLE_RX_BD_PER_PAGE = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BCE_EXTREME_RECV = common dso_local global i32 0, align 4
@TOTAL_RX_BD_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bce_softc*)* @bce_init_rx_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bce_init_rx_chain(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca %struct.rx_bd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %8 = load i32, i32* @BCE_VERBOSE_RECV, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @DBENTER(i32 %13)
  %15 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %15, i32 0, i32 11
  store i64 0, i64* %16, align 8
  %17 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load i8*, i8** @USABLE_RX_BD_ALLOC, align 8
  %22 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %22, i32 0, i32 8
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @USABLE_RX_BD_ALLOC, align 8
  %25 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %26 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %76, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %27
  %34 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %34, i32 0, i32 6
  %36 = load %struct.rx_bd**, %struct.rx_bd*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rx_bd*, %struct.rx_bd** %36, i64 %38
  %40 = load %struct.rx_bd*, %struct.rx_bd** %39, align 8
  %41 = load i64, i64* @USABLE_RX_BD_PER_PAGE, align 8
  %42 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %40, i64 %41
  store %struct.rx_bd* %42, %struct.rx_bd** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %45 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %53

50:                                               ; preds = %33
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %49
  %54 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BCE_ADDR_HI(i32 %60)
  %62 = call i8* @htole32(i32 %61)
  %63 = load %struct.rx_bd*, %struct.rx_bd** %3, align 8
  %64 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @BCE_ADDR_LO(i32 %71)
  %73 = call i8* @htole32(i32 %72)
  %74 = load %struct.rx_bd*, %struct.rx_bd** %3, align 8
  %75 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %53
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %27

79:                                               ; preds = %27
  %80 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %81 = call i32 @bce_fill_rx_chain(%struct.bce_softc* %80)
  %82 = load i8*, i8** @USABLE_RX_BD_ALLOC, align 8
  %83 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %84 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = call i32 @DBRUN(i8* %82)
  %86 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %86, i32 0, i32 3
  store i8* null, i8** %87, align 8
  %88 = call i32 @DBRUN(i8* null)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %110, %79
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %92 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %97 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %100 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %107 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @bus_dmamap_sync(i32 %98, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %95
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %89

113:                                              ; preds = %89
  %114 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %115 = call i32 @bce_init_rx_context(%struct.bce_softc* %114)
  %116 = load i32, i32* @BCE_EXTREME_RECV, align 4
  %117 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %118 = load i32, i32* @TOTAL_RX_BD_ALLOC, align 4
  %119 = call i32 @bce_dump_rx_bd_chain(%struct.bce_softc* %117, i32 0, i32 %118)
  %120 = call i32 @DBRUNMSG(i32 %116, i32 %119)
  %121 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %122 = load i32, i32* @BCE_VERBOSE_RECV, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @DBEXIT(i32 %127)
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @BCE_ADDR_HI(i32) #1

declare dso_local i32 @BCE_ADDR_LO(i32) #1

declare dso_local i32 @bce_fill_rx_chain(%struct.bce_softc*) #1

declare dso_local i32 @DBRUN(i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bce_init_rx_context(%struct.bce_softc*) #1

declare dso_local i32 @DBRUNMSG(i32, i32) #1

declare dso_local i32 @bce_dump_rx_bd_chain(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
