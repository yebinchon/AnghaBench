; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_dma2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_dma2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.ccb_scsiio*, %struct.TYPE_10__* }
%struct.ccb_scsiio = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ISP_NOXFR = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@ISP_FROM_DEVICE = common dso_local global i32 0, align 4
@ISP_TO_DEVICE = common dso_local global i32 0, align 4
@XPT_CONT_TARGET_IO = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CMD_QUEUED = common dso_local global i64 0, align 8
@MUSHERR_NOQENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @dma2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma2(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %20, align 8
  store %struct.ccb_scsiio* %21, %struct.ccb_scsiio** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %97

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @ISP_NOXFR, align 4
  store i32 %32, i32* %12, align 4
  br label %80

33:                                               ; preds = %28
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CAM_DIR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @CAM_DIR_IN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ISP_FROM_DEVICE, align 4
  store i32 %43, i32* %12, align 4
  br label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @ISP_TO_DEVICE, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %48 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @XPT_CONT_TARGET_IO, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %55 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CAM_DIR_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @CAM_DIR_IN, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = xor i32 %53, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %46
  %66 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  store i32 %66, i32* %13, align 4
  br label %69

67:                                               ; preds = %46
  %68 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %75 = call %struct.TYPE_11__* @PISP_PCMD(%struct.ccb_scsiio* %74)
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @bus_dmamap_sync(i32 %73, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %69, %31
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %88 = call i32 @XS_XFRLEN(%struct.ccb_scsiio* %87)
  %89 = load i32, i32* %12, align 4
  %90 = call i64 @isp_send_cmd(%struct.TYPE_10__* %81, i32 %84, i32* %85, i32 %86, i32 %88, i32 %89, i32* null)
  %91 = load i64, i64* @CMD_QUEUED, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = load i32, i32* @MUSHERR_NOQENTRIES, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %24, %93, %80
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @PISP_PCMD(%struct.ccb_scsiio*) #1

declare dso_local i64 @isp_send_cmd(%struct.TYPE_10__*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @XS_XFRLEN(%struct.ccb_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
