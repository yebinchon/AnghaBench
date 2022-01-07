; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32*, i32, i32*, i32, i32*, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@mpt_scsi_reply_handler = common dso_local global i32 0, align 4
@MPT_HANDLER_REPLY = common dso_local global i32 0, align 4
@scsi_io_handler_id = common dso_local global i32 0, align 4
@mpt_scsi_tmf_reply_handler = common dso_local global i32 0, align 4
@scsi_tmf_handler_id = common dso_local global i32 0, align 4
@mpt_fc_els_reply_handler = common dso_local global i32 0, align 4
@fc_els_handler_id = common dso_local global i32 0, align 4
@mpt_scsi_tgt_reply_handler = common dso_local global i32 0, align 4
@mpt_sata_pass_reply_handler = common dso_local global i32 0, align 4
@sata_pass_handler_id = common dso_local global i32 0, align 4
@REQ_STATE_ALLOCATED = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*)* @mpt_cam_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_cam_detach(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %4 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %5 = call i32 @MPT_LOCK(%struct.mpt_softc* %4)
  %6 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %6, i32 0, i32 7
  store i64 0, i64* %7, align 8
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %9 = call i32 @mpt_terminate_recovery_thread(%struct.mpt_softc* %8)
  %10 = load i32, i32* @mpt_scsi_reply_handler, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %13 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %14 = load i32, i32* @scsi_io_handler_id, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mpt_deregister_handler(%struct.mpt_softc* %12, i32 %13, i32 %16, i32 %14)
  %18 = load i32, i32* @mpt_scsi_tmf_reply_handler, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %21 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %22 = load i32, i32* @scsi_tmf_handler_id, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mpt_deregister_handler(%struct.mpt_softc* %20, i32 %21, i32 %24, i32 %22)
  %26 = load i32, i32* @mpt_fc_els_reply_handler, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %29 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %30 = load i32, i32* @fc_els_handler_id, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mpt_deregister_handler(%struct.mpt_softc* %28, i32 %29, i32 %32, i32 %30)
  %34 = load i32, i32* @mpt_scsi_tgt_reply_handler, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %37 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mpt_deregister_handler(%struct.mpt_softc* %36, i32 %37, i32 %42, i32 %40)
  %44 = load i32, i32* @mpt_sata_pass_reply_handler, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %47 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %48 = load i32, i32* @sata_pass_handler_id, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mpt_deregister_handler(%struct.mpt_softc* %46, i32 %47, i32 %50, i32 %48)
  %52 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %53 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %52, i32 0, i32 5
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %1
  %57 = load i32, i32* @REQ_STATE_ALLOCATED, align 4
  %58 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %59 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %58, i32 0, i32 5
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %63 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %64 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %63, i32 0, i32 5
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @mpt_free_request(%struct.mpt_softc* %62, %struct.TYPE_5__* %65)
  %67 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %68 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %67, i32 0, i32 5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %68, align 8
  br label %69

69:                                               ; preds = %56, %1
  %70 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %71 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %76 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @M_DEVBUF, align 4
  %79 = call i32 @free(i32* %77, i32 %78)
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %81 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %80, i32 0, i32 4
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %74, %69
  %83 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %84 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %89 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @xpt_free_path(i32 %90)
  %92 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %93 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @cam_sim_path(i32* %94)
  %96 = call i32 @xpt_bus_deregister(i32 %95)
  %97 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %98 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @cam_sim_free(i32* %99, i32 %100)
  %102 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %103 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %102, i32 0, i32 2
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %87, %82
  %105 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %106 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %111 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @xpt_free_path(i32 %112)
  %114 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %115 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @cam_sim_path(i32* %116)
  %118 = call i32 @xpt_bus_deregister(i32 %117)
  %119 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %120 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i32 @cam_sim_free(i32* %121, i32 %122)
  %124 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %125 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %109, %104
  %127 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %128 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %127)
  ret void
}

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_terminate_recovery_thread(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_deregister_handler(%struct.mpt_softc*, i32, i32, i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_5__*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
