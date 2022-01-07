; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_path_inquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_path_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32, i32, i32 }
%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sim=%p ccb=%p\0A\00", align 1
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@PIM_UNMAPPED = common dso_local global i32 0, align 4
@vtscsi_bus_reset_disable = common dso_local global i64 0, align 8
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@VTSCSI_INITIATOR_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"VirtIO\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@SCSI_REV_SPC3 = common dso_local global i32 0, align 4
@XPORT_SAS = common dso_local global i32 0, align 4
@VTSCSI_MIN_SEGMENTS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.cam_sim*, %union.ccb*)* @vtscsi_cam_path_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_cam_path_inquiry(%struct.vtscsi_softc* %0, %struct.cam_sim* %1, %union.ccb* %2) #0 {
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca %struct.cam_sim*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_pathinq*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store %struct.cam_sim* %1, %struct.cam_sim** %5, align 8
  store %union.ccb* %2, %union.ccb** %6, align 8
  %9 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %union.ccb*, %union.ccb** %6, align 8
  %13 = bitcast %union.ccb* %12 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %13, %struct.ccb_pathinq** %8, align 8
  %14 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %15 = load i32, i32* @VTSCSI_TRACE, align 4
  %16 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %17 = load %union.ccb*, %union.ccb** %6, align 8
  %18 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %14, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.cam_sim* %16, %union.ccb* %17)
  %19 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %20 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @PI_TAG_ABLE, align 4
  %22 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %23 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %22, i32 0, i32 22
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %25 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %24, i32 0, i32 21
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @PIM_SEQSCAN, align 4
  %27 = load i32, i32* @PIM_UNMAPPED, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %30 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* @vtscsi_bus_reset_disable, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load i32, i32* @PIM_NOBUSRESET, align 4
  %35 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %36 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %3
  %40 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %41 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %40, i32 0, i32 20
  store i64 0, i64* %41, align 8
  %42 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %46 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %45, i32 0, i32 19
  store i32 %44, i32* %46, align 8
  %47 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %51 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %50, i32 0, i32 18
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @VTSCSI_INITIATOR_ID, align 4
  %53 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %54 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %53, i32 0, i32 17
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %56 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SIM_IDLEN, align 4
  %59 = call i32 @strlcpy(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %61 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %60, i32 0, i32 15
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @HBA_IDLEN, align 4
  %64 = call i32 @strlcpy(i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %66 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %65, i32 0, i32 14
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %69 = call i8* @cam_sim_name(%struct.cam_sim* %68)
  %70 = load i32, i32* @DEV_IDLEN, align 4
  %71 = call i32 @strlcpy(i32 %67, i8* %69, i32 %70)
  %72 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %73 = call i32 @cam_sim_unit(%struct.cam_sim* %72)
  %74 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %75 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %77 = call i32 @cam_sim_bus(%struct.cam_sim* %76)
  %78 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %79 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %78, i32 0, i32 12
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %81 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %80, i32 0, i32 2
  store i32 300000, i32* %81, align 8
  %82 = load i32, i32* @PROTO_SCSI, align 4
  %83 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %84 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @SCSI_REV_SPC3, align 4
  %86 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %87 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @XPORT_SAS, align 4
  %89 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %90 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %92 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %91, i32 0, i32 8
  store i64 0, i64* %92, align 8
  %93 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %94 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @VTSCSI_MIN_SEGMENTS, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %102 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @virtio_get_vendor(i32 %103)
  %105 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %106 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @virtio_get_device(i32 %107)
  %109 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %110 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @virtio_get_subvendor(i32 %111)
  %113 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %114 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @virtio_get_subdevice(i32 %115)
  %117 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %118 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @CAM_REQ_CMP, align 4
  %120 = load %union.ccb*, %union.ccb** %6, align 8
  %121 = bitcast %union.ccb* %120 to %struct.TYPE_2__*
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %union.ccb*, %union.ccb** %6, align 8
  %124 = call i32 @xpt_done(%union.ccb* %123)
  ret void
}

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @virtio_get_vendor(i32) #1

declare dso_local i32 @virtio_get_device(i32) #1

declare dso_local i32 @virtio_get_subvendor(i32) #1

declare dso_local i32 @virtio_get_subdevice(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
