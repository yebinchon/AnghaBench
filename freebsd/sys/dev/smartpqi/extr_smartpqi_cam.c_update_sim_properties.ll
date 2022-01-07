; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_update_sim_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_update_sim_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.pqisrc_softstate = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@PIM_UNMAPPED = common dso_local global i32 0, align 4
@PQI_MAX_MULTILUN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Microsemi\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@SCSI_REV_SPC4 = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %struct.ccb_pathinq*)* @update_sim_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sim_properties(%struct.cam_sim* %0, %struct.ccb_pathinq* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %struct.ccb_pathinq*, align 8
  %5 = alloca %struct.pqisrc_softstate*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %struct.ccb_pathinq* %1, %struct.ccb_pathinq** %4, align 8
  %6 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %7 = call i64 @cam_sim_softc(%struct.cam_sim* %6)
  %8 = inttoptr i64 %7 to %struct.pqisrc_softstate*
  store %struct.pqisrc_softstate* %8, %struct.pqisrc_softstate** %5, align 8
  %9 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %11 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @PI_SDTR_ABLE, align 4
  %13 = load i32, i32* @PI_TAG_ABLE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PI_WIDE_16, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %18 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %20 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %19, i32 0, i32 19
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @PIM_NOBUSRESET, align 4
  %22 = load i32, i32* @PIM_UNMAPPED, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %25 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %27 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %26, i32 0, i32 18
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @PQI_MAX_MULTILUN, align 4
  %29 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %30 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 17
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %32 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %31, i32 0, i32 3
  store i32 1088, i32* %32, align 4
  %33 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %5, align 8
  %34 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %41 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %43 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %42, i32 0, i32 5
  store i32 255, i32* %43, align 4
  %44 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %45 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SIM_IDLEN, align 4
  %48 = call i32 @strncpy(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %50 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %49, i32 0, i32 15
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HBA_IDLEN, align 4
  %53 = call i32 @strncpy(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %55 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %58 = call i8* @cam_sim_name(%struct.cam_sim* %57)
  %59 = load i32, i32* @DEV_IDLEN, align 4
  %60 = call i32 @strncpy(i32 %56, i8* %58, i32 %59)
  %61 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %62 = call i32 @cam_sim_unit(%struct.cam_sim* %61)
  %63 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %64 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %66 = call i32 @cam_sim_bus(%struct.cam_sim* %65)
  %67 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %68 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %67, i32 0, i32 12
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %70 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %69, i32 0, i32 6
  store i32 1200000, i32* %70, align 8
  %71 = load i32, i32* @PROTO_SCSI, align 4
  %72 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %73 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @SCSI_REV_SPC4, align 4
  %75 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %76 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @XPORT_SPI, align 4
  %78 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %79 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %81 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %80, i32 0, i32 7
  store i32 2, i32* %81, align 4
  %82 = load i32, i32* @CAM_REQ_CMP, align 4
  %83 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %4, align 8
  %84 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
