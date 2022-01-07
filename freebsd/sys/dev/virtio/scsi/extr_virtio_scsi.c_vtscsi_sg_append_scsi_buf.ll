; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_sg_append_scsi_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_sg_append_scsi_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.sglist = type { i32 }
%struct.ccb_scsiio = type { i8*, i32, i32, %struct.ccb_hdr }
%struct.ccb_hdr = type { i32 }
%struct.bus_dma_segment = type { i32, i32 }
%struct.bio = type { i32 }

@CAM_DATA_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, %struct.sglist*, %struct.ccb_scsiio*)* @vtscsi_sg_append_scsi_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_sg_append_scsi_buf(%struct.vtscsi_softc* %0, %struct.sglist* %1, %struct.ccb_scsiio* %2) #0 {
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca %struct.sglist*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca %struct.ccb_hdr*, align 8
  %8 = alloca %struct.bus_dma_segment*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store %struct.sglist* %1, %struct.sglist** %5, align 8
  store %struct.ccb_scsiio* %2, %struct.ccb_scsiio** %6, align 8
  %11 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %12 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %11, i32 0, i32 3
  store %struct.ccb_hdr* %12, %struct.ccb_hdr** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %14 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CAM_DATA_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %111 [
    i32 128, label %18
    i32 131, label %27
    i32 130, label %38
    i32 129, label %72
    i32 132, label %104
  ]

18:                                               ; preds = %3
  %19 = load %struct.sglist*, %struct.sglist** %5, align 8
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %21 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %24 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sglist_append(%struct.sglist* %19, i8* %22, i32 %25)
  store i32 %26, i32* %10, align 4
  br label %113

27:                                               ; preds = %3
  %28 = load %struct.sglist*, %struct.sglist** %5, align 8
  %29 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %30 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = trunc i64 %32 to i32
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sglist_append_phys(%struct.sglist* %28, i32 %33, i32 %36)
  store i32 %37, i32* %10, align 4
  br label %113

38:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %42 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i1 [ false, %39 ], [ %47, %45 ]
  br i1 %49, label %50, label %71

50:                                               ; preds = %48
  %51 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %52 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = bitcast i8* %53 to %struct.bus_dma_segment*
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %54, i64 %56
  store %struct.bus_dma_segment* %57, %struct.bus_dma_segment** %8, align 8
  %58 = load %struct.sglist*, %struct.sglist** %5, align 8
  %59 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %8, align 8
  %60 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %8, align 8
  %65 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sglist_append(%struct.sglist* %58, i8* %63, i32 %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %50
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %39

71:                                               ; preds = %48
  br label %113

72:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %100, %72
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %76 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i1 [ false, %73 ], [ %81, %79 ]
  br i1 %83, label %84, label %103

84:                                               ; preds = %82
  %85 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %86 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = bitcast i8* %87 to %struct.bus_dma_segment*
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %88, i64 %90
  store %struct.bus_dma_segment* %91, %struct.bus_dma_segment** %8, align 8
  %92 = load %struct.sglist*, %struct.sglist** %5, align 8
  %93 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %8, align 8
  %94 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %8, align 8
  %97 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sglist_append_phys(%struct.sglist* %92, i32 %95, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %84
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %73

103:                                              ; preds = %82
  br label %113

104:                                              ; preds = %3
  %105 = load %struct.sglist*, %struct.sglist** %5, align 8
  %106 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %107 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = bitcast i8* %108 to %struct.bio*
  %110 = call i32 @sglist_append_bio(%struct.sglist* %105, %struct.bio* %109)
  store i32 %110, i32* %10, align 4
  br label %113

111:                                              ; preds = %3
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %111, %104, %103, %71, %27, %18
  %114 = load i32, i32* %10, align 4
  ret i32 %114
}

declare dso_local i32 @sglist_append(%struct.sglist*, i8*, i32) #1

declare dso_local i32 @sglist_append_phys(%struct.sglist*, i32, i32) #1

declare dso_local i32 @sglist_append_bio(%struct.sglist*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
