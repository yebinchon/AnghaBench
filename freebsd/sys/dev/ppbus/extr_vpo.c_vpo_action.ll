; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpo.c_vpo_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpo.c_vpo_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i8*, i32, i32, i64 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.vpo_data = type { i32, i32, i32 }
%struct.ccb_scsiio = type { i32 }
%struct.ccb_calc_geometry = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i8* }

@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@VP0_INITIATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Iomega\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_PPB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @vpo_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpo_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.vpo_data*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca %struct.ccb_calc_geometry*, align 8
  %8 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %10 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.vpo_data*
  store %struct.vpo_data* %12, %struct.vpo_data** %5, align 8
  %13 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %14 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  %17 = call i32 @ppb_assert_locked(i32 %16)
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %170 [
    i32 128, label %22
    i32 131, label %45
    i32 129, label %71
    i32 130, label %109
  ]

22:                                               ; preds = %2
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %24, %struct.ccb_scsiio** %6, align 8
  %25 = load %union.ccb*, %union.ccb** %4, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CAM_CDB_PHYS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %34 = load %union.ccb*, %union.ccb** %4, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  %37 = load %union.ccb*, %union.ccb** %4, align 8
  %38 = call i32 @xpt_done(%union.ccb* %37)
  br label %177

39:                                               ; preds = %22
  %40 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %41 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %42 = call i32 @vpo_intr(%struct.vpo_data* %40, %struct.ccb_scsiio* %41)
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = call i32 @xpt_done(%union.ccb* %43)
  br label %177

45:                                               ; preds = %2
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = bitcast %union.ccb* %46 to %struct.ccb_calc_geometry*
  store %struct.ccb_calc_geometry* %47, %struct.ccb_calc_geometry** %7, align 8
  %48 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %49 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %48, i32 0, i32 2
  store i32 64, i32* %49, align 4
  %50 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %51 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %50, i32 0, i32 3
  store i32 32, i32* %51, align 4
  %52 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %53 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %56 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %59 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = sdiv i32 %54, %61
  %63 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %7, align 8
  %64 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i8*, i8** @CAM_REQ_CMP, align 8
  %66 = load %union.ccb*, %union.ccb** %4, align 8
  %67 = bitcast %union.ccb* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  %69 = load %union.ccb*, %union.ccb** %4, align 8
  %70 = call i32 @xpt_done(%union.ccb* %69)
  br label %177

71:                                               ; preds = %2
  %72 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %73 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %78 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %77, i32 0, i32 1
  %79 = call i32 @imm_reset_bus(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %83 = load %union.ccb*, %union.ccb** %4, align 8
  %84 = bitcast %union.ccb* %83 to %struct.TYPE_4__*
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  %86 = load %union.ccb*, %union.ccb** %4, align 8
  %87 = call i32 @xpt_done(%union.ccb* %86)
  br label %178

88:                                               ; preds = %76
  br label %102

89:                                               ; preds = %71
  %90 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %91 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %90, i32 0, i32 1
  %92 = call i32 @vpoio_reset_bus(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %96 = load %union.ccb*, %union.ccb** %4, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_4__*
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  %99 = load %union.ccb*, %union.ccb** %4, align 8
  %100 = call i32 @xpt_done(%union.ccb* %99)
  br label %178

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i8*, i8** @CAM_REQ_CMP, align 8
  %104 = load %union.ccb*, %union.ccb** %4, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i8* %103, i8** %106, align 8
  %107 = load %union.ccb*, %union.ccb** %4, align 8
  %108 = call i32 @xpt_done(%union.ccb* %107)
  br label %177

109:                                              ; preds = %2
  %110 = load %union.ccb*, %union.ccb** %4, align 8
  %111 = bitcast %union.ccb* %110 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %111, %struct.ccb_pathinq** %8, align 8
  %112 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %113 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %115 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %114, i32 0, i32 16
  store i32 0, i32* %115, align 8
  %116 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %117 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %116, i32 0, i32 15
  store i32 0, i32* %117, align 4
  %118 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %119 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %118, i32 0, i32 14
  store i32 0, i32* %119, align 8
  %120 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %121 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %120, i32 0, i32 13
  store i32 0, i32* %121, align 4
  %122 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %123 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %122, i32 0, i32 1
  store i32 7, i32* %123, align 4
  %124 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %125 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %124, i32 0, i32 12
  store i32 0, i32* %125, align 8
  %126 = load i32, i32* @VP0_INITIATOR, align 4
  %127 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %128 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %127, i32 0, i32 11
  store i32 %126, i32* %128, align 4
  %129 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %130 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %133 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %132, i32 0, i32 10
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %135 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %134, i32 0, i32 2
  store i32 93, i32* %135, align 8
  %136 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %137 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SIM_IDLEN, align 4
  %140 = call i32 @strlcpy(i32 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %139)
  %141 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %142 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @HBA_IDLEN, align 4
  %145 = call i32 @strlcpy(i32 %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %147 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %150 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* @DEV_IDLEN, align 4
  %153 = call i32 @strlcpy(i32 %148, i8* %151, i32 %152)
  %154 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %155 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %158 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @XPORT_PPB, align 4
  %160 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %161 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %163 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %162, i32 0, i32 4
  store i32 0, i32* %163, align 8
  %164 = load i8*, i8** @CAM_REQ_CMP, align 8
  %165 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %166 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i8* %164, i8** %167, align 8
  %168 = load %union.ccb*, %union.ccb** %4, align 8
  %169 = call i32 @xpt_done(%union.ccb* %168)
  br label %177

170:                                              ; preds = %2
  %171 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %172 = load %union.ccb*, %union.ccb** %4, align 8
  %173 = bitcast %union.ccb* %172 to %struct.TYPE_4__*
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  store i8* %171, i8** %174, align 8
  %175 = load %union.ccb*, %union.ccb** %4, align 8
  %176 = call i32 @xpt_done(%union.ccb* %175)
  br label %177

177:                                              ; preds = %170, %109, %102, %45, %39, %32
  br label %178

178:                                              ; preds = %177, %94, %81
  ret void
}

declare dso_local i32 @ppb_assert_locked(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @vpo_intr(%struct.vpo_data*, %struct.ccb_scsiio*) #1

declare dso_local i32 @imm_reset_bus(i32*) #1

declare dso_local i32 @vpoio_reset_bus(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
