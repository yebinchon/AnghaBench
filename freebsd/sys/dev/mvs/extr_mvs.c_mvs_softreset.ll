; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_softreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mvs_channel = type { i32, i64 }

@MVS_EDMA_OFF = common dso_local global i32 0, align 4
@SATA_SATAICTL = common dso_local global i32 0, align 4
@SATA_SATAICTL_PMPTX_SHIFT = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@CAM_ATA_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@ATA_S_DRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @mvs_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_softreset(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mvs_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.mvs_channel* @device_get_softc(i32 %10)
  store %struct.mvs_channel* %11, %struct.mvs_channel** %5, align 8
  %12 = load %union.ccb*, %union.ccb** %4, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MVS_EDMA_OFF, align 4
  %19 = call i32 @mvs_set_edma_mode(i32 %17, i32 %18)
  %20 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %21 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SATA_SATAICTL, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SATA_SATAICTL_PMPTX_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = call i32 @ATA_OUTB(i32 %22, i32 %23, i32 %26)
  %28 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %29 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATA_CONTROL, align 4
  %32 = load i32, i32* @ATA_A_RESET, align 4
  %33 = call i32 @ATA_OUTB(i32 %30, i32 %31, i32 %32)
  %34 = call i32 @DELAY(i32 10000)
  %35 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %36 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ATA_CONTROL, align 4
  %39 = call i32 @ATA_OUTB(i32 %37, i32 %38, i32 0)
  %40 = load i32, i32* @CAM_STATUS_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load %union.ccb*, %union.ccb** %4, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ATA_S_BUSY, align 4
  %49 = load %union.ccb*, %union.ccb** %4, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mvs_wait(i32 %47, i32 0, i32 %48, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %2
  %56 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  store i32 1, i32* %8, align 4
  br label %91

62:                                               ; preds = %2
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @mvs_getstatus(i32 %63, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ATA_S_ERROR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i32, i32* @CAM_ATA_STATUS_ERROR, align 4
  %71 = load %union.ccb*, %union.ccb** %4, align 8
  %72 = bitcast %union.ccb* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %83

76:                                               ; preds = %62
  %77 = load i32, i32* @CAM_REQ_CMP, align 4
  %78 = load %union.ccb*, %union.ccb** %4, align 8
  %79 = bitcast %union.ccb* %78 to %struct.TYPE_2__*
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @ATA_S_DRQ, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %8, align 4
  br label %90

89:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %88
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* %3, align 4
  %93 = load %union.ccb*, %union.ccb** %4, align 8
  %94 = call i32 @mvs_tfd_read(i32 %92, %union.ccb* %93)
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %91
  %98 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %99 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 15
  br i1 %104, label %105, label %134

105:                                              ; preds = %102
  %106 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %107 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SATA_SATAICTL, align 4
  %110 = load i32, i32* @SATA_SATAICTL_PMPTX_SHIFT, align 4
  %111 = shl i32 15, %110
  %112 = call i32 @ATA_OUTB(i32 %108, i32 %109, i32 %111)
  %113 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %114 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ATA_CONTROL, align 4
  %117 = load i32, i32* @ATA_A_RESET, align 4
  %118 = call i32 @ATA_OUTB(i32 %115, i32 %116, i32 %117)
  %119 = call i32 @DELAY(i32 10000)
  %120 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %121 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ATA_CONTROL, align 4
  %124 = call i32 @ATA_OUTB(i32 %122, i32 %123, i32 0)
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @ATA_S_BUSY, align 4
  %127 = load i32, i32* @ATA_S_DRQ, align 4
  %128 = or i32 %126, %127
  %129 = load %union.ccb*, %union.ccb** %4, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_2__*
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @mvs_wait(i32 %125, i32 0, i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %105, %102, %97, %91
  %135 = load %union.ccb*, %union.ccb** %4, align 8
  %136 = call i32 @xpt_done(%union.ccb* %135)
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @mvs_set_edma_mode(i32, i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mvs_wait(i32, i32, i32, i32) #1

declare dso_local i32 @mvs_getstatus(i32, i32) #1

declare dso_local i32 @mvs_tfd_read(i32, %union.ccb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
