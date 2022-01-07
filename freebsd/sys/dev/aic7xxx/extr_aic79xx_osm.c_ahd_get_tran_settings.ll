; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_get_tran_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_get_tran_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32 }
%struct.ccb_trans_settings = type { i64, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i64, i32 }
%struct.ahd_devinfo = type { i32, i32, i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.ahd_transinfo, %struct.ahd_transinfo }
%struct.ahd_transinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.ahd_tmode_tstate = type { i32, i32 }

@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i64 0, align 8
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CTS_TYPE_USER_SETTINGS = common dso_local global i64 0, align 8
@PROTO_SCSI = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@CTS_SPI_VALID_PPR_OPTIONS = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i64 0, align 8
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32, i8, %struct.ccb_trans_settings*)* @ahd_get_tran_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_get_tran_settings(%struct.ahd_softc* %0, i32 %1, i8 signext %2, %struct.ccb_trans_settings* %3) #0 {
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.ccb_trans_settings*, align 8
  %9 = alloca %struct.ahd_devinfo, align 4
  %10 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %11 = alloca %struct.ccb_trans_settings_spi*, align 8
  %12 = alloca %struct.ahd_initiator_tinfo*, align 8
  %13 = alloca %struct.ahd_tmode_tstate*, align 8
  %14 = alloca %struct.ahd_transinfo*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store %struct.ccb_trans_settings* %3, %struct.ccb_trans_settings** %8, align 8
  %15 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %16 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %17, %struct.ccb_trans_settings_scsi** %10, align 8
  %18 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %19 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %20, %struct.ccb_trans_settings_spi** %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %23 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %27 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8, i8* %7, align 1
  %31 = load i32, i32* @ROLE_UNKNOWN, align 4
  %32 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %9, i32 %21, i32 %25, i32 %29, i8 signext %30, i32 %31)
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %33, i32 %35, i32 %37, i32 %39, %struct.ahd_tmode_tstate** %13)
  store %struct.ahd_initiator_tinfo* %40, %struct.ahd_initiator_tinfo** %12, align 8
  %41 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %42 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CTS_TYPE_CURRENT_SETTINGS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %4
  %47 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %48 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %47, i32 0, i32 1
  store %struct.ahd_transinfo* %48, %struct.ahd_transinfo** %14, align 8
  br label %52

49:                                               ; preds = %4
  %50 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %51 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %50, i32 0, i32 0
  store %struct.ahd_transinfo* %51, %struct.ahd_transinfo** %14, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %56 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %62 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %66 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CTS_TYPE_USER_SETTINGS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %52
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %72 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %80 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %81 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %70
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %94 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %95 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %84
  br label %128

99:                                               ; preds = %52
  %100 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %13, align 8
  %101 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %109 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %110 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %99
  %114 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %13, align 8
  %115 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %9, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %123 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %124 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %113
  br label %128

128:                                              ; preds = %127, %98
  %129 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %14, align 8
  %130 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %133 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %14, align 8
  %135 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %138 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %14, align 8
  %140 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %143 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %14, align 8
  %145 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %148 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %14, align 8
  %150 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %153 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  %154 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %14, align 8
  %155 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %158 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @PROTO_SCSI, align 4
  %160 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %161 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @XPORT_SPI, align 4
  %163 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %164 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %166 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @CTS_SPI_VALID_PPR_OPTIONS, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %173 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %175 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %128
  %181 = load i64, i64* @CTS_SCSI_VALID_TQ, align 8
  %182 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %183 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %185 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %186 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %192

189:                                              ; preds = %128
  %190 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %191 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %190, i32 0, i32 0
  store i64 0, i64* %191, align 8
  br label %192

192:                                              ; preds = %189, %180
  %193 = load i32, i32* @CAM_REQ_CMP, align 4
  %194 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %195 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  ret void
}

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
