; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cam_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cam_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, %struct.TYPE_9__, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.scsi_read_capacity_data = type { i32 }
%struct.scsi_vpd_supported_page_list = type { i64, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@READ_CAPACITY_OFFBY1 = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@SI_EVPD = common dso_local global i32 0, align 4
@SVPD_SUPPORTED_PAGE_LIST = common dso_local global i32 0, align 4
@SVPD_SUPPORTED_PAGES_SIZE = common dso_local global i32 0, align 4
@SVPD_UNIT_SERIAL_NUMBER = common dso_local global i32 0, align 4
@UDMASS_SCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Fetching %d bytes of sense data\0A\00", align 1
@FORCE_SHORT_INQUIRY = common dso_local global i32 0, align 4
@SHORT_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@DIR_IN = common dso_local global i32 0, align 4
@umass_cam_sense_cb = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umass_softc*, %union.ccb*, i32, i32)* @umass_cam_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_cam_cb(%struct.umass_softc* %0, %union.ccb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.umass_softc*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_read_capacity_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca %struct.scsi_vpd_supported_page_list*, align 8
  store %struct.umass_softc* %0, %struct.umass_softc** %5, align 8
  store %union.ccb* %1, %union.ccb** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %union.ccb*, %union.ccb** %6, align 8
  %15 = bitcast %union.ccb* %14 to %struct.ccb_scsiio*
  %16 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %199 [
    i32 129, label %18
    i32 128, label %138
    i32 130, label %138
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* @CAM_REQ_CMP, align 4
  %20 = load %union.ccb*, %union.ccb** %6, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_10__*
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %24 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @READ_CAPACITY_OFFBY1, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %18
  %30 = load %union.ccb*, %union.ccb** %6, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @XPT_SCSI_IO, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load %union.ccb*, %union.ccb** %6, align 8
  %38 = bitcast %union.ccb* %37 to %struct.ccb_scsiio*
  %39 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @READ_CAPACITY, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = load %union.ccb*, %union.ccb** %6, align 8
  %48 = bitcast %union.ccb* %47 to %struct.ccb_scsiio*
  %49 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = bitcast i8* %51 to %struct.scsi_read_capacity_data*
  store %struct.scsi_read_capacity_data* %52, %struct.scsi_read_capacity_data** %9, align 8
  %53 = load %struct.scsi_read_capacity_data*, %struct.scsi_read_capacity_data** %9, align 8
  %54 = getelementptr inbounds %struct.scsi_read_capacity_data, %struct.scsi_read_capacity_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @scsi_4btoul(i32 %55)
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.scsi_read_capacity_data*, %struct.scsi_read_capacity_data** %9, align 8
  %60 = getelementptr inbounds %struct.scsi_read_capacity_data, %struct.scsi_read_capacity_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @scsi_ulto4b(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %46, %36, %29, %18
  %64 = load %union.ccb*, %union.ccb** %6, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XPT_SCSI_IO, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %135

70:                                               ; preds = %63
  %71 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %72 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @INQUIRY, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %135

79:                                               ; preds = %70
  %80 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %81 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SI_EVPD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %135

89:                                               ; preds = %79
  %90 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %91 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SVPD_SUPPORTED_PAGE_LIST, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %135

98:                                               ; preds = %89
  %99 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %100 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @usb_get_serial(i32 %101)
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %98
  %108 = load %union.ccb*, %union.ccb** %6, align 8
  %109 = bitcast %union.ccb* %108 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %109, %struct.ccb_scsiio** %11, align 8
  %110 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %111 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.scsi_vpd_supported_page_list*
  store %struct.scsi_vpd_supported_page_list* %113, %struct.scsi_vpd_supported_page_list** %12, align 8
  %114 = load %struct.scsi_vpd_supported_page_list*, %struct.scsi_vpd_supported_page_list** %12, align 8
  %115 = getelementptr inbounds %struct.scsi_vpd_supported_page_list, %struct.scsi_vpd_supported_page_list* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  %118 = load i32, i32* @SVPD_SUPPORTED_PAGES_SIZE, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ult i64 %117, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %107
  %122 = load i32, i32* @SVPD_UNIT_SERIAL_NUMBER, align 4
  %123 = load %struct.scsi_vpd_supported_page_list*, %struct.scsi_vpd_supported_page_list** %12, align 8
  %124 = getelementptr inbounds %struct.scsi_vpd_supported_page_list, %struct.scsi_vpd_supported_page_list* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.scsi_vpd_supported_page_list*, %struct.scsi_vpd_supported_page_list** %12, align 8
  %127 = getelementptr inbounds %struct.scsi_vpd_supported_page_list, %struct.scsi_vpd_supported_page_list* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 %122, i32* %129, align 4
  %130 = load %struct.scsi_vpd_supported_page_list*, %struct.scsi_vpd_supported_page_list** %12, align 8
  %131 = getelementptr inbounds %struct.scsi_vpd_supported_page_list, %struct.scsi_vpd_supported_page_list* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %121, %107
  br label %135

135:                                              ; preds = %134, %98, %89, %79, %70, %63
  %136 = load %union.ccb*, %union.ccb** %6, align 8
  %137 = call i32 @xpt_done(%union.ccb* %136)
  br label %213

138:                                              ; preds = %4, %4
  %139 = load %union.ccb*, %union.ccb** %6, align 8
  %140 = bitcast %union.ccb* %139 to %struct.ccb_scsiio*
  %141 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %144 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %147 = load i32, i32* @UDMASS_SCSI, align 4
  %148 = load %union.ccb*, %union.ccb** %6, align 8
  %149 = bitcast %union.ccb* %148 to %struct.ccb_scsiio*
  %150 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @DPRINTF(%struct.umass_softc* %146, i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %151)
  %153 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %154 = load %union.ccb*, %union.ccb** %6, align 8
  %155 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %156 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = call i32 @umass_std_transform(%struct.umass_softc* %153, %union.ccb* %154, i32* %157, i32 8)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %198

160:                                              ; preds = %138
  %161 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %162 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @FORCE_SHORT_INQUIRY, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %160
  %168 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %169 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @INQUIRY, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %167
  %177 = load i32, i32* @SHORT_INQUIRY_LENGTH, align 4
  %178 = load %union.ccb*, %union.ccb** %6, align 8
  %179 = bitcast %union.ccb* %178 to %struct.ccb_scsiio*
  %180 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  br label %181

181:                                              ; preds = %176, %167, %160
  %182 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %183 = load i32, i32* @DIR_IN, align 4
  %184 = load %union.ccb*, %union.ccb** %6, align 8
  %185 = bitcast %union.ccb* %184 to %struct.ccb_scsiio*
  %186 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load %union.ccb*, %union.ccb** %6, align 8
  %189 = bitcast %union.ccb* %188 to %struct.ccb_scsiio*
  %190 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %union.ccb*, %union.ccb** %6, align 8
  %193 = bitcast %union.ccb* %192 to %struct.TYPE_10__*
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %union.ccb*, %union.ccb** %6, align 8
  %197 = call i32 @umass_command_start(%struct.umass_softc* %182, i32 %183, i32* %187, i32 %191, i32 %195, i32* @umass_cam_sense_cb, %union.ccb* %196)
  br label %198

198:                                              ; preds = %181, %138
  br label %213

199:                                              ; preds = %4
  %200 = load %union.ccb*, %union.ccb** %6, align 8
  %201 = bitcast %union.ccb* %200 to %struct.TYPE_10__*
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @xpt_freeze_devq(i32 %203, i32 1)
  %205 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %206 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %207 = or i32 %205, %206
  %208 = load %union.ccb*, %union.ccb** %6, align 8
  %209 = bitcast %union.ccb* %208 to %struct.TYPE_10__*
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 8
  %211 = load %union.ccb*, %union.ccb** %6, align 8
  %212 = call i32 @xpt_done(%union.ccb* %211)
  br label %213

213:                                              ; preds = %199, %198, %135
  ret void
}

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i8* @usb_get_serial(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*, i32) #1

declare dso_local i32 @umass_std_transform(%struct.umass_softc*, %union.ccb*, i32*, i32) #1

declare dso_local i32 @umass_command_start(%struct.umass_softc*, i32, i32*, i32, i32, i32*, %union.ccb*) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
