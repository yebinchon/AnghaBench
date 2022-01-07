; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.bxe_softc = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32*, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ELINK_SUPPORTED_TP = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ELINK_ETH_PHY_SFP_1G_FIBER = common dso_local global i64 0, align 8
@ELINK_SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@BXE_STATE_OPEN = common dso_local global i64 0, align 8
@BXE_MF_FUNC_DIS = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@dev_info = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_NOT_CONN = common dso_local global i32 0, align 4
@ELINK_SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.TYPE_14__*)* @bxe_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_get_settings(%struct.bxe_softc* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %9 = call i32 @SC_PORT(%struct.bxe_softc* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = call i32 @bxe_get_link_cfg_idx(%struct.bxe_softc* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = xor i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ELINK_SUPPORTED_TP, align 4
  %30 = load i32, i32* @ELINK_SUPPORTED_FIBRE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = or i32 %19, %32
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %51 = call i64 @bxe_get_cur_phy_idx(%struct.bxe_softc* %50)
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ELINK_ETH_PHY_SFP_1G_FIBER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %2
  %58 = load i32, i32* @ELINK_SUPPORTED_10000baseT_Full, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %57, %2
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %70 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BXE_STATE_OPEN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %68
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %76 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %114

80:                                               ; preds = %74
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %82 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @BXE_MF_FUNC_DIS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %114, label %87

87:                                               ; preds = %80
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %89 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %95 = call i64 @IS_MF(%struct.bxe_softc* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %99 = call i32 @BXE_NOMCP(%struct.bxe_softc* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %103 = call i32 @bxe_get_mf_speed(%struct.bxe_softc* %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  br label %113

106:                                              ; preds = %97, %87
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %108 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %101
  br label %121

114:                                              ; preds = %80, %74, %68
  %115 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @SPEED_UNKNOWN, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %114, %113
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %123 = call i32 @bxe_media_detect(%struct.bxe_softc* %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dev_info, i32 0, i32 0), align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @SHMEM_RD(%struct.bxe_softc* %126, i32 %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %121
  %140 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %141 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  br label %167

146:                                              ; preds = %121
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %146
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_NOT_CONN, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @ELINK_XGXS_EXT_PHY_ADDR(i32 %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  br label %166

163:                                              ; preds = %152, %146
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %158
  br label %167

167:                                              ; preds = %166, %139
  %168 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %169 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %167
  %179 = load i32, i32* @AUTONEG_ENABLE, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  br label %186

182:                                              ; preds = %167
  %183 = load i32, i32* @AUTONEG_DISABLE, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %178
  ret i32 0
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_get_link_cfg_idx(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_get_cur_phy_idx(%struct.bxe_softc*) #1

declare dso_local i64 @IS_MF(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_NOMCP(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_get_mf_speed(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_media_detect(%struct.bxe_softc*) #1

declare dso_local i32 @SHMEM_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @ELINK_XGXS_EXT_PHY_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
