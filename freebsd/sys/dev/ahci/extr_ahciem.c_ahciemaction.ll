; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahciemaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahciemaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.ahci_enclosure = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ahciemaction func_code=%x\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"AHCI\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_SATA = common dso_local global i32 0, align 4
@XPORT_VERSION_UNSPECIFIED = common dso_local global i32 0, align 4
@PROTO_ATA = common dso_local global i32 0, align 4
@PROTO_VERSION_UNSPECIFIED = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @ahciemaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahciemaction(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahci_enclosure*, align 8
  %8 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %union.ccb*, %union.ccb** %4, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @CAM_DEBUG(i32 %12, i32 %13, i8* %19)
  %21 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %22 = call %struct.ahci_enclosure* @cam_sim_softc(%struct.cam_sim* %21)
  store %struct.ahci_enclosure* %22, %struct.ahci_enclosure** %7, align 8
  %23 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %7, align 8
  %24 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %union.ccb*, %union.ccb** %4, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %131 [
    i32 131, label %30
    i32 129, label %39
    i32 128, label %39
    i32 130, label %46
  ]

30:                                               ; preds = %2
  %31 = load %union.ccb*, %union.ccb** %4, align 8
  %32 = call i32 @ahci_check_ids(%union.ccb* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %139

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load %union.ccb*, %union.ccb** %4, align 8
  %38 = call i32 @ahci_em_begin_transaction(i32 %36, %union.ccb* %37)
  br label %139

39:                                               ; preds = %2, %2
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ahci_em_reset(i32 %40)
  %42 = load i8*, i8** @CAM_REQ_CMP, align 8
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  br label %136

46:                                               ; preds = %2
  %47 = load %union.ccb*, %union.ccb** %4, align 8
  %48 = bitcast %union.ccb* %47 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %48, %struct.ccb_pathinq** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @device_get_parent(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %52 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @PI_SDTR_ABLE, align 4
  %54 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %55 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %54, i32 0, i32 23
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %57 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %56, i32 0, i32 22
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* @PIM_SEQSCAN, align 4
  %59 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %60 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %59, i32 0, i32 21
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %62 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %61, i32 0, i32 20
  store i32 0, i32* %62, align 4
  %63 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %64 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %63, i32 0, i32 19
  store i32 0, i32* %64, align 8
  %65 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %66 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %65, i32 0, i32 18
  store i32 0, i32* %66, align 4
  %67 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %68 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %67, i32 0, i32 17
  store i32 0, i32* %68, align 8
  %69 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %70 = call i32 @cam_sim_bus(%struct.cam_sim* %69)
  %71 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %72 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %71, i32 0, i32 16
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %74 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %73, i32 0, i32 1
  store i32 150000, i32* %74, align 4
  %75 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %76 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %75, i32 0, i32 15
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SIM_IDLEN, align 4
  %79 = call i32 @strlcpy(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %81 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HBA_IDLEN, align 4
  %84 = call i32 @strlcpy(i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %86 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %89 = call i8* @cam_sim_name(%struct.cam_sim* %88)
  %90 = load i32, i32* @DEV_IDLEN, align 4
  %91 = call i32 @strlcpy(i32 %87, i8* %89, i32 %90)
  %92 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %93 = call i32 @cam_sim_unit(%struct.cam_sim* %92)
  %94 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %95 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @XPORT_SATA, align 4
  %97 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %98 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %97, i32 0, i32 11
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @XPORT_VERSION_UNSPECIFIED, align 4
  %100 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %101 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @PROTO_ATA, align 4
  %103 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %104 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @PROTO_VERSION_UNSPECIFIED, align 4
  %106 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %107 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @MAXPHYS, align 4
  %109 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %110 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @pci_get_vendor(i32 %111)
  %113 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %114 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @pci_get_device(i32 %115)
  %117 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %118 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @pci_get_subvendor(i32 %119)
  %121 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %122 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @pci_get_subdevice(i32 %123)
  %125 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %126 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load i8*, i8** @CAM_REQ_CMP, align 8
  %128 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %129 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  br label %136

131:                                              ; preds = %2
  %132 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %133 = load %union.ccb*, %union.ccb** %4, align 8
  %134 = bitcast %union.ccb* %133 to %struct.TYPE_4__*
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i8* %132, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %46, %39
  %137 = load %union.ccb*, %union.ccb** %4, align 8
  %138 = call i32 @xpt_done(%union.ccb* %137)
  br label %139

139:                                              ; preds = %136, %35, %34
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local %struct.ahci_enclosure* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @ahci_check_ids(%union.ccb*) #1

declare dso_local i32 @ahci_em_begin_transaction(i32, %union.ccb*) #1

declare dso_local i32 @ahci_em_reset(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
