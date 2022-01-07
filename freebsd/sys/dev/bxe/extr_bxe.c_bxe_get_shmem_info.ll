; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_shmem_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_shmem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.bxe_softc = type { i64*, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32*, i8*, i32, i8*, i8**, %struct.bxe_softc* }
%struct.TYPE_14__ = type { i32*, i8*, i8* }
%struct.TYPE_11__ = type { i32, i8* }

@dev_info = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@SHARED_HW_CFG_LED_MODE_MASK = common dso_local global i32 0, align 4
@SHARED_HW_CFG_LED_MODE_SHIFT = common dso_local global i32 0, align 4
@ELINK_INT_PHY = common dso_local global i64 0, align 8
@PORT_FEATURE_CONNECTED_SWITCH_MASK = common dso_local global i32 0, align 4
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@SHARED_FEAT_CFG_OVERRIDE_PREEMPHASIS_CFG_ENABLED = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED = common dso_local global i32 0, align 4
@func_mf_config = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"No Ethernet address programmed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Ethernet address: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_get_shmem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_get_shmem_info(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = call i32 @SC_PORT(%struct.bxe_softc* %7)
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 8
  store %struct.bxe_softc* %9, %struct.bxe_softc** %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %15 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 3, i32 1), align 4
  %19 = call i8* @SHMEM_RD(%struct.bxe_softc* %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 3, i32 0), align 8
  %26 = call i8* @SHMEM_RD(%struct.bxe_softc* %24, i32 %25)
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SHARED_HW_CFG_LED_MODE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 2), align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @SHMEM_RD(%struct.bxe_softc* %41, i32 %47)
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  store i8* %48, i8** %51, align 8
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 0), align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @SHMEM_RD(%struct.bxe_softc* %52, i32 %58)
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %61 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 7
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %59, i8** %64, align 8
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 0), align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @SHMEM_RD(%struct.bxe_softc* %65, i32 %71)
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 7
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  store i8* %72, i8** %77, align 8
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 0), align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @SHMEM_RD(%struct.bxe_softc* %78, i32 %84)
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 6
  store i8* %85, i8** %88, align 8
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 2), align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @SHMEM_RD(%struct.bxe_softc* %89, i32 %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %100 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @ELINK_INT_PHY, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @PORT_FEATURE_CONNECTED_SWITCH_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %109 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 2), align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @SHMEM_RD(%struct.bxe_softc* %111, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %121 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 1, i32 0), align 8
  %128 = call i8* @SHMEM_RD(%struct.bxe_softc* %126, i32 %127)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @SHARED_FEAT_CFG_OVERRIDE_PREEMPHASIS_CFG_ENABLED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %1
  %135 = load i32, i32* @ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED, align 4
  %136 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %137 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %135
  store i32 %140, i32* %138, align 8
  br label %149

141:                                              ; preds = %1
  %142 = load i32, i32* @ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %145 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %143
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %141, %134
  %150 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 0), align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @SHMEM_RD(%struct.bxe_softc* %150, i32 %156)
  %158 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %159 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 4
  store i8* %157, i8** %160, align 8
  %161 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 0), align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @SHMEM_RD(%struct.bxe_softc* %161, i32 %167)
  %169 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %170 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  store i8* %168, i8** %171, align 8
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %173 = call i32 @bxe_get_mf_cfg_info(%struct.bxe_softc* %172)
  %174 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %175 = call i64 @IS_MF(%struct.bxe_softc* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %149
  %178 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** @func_mf_config, align 8
  %180 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %181 = call i64 @SC_ABS_FUNC(%struct.bxe_softc* %180)
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @MFCFG_RD(%struct.bxe_softc* %178, i32 %184)
  store i32 %185, i32* %4, align 4
  %186 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** @func_mf_config, align 8
  %188 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %189 = call i64 @SC_ABS_FUNC(%struct.bxe_softc* %188)
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @MFCFG_RD(%struct.bxe_softc* %186, i32 %192)
  store i32 %193, i32* %5, align 4
  br label %213

194:                                              ; preds = %149
  %195 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 0), align 8
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @SHMEM_RD(%struct.bxe_softc* %195, i32 %201)
  %203 = ptrtoint i8* %202 to i32
  store i32 %203, i32* %4, align 4
  %204 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_info, i32 0, i32 0), align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @SHMEM_RD(%struct.bxe_softc* %204, i32 %210)
  %212 = ptrtoint i8* %211 to i32
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %194, %177
  %214 = load i32, i32* %5, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = load i32, i32* %4, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %221 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  store i64 0, i64* %222, align 8
  %223 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %224 = call i32 @BLOGE(%struct.bxe_softc* %223, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %330

225:                                              ; preds = %216, %213
  %226 = load i32, i32* %4, align 4
  %227 = ashr i32 %226, 8
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %232 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  store i32 %230, i32* %235, align 4
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %241 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  store i32 %239, i32* %244, align 4
  %245 = load i32, i32* %5, align 4
  %246 = ashr i32 %245, 24
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = ptrtoint i8* %248 to i32
  %250 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %251 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  store i32 %249, i32* %254, align 4
  %255 = load i32, i32* %5, align 4
  %256 = ashr i32 %255, 16
  %257 = sext i32 %256 to i64
  %258 = inttoptr i64 %257 to i8*
  %259 = ptrtoint i8* %258 to i32
  %260 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %261 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 3
  store i32 %259, i32* %264, align 4
  %265 = load i32, i32* %5, align 4
  %266 = ashr i32 %265, 8
  %267 = sext i32 %266 to i64
  %268 = inttoptr i64 %267 to i8*
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %271 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 4
  store i32 %269, i32* %274, align 4
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = ptrtoint i8* %277 to i32
  %279 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %280 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 5
  store i32 %278, i32* %283, align 4
  %284 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %285 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %284, i32 0, i32 0
  %286 = load i64*, i64** %285, align 8
  %287 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %288 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %294 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %300 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 3
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %306 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 3
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 3
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %312 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 3
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 4
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %318 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 3
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 5
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @snprintf(i64* %286, i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %292, i32 %298, i32 %304, i32 %310, i32 %316, i32 %322)
  %324 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %325 = load i32, i32* @DBG_LOAD, align 4
  %326 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %327 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %326, i32 0, i32 0
  %328 = load i64*, i64** %327, align 8
  %329 = call i32 @BLOGD(%struct.bxe_softc* %324, i32 %325, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64* %328)
  br label %330

330:                                              ; preds = %225, %219
  ret i32 0
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i8* @SHMEM_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_get_mf_cfg_info(%struct.bxe_softc*) #1

declare dso_local i64 @IS_MF(%struct.bxe_softc*) #1

declare dso_local i32 @MFCFG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @SC_ABS_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @snprintf(i64*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
