; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_rxmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_rxmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@ET_RXMAC_CTRL = common dso_local global i64 0, align 8
@ET_RXMAC_CTRL_WOL_DISABLE = common dso_local global i32 0, align 4
@ET_WOL_CRC = common dso_local global i64 0, align 8
@ET_WOL_MASK = common dso_local global i64 0, align 8
@ET_WOL_SA_LO = common dso_local global i64 0, align 8
@ET_WOL_SA_HI = common dso_local global i64 0, align 8
@ET_PKTFILT = common dso_local global i64 0, align 8
@ET_UCAST_FILTADDR1 = common dso_local global i64 0, align 8
@ET_UCAST_FILTADDR2 = common dso_local global i64 0, align 8
@ET_UCAST_FILTADDR3 = common dso_local global i64 0, align 8
@ET_RXMAC_CUT_THRU_FRMLEN = common dso_local global i64 0, align 8
@ET_RXMAC_MC_SEGSZ_MAX_MASK = common dso_local global i32 0, align 4
@ET_RXMAC_MC_SEGSZ_ENABLE = common dso_local global i32 0, align 4
@ET_RXMAC_MC_SEGSZ = common dso_local global i64 0, align 8
@ET_RXMAC_MC_WATERMARK = common dso_local global i64 0, align 8
@ET_RXMAC_MGT = common dso_local global i64 0, align 8
@ET_RXMAC_SPACE_AVL = common dso_local global i64 0, align 8
@ET_RXMAC_MGT_PASS_ECRC = common dso_local global i32 0, align 4
@ET_RXMAC_MGT_PASS_ELEN = common dso_local global i32 0, align 4
@ET_RXMAC_MGT_PASS_ETRUNC = common dso_local global i32 0, align 4
@ET_RXMAC_MGT_CHECK_PKT = common dso_local global i32 0, align 4
@ETHER_MIN_LEN = common dso_local global i32 0, align 4
@ET_PKTFILT_MINLEN_SHIFT = common dso_local global i32 0, align 4
@ET_PKTFILT_MINLEN_MASK = common dso_local global i32 0, align 4
@ET_PKTFILT_FRAG = common dso_local global i32 0, align 4
@ET_RXMAC_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_init_rxmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_init_rxmac(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %7 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %8 = load i64, i64* @ET_RXMAC_CTRL, align 8
  %9 = load i32, i32* @ET_RXMAC_CTRL_WOL_DISABLE, align 4
  %10 = call i32 @CSR_WRITE_4(%struct.et_softc* %7, i64 %8, i32 %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %16 = load i64, i64* @ET_WOL_CRC, align 8
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @CSR_WRITE_4(%struct.et_softc* %15, i64 %20, i32 0)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %11

25:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 20
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %31 = load i64, i64* @ET_WOL_MASK, align 8
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @CSR_WRITE_4(%struct.et_softc* %30, i64 %35, i32 0)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %26

40:                                               ; preds = %26
  %41 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %42 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %41, i32 0, i32 0
  %43 = load %struct.ifnet*, %struct.ifnet** %42, align 8
  store %struct.ifnet* %43, %struct.ifnet** %3, align 8
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = call i32* @IF_LLADDR(%struct.ifnet* %44)
  store i32* %45, i32** %4, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 24
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %49, %53
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %54, %58
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %65 = load i64, i64* @ET_WOL_SA_LO, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @CSR_WRITE_4(%struct.et_softc* %64, i64 %65, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  store i32 %75, i32* %5, align 4
  %76 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %77 = load i64, i64* @ET_WOL_SA_HI, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @CSR_WRITE_4(%struct.et_softc* %76, i64 %77, i32 %78)
  %80 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %81 = load i64, i64* @ET_PKTFILT, align 8
  %82 = call i32 @CSR_WRITE_4(%struct.et_softc* %80, i64 %81, i32 0)
  %83 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %84 = load i64, i64* @ET_UCAST_FILTADDR1, align 8
  %85 = call i32 @CSR_WRITE_4(%struct.et_softc* %83, i64 %84, i32 0)
  %86 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %87 = load i64, i64* @ET_UCAST_FILTADDR2, align 8
  %88 = call i32 @CSR_WRITE_4(%struct.et_softc* %86, i64 %87, i32 0)
  %89 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %90 = load i64, i64* @ET_UCAST_FILTADDR3, align 8
  %91 = call i32 @CSR_WRITE_4(%struct.et_softc* %89, i64 %90, i32 0)
  %92 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @ET_FRAMELEN(i32 %94)
  %96 = load i64, i64* @ET_RXMAC_CUT_THRU_FRMLEN, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %40
  %99 = call i32 @ET_RXMAC_SEGSZ(i32 256)
  %100 = load i32, i32* @ET_RXMAC_MC_SEGSZ_MAX_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @ET_RXMAC_MC_SEGSZ_ENABLE, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %5, align 4
  br label %105

104:                                              ; preds = %40
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %98
  %106 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %107 = load i64, i64* @ET_RXMAC_MC_SEGSZ, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @CSR_WRITE_4(%struct.et_softc* %106, i64 %107, i32 %108)
  %110 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %111 = load i64, i64* @ET_RXMAC_MC_WATERMARK, align 8
  %112 = call i32 @CSR_WRITE_4(%struct.et_softc* %110, i64 %111, i32 0)
  %113 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %114 = load i64, i64* @ET_RXMAC_MGT, align 8
  %115 = call i32 @CSR_WRITE_4(%struct.et_softc* %113, i64 %114, i32 0)
  %116 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %117 = load i64, i64* @ET_RXMAC_SPACE_AVL, align 8
  %118 = call i32 @CSR_WRITE_4(%struct.et_softc* %116, i64 %117, i32 0)
  %119 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %120 = load i64, i64* @ET_RXMAC_MGT, align 8
  %121 = load i32, i32* @ET_RXMAC_MGT_PASS_ECRC, align 4
  %122 = load i32, i32* @ET_RXMAC_MGT_PASS_ELEN, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @ET_RXMAC_MGT_PASS_ETRUNC, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @ET_RXMAC_MGT_CHECK_PKT, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @CSR_WRITE_4(%struct.et_softc* %119, i64 %120, i32 %127)
  %129 = load i32, i32* @ETHER_MIN_LEN, align 4
  %130 = load i32, i32* @ET_PKTFILT_MINLEN_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* @ET_PKTFILT_MINLEN_MASK, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* @ET_PKTFILT_FRAG, align 4
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  %137 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %138 = load i64, i64* @ET_PKTFILT, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @CSR_WRITE_4(%struct.et_softc* %137, i64 %138, i32 %139)
  %141 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %142 = load i64, i64* @ET_RXMAC_CTRL, align 8
  %143 = load i32, i32* @ET_RXMAC_CTRL_WOL_DISABLE, align 4
  %144 = load i32, i32* @ET_RXMAC_CTRL_ENABLE, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @CSR_WRITE_4(%struct.et_softc* %141, i64 %142, i32 %145)
  %147 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %148 = call i32 @et_setmulti(%struct.et_softc* %147)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i64, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i64 @ET_FRAMELEN(i32) #1

declare dso_local i32 @ET_RXMAC_SEGSZ(i32) #1

declare dso_local i32 @et_setmulti(%struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
