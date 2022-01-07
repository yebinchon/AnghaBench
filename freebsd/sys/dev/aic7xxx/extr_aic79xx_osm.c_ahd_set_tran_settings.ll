; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_set_tran_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_set_tran_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32 }
%struct.ccb_trans_settings = type { i64, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32, i64, i64, i32, i64 }
%struct.TYPE_7__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.ahd_devinfo = type { i32, i32, i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ahd_tmode_tstate = type { i32, i32 }

@sim = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i64 0, align 8
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@CTS_TYPE_USER_SETTINGS = common dso_local global i64 0, align 8
@AHD_TRANS_USER = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CTS_SPI_VALID_PPR_OPTIONS = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@AHD_SYNCRATE_MAX = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i64 0, align 8
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32, i8, %struct.ccb_trans_settings*)* @ahd_set_tran_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_set_tran_settings(%struct.ahd_softc* %0, i32 %1, i8 signext %2, %struct.ccb_trans_settings* %3) #0 {
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.ccb_trans_settings*, align 8
  %9 = alloca %struct.ahd_devinfo, align 4
  %10 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %11 = alloca %struct.ccb_trans_settings_spi*, align 8
  %12 = alloca %struct.ahd_initiator_tinfo*, align 8
  %13 = alloca %struct.ahd_tmode_tstate*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store %struct.ccb_trans_settings* %3, %struct.ccb_trans_settings** %8, align 8
  %18 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %19 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %20, %struct.ccb_trans_settings_scsi** %10, align 8
  %21 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %22 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %23, %struct.ccb_trans_settings_spi** %11, align 8
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %25 = load i32, i32* @sim, align 4
  %26 = call i32 @SIM_SCSI_ID(%struct.ahd_softc* %24, i32 %25)
  %27 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %28 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %32 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %36 = load i32, i32* @sim, align 4
  %37 = call i32 @SIM_CHANNEL(%struct.ahd_softc* %35, i32 %36)
  %38 = load i32, i32* @ROLE_UNKNOWN, align 4
  %39 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %9, i32 %26, i32 %30, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %41 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %40, i32 %42, i32 %44, i32 %46, %struct.ahd_tmode_tstate** %13)
  store %struct.ahd_initiator_tinfo* %47, %struct.ahd_initiator_tinfo** %12, align 8
  store i32 0, i32* %16, align 4
  %48 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %49 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CTS_TYPE_CURRENT_SETTINGS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %4
  %54 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %55 = load i32, i32* %16, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %16, align 4
  %57 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %13, align 8
  %58 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %57, i32 0, i32 0
  store i32* %58, i32** %14, align 8
  %59 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %13, align 8
  %60 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %59, i32 0, i32 1
  store i32* %60, i32** %15, align 8
  %61 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %62 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %65 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %68 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %71 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %74 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %77 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 8
  %79 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %80 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %83 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  br label %117

85:                                               ; preds = %4
  %86 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %87 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CTS_TYPE_USER_SETTINGS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %85
  %92 = load i32, i32* @AHD_TRANS_USER, align 4
  %93 = load i32, i32* %16, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %16, align 4
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %96 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %95, i32 0, i32 0
  store i32* %96, i32** %14, align 8
  %97 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %98 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %97, i32 0, i32 1
  store i32* %98, i32** %15, align 8
  %99 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %100 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %103 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 8
  %105 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %106 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %109 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 4
  br label %116

111:                                              ; preds = %85
  %112 = load i32, i32* @CAM_REQ_INVALID, align 4
  %113 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %114 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %360

116:                                              ; preds = %91
  br label %117

117:                                              ; preds = %116, %53
  %118 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %119 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %117
  %125 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %126 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 4
  br label %144

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %139, -1
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %140
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %137, %131
  br label %145

145:                                              ; preds = %144, %117
  %146 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %147 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %145
  %153 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %154 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %15, align 8
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  br label %172

165:                                              ; preds = %152
  %166 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 %167, -1
  %169 = load i32*, i32** %15, align 8
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %165, %159
  br label %173

173:                                              ; preds = %172, %145
  %174 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %175 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %173
  %181 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %182 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %183 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %182, i32 0, i32 2
  %184 = load i32, i32* @ROLE_UNKNOWN, align 4
  %185 = call i32 @ahd_validate_width(%struct.ahd_softc* %181, i32* null, i64* %183, i32 %184)
  %186 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %187 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %188 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* @FALSE, align 4
  %192 = call i32 @ahd_set_width(%struct.ahd_softc* %186, %struct.ahd_devinfo* %9, i64 %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %180, %173
  %194 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %195 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @CTS_SPI_VALID_PPR_OPTIONS, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %193
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* @AHD_TRANS_USER, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %200
  %205 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %206 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %210 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  br label %218

211:                                              ; preds = %200
  %212 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %213 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %217 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %211, %204
  br label %219

219:                                              ; preds = %218, %193
  %220 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %221 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %224 = and i32 %222, %223
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %219
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* @AHD_TRANS_USER, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %226
  %231 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %232 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %236 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %235, i32 0, i32 3
  store i64 %234, i64* %236, align 8
  br label %244

237:                                              ; preds = %226
  %238 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %239 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %243 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %242, i32 0, i32 3
  store i64 %241, i64* %243, align 8
  br label %244

244:                                              ; preds = %237, %230
  br label %245

245:                                              ; preds = %244, %219
  %246 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %247 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %250 = and i32 %248, %249
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %271

252:                                              ; preds = %245
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* @AHD_TRANS_USER, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %252
  %257 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %258 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %262 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %261, i32 0, i32 5
  store i64 %260, i64* %262, align 8
  br label %270

263:                                              ; preds = %252
  %264 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %265 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %269 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %268, i32 0, i32 5
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %263, %256
  br label %271

271:                                              ; preds = %270, %245
  %272 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %273 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %271
  %279 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %280 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %355

285:                                              ; preds = %278, %271
  %286 = load i32, i32* @AHD_SYNCRATE_MAX, align 4
  store i32 %286, i32* %17, align 4
  %287 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %288 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @MSG_EXT_WDTR_BUS_16_BIT, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %285
  %293 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %294 = xor i32 %293, -1
  %295 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %296 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = and i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %292, %285
  %300 = load i32*, i32** %14, align 8
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %301, %303
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %299
  %307 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %308 = xor i32 %307, -1
  %309 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %310 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %313

313:                                              ; preds = %306, %299
  %314 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %315 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %316 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %315, i32 0, i32 5
  %317 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %318 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %317, i32 0, i32 4
  %319 = load i32, i32* %17, align 4
  %320 = call i32 @ahd_find_syncrate(%struct.ahd_softc* %314, i64* %316, i32* %318, i32 %319)
  %321 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %322 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %323 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %322, i32 0, i32 5
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %326 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %325, i32 0, i32 3
  %327 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %328 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = load i32, i32* @ROLE_UNKNOWN, align 4
  %331 = call i32 @ahd_validate_offset(%struct.ahd_softc* %321, i32* null, i64 %324, i64* %326, i64 %329, i32 %330)
  %332 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %333 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %313
  %337 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %338 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %337, i32 0, i32 5
  store i64 0, i64* %338, align 8
  %339 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %340 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %339, i32 0, i32 4
  store i32 0, i32* %340, align 8
  br label %341

341:                                              ; preds = %336, %313
  %342 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %343 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %344 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %347 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %346, i32 0, i32 3
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %350 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* %16, align 4
  %353 = load i32, i32* @FALSE, align 4
  %354 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %342, %struct.ahd_devinfo* %9, i64 %345, i64 %348, i32 %351, i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %341, %278
  %356 = load i32, i32* @CAM_REQ_CMP, align 4
  %357 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %358 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  store i32 %356, i32* %359, align 8
  br label %360

360:                                              ; preds = %355, %111
  ret void
}

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SIM_SCSI_ID(%struct.ahd_softc*, i32) #1

declare dso_local i32 @SIM_CHANNEL(%struct.ahd_softc*, i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_validate_width(%struct.ahd_softc*, i32*, i64*, i32) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i64, i32, i32) #1

declare dso_local i32 @ahd_find_syncrate(%struct.ahd_softc*, i64*, i32*, i32) #1

declare dso_local i32 @ahd_validate_offset(%struct.ahd_softc*, i32*, i64, i64*, i64, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
