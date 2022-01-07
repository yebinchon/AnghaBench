; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i64, i32* }

@.str = private unnamed_addr constant [11 x i8] c"trm: RESET\00", align 1
@TRMREG_DMA_INTEN = common dso_local global i32 0, align 4
@TRMREG_SCSI_INTEN = common dso_local global i32 0, align 4
@EN_SCSIINTR = common dso_local global i32 0, align 4
@CLRXFIFO = common dso_local global i32 0, align 4
@TRMREG_DMA_CONTROL = common dso_local global i32 0, align 4
@DO_CLRFIFO = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@AC_BUS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @trm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_reset(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @splcam()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @TRMREG_DMA_INTEN, align 4
  %8 = call i32 @trm_reg_write8(i32 0, i32 %7)
  %9 = load i32, i32* @TRMREG_SCSI_INTEN, align 4
  %10 = call i32 @trm_reg_write8(i32 0, i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = call i32 @trm_ResetSCSIBus(%struct.TYPE_7__* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %18, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 500
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @DELAY(i32 1000)
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %13

21:                                               ; preds = %13
  %22 = load i32, i32* @TRMREG_SCSI_INTEN, align 4
  %23 = call i32 @trm_reg_write8(i32 127, i32 %22)
  %24 = load i32, i32* @EN_SCSIINTR, align 4
  %25 = load i32, i32* @TRMREG_DMA_INTEN, align 4
  %26 = call i32 @trm_reg_write8(i32 %24, i32 %25)
  %27 = load i32, i32* @CLRXFIFO, align 4
  %28 = load i32, i32* @TRMREG_DMA_CONTROL, align 4
  %29 = call i32 @trm_reg_write8(i32 %27, i32 %28)
  %30 = load i32, i32* @DO_CLRFIFO, align 4
  %31 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %32 = call i32 @trm_reg_write16(i32 %30, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = call i32 @trm_ResetDevParam(%struct.TYPE_7__* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = call i32 @trm_DoingSRB_Done(%struct.TYPE_7__* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = call i32 @trm_DoWaitingSRB(%struct.TYPE_7__* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %21
  %48 = load i32, i32* @AC_BUS_RESET, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @xpt_async(i32 %48, i32* %51, i32* null)
  br label %53

53:                                               ; preds = %47, %21
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @splx(i32 %54)
  ret void
}

declare dso_local i32 @TRM_DPRINTF(i8*) #1

declare dso_local i32 @splcam(...) #1

declare dso_local i32 @trm_reg_write8(i32, i32) #1

declare dso_local i32 @trm_ResetSCSIBus(%struct.TYPE_7__*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @trm_reg_write16(i32, i32) #1

declare dso_local i32 @trm_ResetDevParam(%struct.TYPE_7__*) #1

declare dso_local i32 @trm_DoingSRB_Done(%struct.TYPE_7__*) #1

declare dso_local i32 @trm_DoWaitingSRB(%struct.TYPE_7__*) #1

declare dso_local i32 @xpt_async(i32, i32*, i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
