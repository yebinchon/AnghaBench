; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sim.c_nvme_sim_nvmeio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sim.c_nvme_sim_nvmeio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_nvmeio }
%struct.ccb_nvmeio = type { i32, %struct.TYPE_3__, i32, i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nvme_request = type { i32 }
%struct.nvme_controller = type { i32 }
%struct.bio = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@CAM_DATA_MASK = common dso_local global i32 0, align 4
@CAM_DATA_BIO = common dso_local global i32 0, align 4
@nvme_sim_nvmeio_done = common dso_local global i32 0, align 4
@CAM_DATA_SG = common dso_local global i32 0, align 4
@CAM_RESRC_UNAVAIL = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@XPT_NVME_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @nvme_sim_nvmeio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_sim_nvmeio(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_nvmeio*, align 8
  %6 = alloca %struct.nvme_request*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_controller*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %10 = load %union.ccb*, %union.ccb** %4, align 8
  %11 = bitcast %union.ccb* %10 to %struct.ccb_nvmeio*
  store %struct.ccb_nvmeio* %11, %struct.ccb_nvmeio** %5, align 8
  %12 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %13 = call %struct.nvme_controller* @sim2ctrlr(%struct.cam_sim* %12)
  store %struct.nvme_controller* %13, %struct.nvme_controller** %9, align 8
  %14 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %5, align 8
  %15 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %5, align 8
  %18 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %5, align 8
  %21 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CAM_DATA_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CAM_DATA_BIO, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.bio*
  %31 = load i32, i32* @nvme_sim_nvmeio_done, align 4
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = call %struct.nvme_request* @nvme_allocate_request_bio(%struct.bio* %30, i32 %31, %union.ccb* %32)
  store %struct.nvme_request* %33, %struct.nvme_request** %6, align 8
  br label %63

34:                                               ; preds = %2
  %35 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %5, align 8
  %36 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CAM_DATA_SG, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @CAM_DATA_SG, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %union.ccb*, %union.ccb** %4, align 8
  %45 = load i32, i32* @nvme_sim_nvmeio_done, align 4
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = call %struct.nvme_request* @nvme_allocate_request_ccb(%union.ccb* %44, i32 %45, %union.ccb* %46)
  store %struct.nvme_request* %47, %struct.nvme_request** %6, align 8
  br label %62

48:                                               ; preds = %34
  %49 = load i8*, i8** %7, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @nvme_sim_nvmeio_done, align 4
  %53 = load %union.ccb*, %union.ccb** %4, align 8
  %54 = call %struct.nvme_request* @nvme_allocate_request_null(i32 %52, %union.ccb* %53)
  store %struct.nvme_request* %54, %struct.nvme_request** %6, align 8
  br label %61

55:                                               ; preds = %48
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @nvme_sim_nvmeio_done, align 4
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = call %struct.nvme_request* @nvme_allocate_request_vaddr(i8* %56, i32 %57, i32 %58, %union.ccb* %59)
  store %struct.nvme_request* %60, %struct.nvme_request** %6, align 8
  br label %61

61:                                               ; preds = %55, %51
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %28
  %64 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %65 = icmp eq %struct.nvme_request* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* @CAM_RESRC_UNAVAIL, align 4
  %68 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %5, align 8
  %69 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %union.ccb*, %union.ccb** %4, align 8
  %72 = call i32 @xpt_done(%union.ccb* %71)
  br label %100

73:                                               ; preds = %63
  %74 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %75 = load %union.ccb*, %union.ccb** %4, align 8
  %76 = bitcast %union.ccb* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 8
  %80 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %81 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %80, i32 0, i32 0
  %82 = load %union.ccb*, %union.ccb** %4, align 8
  %83 = bitcast %union.ccb* %82 to %struct.ccb_nvmeio*
  %84 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %83, i32 0, i32 0
  %85 = call i32 @memcpy(i32* %81, i32* %84, i32 4)
  %86 = load %union.ccb*, %union.ccb** %4, align 8
  %87 = bitcast %union.ccb* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @XPT_NVME_IO, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %73
  %93 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %94 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %95 = call i32 @nvme_ctrlr_submit_io_request(%struct.nvme_controller* %93, %struct.nvme_request* %94)
  br label %100

96:                                               ; preds = %73
  %97 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %98 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %99 = call i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller* %97, %struct.nvme_request* %98)
  br label %100

100:                                              ; preds = %66, %96, %92
  ret void
}

declare dso_local %struct.nvme_controller* @sim2ctrlr(%struct.cam_sim*) #1

declare dso_local %struct.nvme_request* @nvme_allocate_request_bio(%struct.bio*, i32, %union.ccb*) #1

declare dso_local %struct.nvme_request* @nvme_allocate_request_ccb(%union.ccb*, i32, %union.ccb*) #1

declare dso_local %struct.nvme_request* @nvme_allocate_request_null(i32, %union.ccb*) #1

declare dso_local %struct.nvme_request* @nvme_allocate_request_vaddr(i8*, i32, i32, %union.ccb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nvme_ctrlr_submit_io_request(%struct.nvme_controller*, %struct.nvme_request*) #1

declare dso_local i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller*, %struct.nvme_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
