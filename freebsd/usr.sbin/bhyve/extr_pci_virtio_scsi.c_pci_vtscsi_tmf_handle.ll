; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_tmf_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_tmf_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtscsi_softc = type { i32, i32 }
%struct.pci_vtscsi_ctrl_tmf = type { i32, i32, i64, i32 }
%union.ctl_io = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.sbuf = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CTL_IO_TASK = common dso_local global i32 0, align 4
@CTL_TAG_SIMPLE = common dso_local global i32 0, align 4
@CTL_TASK_ABORT_TASK = common dso_local global i32 0, align 4
@CTL_TASK_ABORT_TASK_SET = common dso_local global i32 0, align 4
@CTL_TASK_CLEAR_ACA = common dso_local global i32 0, align 4
@CTL_TASK_CLEAR_TASK_SET = common dso_local global i32 0, align 4
@CTL_TASK_I_T_NEXUS_RESET = common dso_local global i32 0, align 4
@CTL_TASK_LUN_RESET = common dso_local global i32 0, align 4
@CTL_TASK_QUERY_TASK = common dso_local global i32 0, align 4
@CTL_TASK_QUERY_TASK_SET = common dso_local global i32 0, align 4
@pci_vtscsi_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"pci_virtio_scsi: %s\00", align 1
@CTL_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CTL_IO: err=%d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_vtscsi_softc*, %struct.pci_vtscsi_ctrl_tmf*)* @pci_vtscsi_tmf_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vtscsi_tmf_handle(%struct.pci_vtscsi_softc* %0, %struct.pci_vtscsi_ctrl_tmf* %1) #0 {
  %3 = alloca %struct.pci_vtscsi_softc*, align 8
  %4 = alloca %struct.pci_vtscsi_ctrl_tmf*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sbuf*, align 8
  store %struct.pci_vtscsi_softc* %0, %struct.pci_vtscsi_softc** %3, align 8
  store %struct.pci_vtscsi_ctrl_tmf* %1, %struct.pci_vtscsi_ctrl_tmf** %4, align 8
  %8 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %union.ctl_io* @ctl_scsi_alloc_io(i32 %10)
  store %union.ctl_io* %11, %union.ctl_io** %5, align 8
  %12 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %13 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %12)
  %14 = load i32, i32* @CTL_IO_TASK, align 4
  %15 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %16 = bitcast %union.ctl_io* %15 to %struct.TYPE_5__*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.pci_vtscsi_ctrl_tmf*, %struct.pci_vtscsi_ctrl_tmf** %4, align 8
  %26 = getelementptr inbounds %struct.pci_vtscsi_ctrl_tmf, %struct.pci_vtscsi_ctrl_tmf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_vtscsi_get_lun(i32 %27)
  %29 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %30 = bitcast %union.ctl_io* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %34 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %35 = bitcast %union.ctl_io* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 8
  %37 = load %struct.pci_vtscsi_ctrl_tmf*, %struct.pci_vtscsi_ctrl_tmf** %4, align 8
  %38 = getelementptr inbounds %struct.pci_vtscsi_ctrl_tmf, %struct.pci_vtscsi_ctrl_tmf* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %41 = bitcast %union.ctl_io* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i64 %39, i64* %42, align 8
  %43 = load %struct.pci_vtscsi_ctrl_tmf*, %struct.pci_vtscsi_ctrl_tmf** %4, align 8
  %44 = getelementptr inbounds %struct.pci_vtscsi_ctrl_tmf, %struct.pci_vtscsi_ctrl_tmf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %86 [
    i32 135, label %46
    i32 134, label %51
    i32 133, label %56
    i32 132, label %61
    i32 131, label %66
    i32 130, label %71
    i32 129, label %76
    i32 128, label %81
  ]

46:                                               ; preds = %2
  %47 = load i32, i32* @CTL_TASK_ABORT_TASK, align 4
  %48 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %49 = bitcast %union.ctl_io* %48 to %struct.TYPE_6__*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  br label %86

51:                                               ; preds = %2
  %52 = load i32, i32* @CTL_TASK_ABORT_TASK_SET, align 4
  %53 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %54 = bitcast %union.ctl_io* %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  br label %86

56:                                               ; preds = %2
  %57 = load i32, i32* @CTL_TASK_CLEAR_ACA, align 4
  %58 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %59 = bitcast %union.ctl_io* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  br label %86

61:                                               ; preds = %2
  %62 = load i32, i32* @CTL_TASK_CLEAR_TASK_SET, align 4
  %63 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %64 = bitcast %union.ctl_io* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  br label %86

66:                                               ; preds = %2
  %67 = load i32, i32* @CTL_TASK_I_T_NEXUS_RESET, align 4
  %68 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %69 = bitcast %union.ctl_io* %68 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %86

71:                                               ; preds = %2
  %72 = load i32, i32* @CTL_TASK_LUN_RESET, align 4
  %73 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %74 = bitcast %union.ctl_io* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %86

76:                                               ; preds = %2
  %77 = load i32, i32* @CTL_TASK_QUERY_TASK, align 4
  %78 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %79 = bitcast %union.ctl_io* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  br label %86

81:                                               ; preds = %2
  %82 = load i32, i32* @CTL_TASK_QUERY_TASK_SET, align 4
  %83 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %84 = bitcast %union.ctl_io* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %2, %81, %76, %71, %66, %61, %56, %51, %46
  %87 = load i64, i64* @pci_vtscsi_debug, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %90, %struct.sbuf** %7, align 8
  %91 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %92 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %93 = call i32 @ctl_io_sbuf(%union.ctl_io* %91, %struct.sbuf* %92)
  %94 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %95 = call i32 @sbuf_finish(%struct.sbuf* %94)
  %96 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %97 = call i32 @sbuf_data(%struct.sbuf* %96)
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @DPRINTF(i8* %99)
  %101 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %102 = call i32 @sbuf_delete(%struct.sbuf* %101)
  br label %103

103:                                              ; preds = %89, %86
  %104 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %3, align 8
  %105 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CTL_IO, align 4
  %108 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %109 = call i32 @ioctl(i32 %106, i32 %107, %union.ctl_io* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %103
  %113 = load i32, i32* @errno, align 4
  %114 = load i32, i32* @errno, align 4
  %115 = call i32 @strerror(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 @WPRINTF(i8* %117)
  br label %119

119:                                              ; preds = %112, %103
  %120 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %121 = bitcast %union.ctl_io* %120 to %struct.TYPE_6__*
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.pci_vtscsi_ctrl_tmf*, %struct.pci_vtscsi_ctrl_tmf** %4, align 8
  %125 = getelementptr inbounds %struct.pci_vtscsi_ctrl_tmf, %struct.pci_vtscsi_ctrl_tmf* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %127 = call i32 @ctl_scsi_free_io(%union.ctl_io* %126)
  ret i32 1
}

declare dso_local %union.ctl_io* @ctl_scsi_alloc_io(i32) #1

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

declare dso_local i32 @pci_vtscsi_get_lun(i32) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @ctl_io_sbuf(%union.ctl_io*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @ioctl(i32, i32, %union.ctl_io*) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ctl_scsi_free_io(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
