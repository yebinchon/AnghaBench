; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i32, i64, i64, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@SIS_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@SIS_TX_CFG = common dso_local global i32 0, align 4
@SIS_TXCFG_10 = common dso_local global i32 0, align 4
@SIS_TXCFG_100 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@SIS_TXCFG_IGN_HBEAT = common dso_local global i32 0, align 4
@SIS_TXCFG_IGN_CARR = common dso_local global i32 0, align 4
@SIS_RX_CFG = common dso_local global i32 0, align 4
@SIS_RXCFG_RX_TXPKTS = common dso_local global i32 0, align 4
@SIS_TYPE_83815 = common dso_local global i64 0, align 8
@NS_SRR_16A = common dso_local global i64 0, align 8
@SIS_TXCFG_MPII03D = common dso_local global i32 0, align 4
@NS_PHY_PAGE = common dso_local global i32 0, align 4
@NS_PHY_DSPCFG = common dso_local global i32 0, align 4
@NS_PHY_TDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Applying short cable fix (reg=%x)\0A\00", align 1
@SIS_CSR = common dso_local global i32 0, align 4
@SIS_CSR_TX_DISABLE = common dso_local global i32 0, align 4
@SIS_CSR_RX_DISABLE = common dso_local global i32 0, align 4
@SIS_CSR_TX_ENABLE = common dso_local global i32 0, align 4
@SIS_CSR_RX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sis_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sis_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.sis_softc*
  store %struct.sis_softc* %9, %struct.sis_softc** %3, align 8
  %10 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %11 = call i32 @SIS_LOCK_ASSERT(%struct.sis_softc* %10)
  %12 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @device_get_softc(i32 %14)
  %16 = bitcast i8* %15 to %struct.mii_data*
  store %struct.mii_data* %16, %struct.mii_data** %4, align 8
  %17 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %17, i32 0, i32 4
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %5, align 8
  %20 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %21 = icmp eq %struct.mii_data* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %1
  %23 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %24 = icmp eq %struct.ifnet* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %22, %1
  br label %207

33:                                               ; preds = %25
  %34 = load i32, i32* @SIS_FLAG_LINK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %37 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %41 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFM_ACTIVE, align 4
  %44 = load i32, i32* @IFM_AVALID, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = load i32, i32* @IFM_ACTIVE, align 4
  %48 = load i32, i32* @IFM_AVALID, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %33
  %52 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %53 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IFM_SUBTYPE(i32 %54)
  switch i32 %55, label %76 [
    i32 128, label %56
    i32 129, label %66
  ]

56:                                               ; preds = %51
  %57 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %58 = load i32, i32* @SIS_TX_CFG, align 4
  %59 = load i32, i32* @SIS_TXCFG_10, align 4
  %60 = call i32 @CSR_WRITE_4(%struct.sis_softc* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @SIS_FLAG_LINK, align 4
  %62 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %63 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %77

66:                                               ; preds = %51
  %67 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %68 = load i32, i32* @SIS_TX_CFG, align 4
  %69 = load i32, i32* @SIS_TXCFG_100, align 4
  %70 = call i32 @CSR_WRITE_4(%struct.sis_softc* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @SIS_FLAG_LINK, align 4
  %72 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %73 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %77

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %66, %56
  br label %78

78:                                               ; preds = %77, %33
  %79 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %80 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SIS_FLAG_LINK, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %207

86:                                               ; preds = %78
  %87 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %88 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @IFM_OPTIONS(i32 %89)
  %91 = load i32, i32* @IFM_FDX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %96 = load i32, i32* @SIS_TX_CFG, align 4
  %97 = load i32, i32* @SIS_TXCFG_IGN_HBEAT, align 4
  %98 = load i32, i32* @SIS_TXCFG_IGN_CARR, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @SIS_SETBIT(%struct.sis_softc* %95, i32 %96, i32 %99)
  %101 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %102 = load i32, i32* @SIS_RX_CFG, align 4
  %103 = load i32, i32* @SIS_RXCFG_RX_TXPKTS, align 4
  %104 = call i32 @SIS_SETBIT(%struct.sis_softc* %101, i32 %102, i32 %103)
  br label %116

105:                                              ; preds = %86
  %106 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %107 = load i32, i32* @SIS_TX_CFG, align 4
  %108 = load i32, i32* @SIS_TXCFG_IGN_HBEAT, align 4
  %109 = load i32, i32* @SIS_TXCFG_IGN_CARR, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @SIS_CLRBIT(%struct.sis_softc* %106, i32 %107, i32 %110)
  %112 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %113 = load i32, i32* @SIS_RX_CFG, align 4
  %114 = load i32, i32* @SIS_RXCFG_RX_TXPKTS, align 4
  %115 = call i32 @SIS_CLRBIT(%struct.sis_softc* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %105, %94
  %117 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %118 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SIS_TYPE_83815, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %124 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @NS_SRR_16A, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %130 = load i32, i32* @SIS_TX_CFG, align 4
  %131 = load i32, i32* @SIS_TXCFG_MPII03D, align 4
  %132 = call i32 @SIS_SETBIT(%struct.sis_softc* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %122, %116
  %134 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %135 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @SIS_TYPE_83815, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %194

139:                                              ; preds = %133
  %140 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %141 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @NS_SRR_16A, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %194

145:                                              ; preds = %139
  %146 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %147 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @IFM_SUBTYPE(i32 %148)
  %150 = icmp eq i32 %149, 129
  br i1 %150, label %151, label %194

151:                                              ; preds = %145
  %152 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %153 = load i32, i32* @NS_PHY_PAGE, align 4
  %154 = call i32 @CSR_WRITE_4(%struct.sis_softc* %152, i32 %153, i32 1)
  %155 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %156 = load i32, i32* @NS_PHY_DSPCFG, align 4
  %157 = call i32 @CSR_READ_4(%struct.sis_softc* %155, i32 %156)
  %158 = and i32 %157, 4095
  store i32 %158, i32* %6, align 4
  %159 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %160 = load i32, i32* @NS_PHY_DSPCFG, align 4
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, 4096
  %163 = call i32 @CSR_WRITE_4(%struct.sis_softc* %159, i32 %160, i32 %162)
  %164 = call i32 @DELAY(i32 100)
  %165 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %166 = load i32, i32* @NS_PHY_TDATA, align 4
  %167 = call i32 @CSR_READ_4(%struct.sis_softc* %165, i32 %166)
  %168 = and i32 %167, 255
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, 128
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %151
  %173 = load i32, i32* %6, align 4
  %174 = icmp sgt i32 %173, 216
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load i32, i32* %6, align 4
  %177 = icmp sle i32 %176, 255
  br i1 %177, label %178, label %190

178:                                              ; preds = %175, %151
  %179 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %180 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @device_printf(i32 %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %182)
  %184 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %185 = load i32, i32* @NS_PHY_TDATA, align 4
  %186 = call i32 @CSR_WRITE_4(%struct.sis_softc* %184, i32 %185, i32 232)
  %187 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %188 = load i32, i32* @NS_PHY_DSPCFG, align 4
  %189 = call i32 @SIS_SETBIT(%struct.sis_softc* %187, i32 %188, i32 32)
  br label %190

190:                                              ; preds = %178, %175, %172
  %191 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %192 = load i32, i32* @NS_PHY_PAGE, align 4
  %193 = call i32 @CSR_WRITE_4(%struct.sis_softc* %191, i32 %192, i32 0)
  br label %194

194:                                              ; preds = %190, %145, %139, %133
  %195 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %196 = load i32, i32* @SIS_CSR, align 4
  %197 = load i32, i32* @SIS_CSR_TX_DISABLE, align 4
  %198 = load i32, i32* @SIS_CSR_RX_DISABLE, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @SIS_CLRBIT(%struct.sis_softc* %195, i32 %196, i32 %199)
  %201 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %202 = load i32, i32* @SIS_CSR, align 4
  %203 = load i32, i32* @SIS_CSR_TX_ENABLE, align 4
  %204 = load i32, i32* @SIS_CSR_RX_ENABLE, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @SIS_SETBIT(%struct.sis_softc* %201, i32 %202, i32 %205)
  br label %207

207:                                              ; preds = %194, %85, %32
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @SIS_LOCK_ASSERT(%struct.sis_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @SIS_SETBIT(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @SIS_CLRBIT(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
