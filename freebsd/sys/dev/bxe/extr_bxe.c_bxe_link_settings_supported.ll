; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_link_settings_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_link_settings_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bxe_softc = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32*, i8*, i32* }
%struct.TYPE_9__ = type { i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ELINK_INT_PHY = common dso_local global i64 0, align 8
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@PORT_HW_CFG_PHY_SWAPPED_ENABLED = common dso_local global i32 0, align 4
@ELINK_EXT_PHY2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Invalid phy config in NVRAM (PHY1=0x%08x PHY2=0x%08x)\0A\00", align 1
@dev_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MISC_REG_WC0_CTRL_PHY_ADDR = common dso_local global i64 0, align 8
@NIG_REG_SERDES0_CTRL_PHY_ADDR = common dso_local global i64 0, align 8
@NIG_REG_XGXS0_CTRL_PHY_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid switch config in link_config=0x%08x\0A\00", align 1
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"PHY addr 0x%08x\0A\00", align 1
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_20G = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_20000baseKR2_Full = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"PHY supported 0=0x%08x 1=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_link_settings_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_link_settings_supported(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %9 = call i64 @SC_PORT(%struct.bxe_softc* %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %115 [
    i32 1, label %24
    i32 2, label %38
    i32 3, label %52
  ]

24:                                               ; preds = %2
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i64, i64* @ELINK_INT_PHY, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %32, i32* %37, align 4
  store i32 1, i32* %5, align 4
  br label %115

38:                                               ; preds = %2
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %48 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %46, i32* %51, align 4
  store i32 1, i32* %5, align 4
  br label %115

52:                                               ; preds = %2
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %54 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PORT_HW_CFG_PHY_SWAPPED_ENABLED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %52
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %62 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %70 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %68, i32* %73, align 4
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %75 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* @ELINK_EXT_PHY2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %83 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %81, i32* %86, align 4
  br label %114

87:                                               ; preds = %52
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %89 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %97 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %95, i32* %100, align 4
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %102 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i64, i64* @ELINK_EXT_PHY2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %110 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %87, %60
  store i32 2, i32* %5, align 4
  br label %115

115:                                              ; preds = %2, %114, %38, %24
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %117 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %148, label %123

123:                                              ; preds = %115
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %125 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %123
  %132 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %133 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @SHMEM_RD(%struct.bxe_softc* %133, i32 %138)
  %140 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %142 = load i64, i64* %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @SHMEM_RD(%struct.bxe_softc* %140, i32 %145)
  %147 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %132, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %139, i32 %146)
  br label %430

148:                                              ; preds = %123, %115
  %149 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %150 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %154 = load i64, i64* @MISC_REG_WC0_CTRL_PHY_ADDR, align 8
  %155 = call i8* @REG_RD(%struct.bxe_softc* %153, i64 %154)
  %156 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %157 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  store i8* %155, i8** %158, align 8
  br label %191

159:                                              ; preds = %148
  %160 = load i32, i32* %4, align 4
  switch i32 %160, label %181 [
    i32 128, label %161
    i32 129, label %171
  ]

161:                                              ; preds = %159
  %162 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %163 = load i64, i64* @NIG_REG_SERDES0_CTRL_PHY_ADDR, align 8
  %164 = load i64, i64* %7, align 8
  %165 = mul i64 %164, 16
  %166 = add i64 %163, %165
  %167 = call i8* @REG_RD(%struct.bxe_softc* %162, i64 %166)
  %168 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %169 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i8* %167, i8** %170, align 8
  br label %190

171:                                              ; preds = %159
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %173 = load i64, i64* @NIG_REG_XGXS0_CTRL_PHY_ADDR, align 8
  %174 = load i64, i64* %7, align 8
  %175 = mul i64 %174, 24
  %176 = add i64 %173, %175
  %177 = call i8* @REG_RD(%struct.bxe_softc* %172, i64 %176)
  %178 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %179 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  store i8* %177, i8** %180, align 8
  br label %190

181:                                              ; preds = %159
  %182 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %183 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %184 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %182, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  br label %430

190:                                              ; preds = %171, %161
  br label %191

191:                                              ; preds = %190, %152
  %192 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %193 = load i32, i32* @DBG_LOAD, align 4
  %194 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %195 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = ptrtoint i8* %197 to i32
  %199 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %192, i32 %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  store i32 0, i32* %6, align 4
  br label %200

200:                                              ; preds = %397, %191
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %5, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %400

204:                                              ; preds = %200
  %205 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %206 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %204
  %217 = load i32, i32* @ELINK_SUPPORTED_10baseT_Half, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %220 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, %218
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %216, %204
  %229 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %230 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %252, label %240

240:                                              ; preds = %228
  %241 = load i32, i32* @ELINK_SUPPORTED_10baseT_Full, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %244 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, %242
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %240, %228
  %253 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %254 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %276, label %264

264:                                              ; preds = %252
  %265 = load i32, i32* @ELINK_SUPPORTED_100baseT_Half, align 4
  %266 = xor i32 %265, -1
  %267 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %268 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, %266
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %264, %252
  %277 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %278 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %300, label %288

288:                                              ; preds = %276
  %289 = load i32, i32* @ELINK_SUPPORTED_100baseT_Full, align 4
  %290 = xor i32 %289, -1
  %291 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %292 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, %290
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %288, %276
  %301 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %302 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %324, label %312

312:                                              ; preds = %300
  %313 = load i32, i32* @ELINK_SUPPORTED_1000baseT_Full, align 4
  %314 = xor i32 %313, -1
  %315 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %316 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %6, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, %314
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %312, %300
  %325 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %326 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %348, label %336

336:                                              ; preds = %324
  %337 = load i32, i32* @ELINK_SUPPORTED_2500baseX_Full, align 4
  %338 = xor i32 %337, -1
  %339 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %340 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, %338
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %336, %324
  %349 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %350 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 2
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %372, label %360

360:                                              ; preds = %348
  %361 = load i32, i32* @ELINK_SUPPORTED_10000baseT_Full, align 4
  %362 = xor i32 %361, -1
  %363 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %364 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = and i32 %370, %362
  store i32 %371, i32* %369, align 4
  br label %372

372:                                              ; preds = %360, %348
  %373 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %374 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %6, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_20G, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %396, label %384

384:                                              ; preds = %372
  %385 = load i32, i32* @ELINK_SUPPORTED_20000baseKR2_Full, align 4
  %386 = xor i32 %385, -1
  %387 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %388 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %6, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, %386
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %384, %372
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %6, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %6, align 4
  br label %200

400:                                              ; preds = %200
  %401 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %402 = load i32, i32* @DBG_LOAD, align 4
  %403 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %404 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 0
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %410 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 1
  %414 = load i32, i32* %413, align 4
  %415 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %401, i32 %402, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %408, i32 %414)
  %416 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %417 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %418 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 0
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %424 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 0
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 1
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %416, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %422, i32 %428)
  br label %430

430:                                              ; preds = %400, %181, %131
  ret void
}

declare dso_local i64 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, ...) #1

declare dso_local i32 @SHMEM_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i8* @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
