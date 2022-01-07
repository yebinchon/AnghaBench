; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_initAdapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_initAdapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@trm_eepromBuf = common dso_local global %struct.TYPE_5__* null, align 8
@SEL_TIMEOUT = common dso_local global i32 0, align 4
@TRMREG_SCSI_TIMEOUT = common dso_local global i32 0, align 4
@TRMREG_DMA_INTEN = common dso_local global i32 0, align 4
@TRMREG_SCSI_INTEN = common dso_local global i32 0, align 4
@DO_RSTMODULE = common dso_local global i64 0, align 8
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@HCC_AUTOTERM = common dso_local global i32 0, align 4
@HCC_PARITY = common dso_local global i32 0, align 4
@TRMREG_GEN_STATUS = common dso_local global i32 0, align 4
@WIDESCSI = common dso_local global i32 0, align 4
@HCC_WIDE_CARD = common dso_local global i32 0, align 4
@NAC_POWERON_SCSI_RESET = common dso_local global i32 0, align 4
@HCC_SCSI_RESET = common dso_local global i32 0, align 4
@PHASELATCH = common dso_local global i32 0, align 4
@INITIATOR = common dso_local global i32 0, align 4
@BLOCKRST = common dso_local global i32 0, align 4
@PARITYCHECK = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONFIG0 = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONFIG1 = common dso_local global i32 0, align 4
@TRMREG_SCSI_HOSTID = common dso_local global i32 0, align 4
@TRMREG_SCSI_OFFSET = common dso_local global i32 0, align 4
@TRMREG_GEN_CONTROL = common dso_local global i32 0, align 4
@TRMREG_DMA_CONFIG = common dso_local global i32 0, align 4
@DMA_ENHANCE = common dso_local global i32 0, align 4
@TRMREG_SCSI_INTSTATUS = common dso_local global i32 0, align 4
@EN_SCSIINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @trm_initAdapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trm_initAdapter(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @trm_eepromBuf, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %9
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load i32, i32* @SEL_TIMEOUT, align 4
  %12 = load i32, i32* @TRMREG_SCSI_TIMEOUT, align 4
  %13 = call i32 @trm_reg_write8(i32 %11, i32 %12)
  %14 = load i32, i32* @TRMREG_DMA_INTEN, align 4
  %15 = call i32 @trm_reg_write8(i32 0, i32 %14)
  %16 = load i32, i32* @TRMREG_SCSI_INTEN, align 4
  %17 = call i32 @trm_reg_write8(i32 0, i32 %16)
  %18 = load i64, i64* @DO_RSTMODULE, align 8
  %19 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %20 = call i32 @trm_reg_write16(i64 %18, i32 %19)
  %21 = load i32, i32* @HCC_AUTOTERM, align 4
  %22 = load i32, i32* @HCC_PARITY, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @TRMREG_GEN_STATUS, align 4
  %27 = call i32 @trm_reg_read8(i32 %26)
  %28 = load i32, i32* @WIDESCSI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @HCC_WIDE_CARD, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NAC_POWERON_SCSI_RESET, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @HCC_SCSI_RESET, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HCC_PARITY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* @PHASELATCH, align 4
  %59 = load i32, i32* @INITIATOR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @BLOCKRST, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PARITYCHECK, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %7, align 4
  br label %71

65:                                               ; preds = %50
  %66 = load i32, i32* @PHASELATCH, align 4
  %67 = load i32, i32* @INITIATOR, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @BLOCKRST, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %65, %57
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @TRMREG_SCSI_CONFIG0, align 4
  %74 = call i32 @trm_reg_write8(i32 %72, i32 %73)
  %75 = load i32, i32* @TRMREG_SCSI_CONFIG1, align 4
  %76 = call i32 @trm_reg_write8(i32 19, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @TRMREG_SCSI_HOSTID, align 4
  %82 = call i32 @trm_reg_write8(i32 %80, i32 %81)
  %83 = load i32, i32* @TRMREG_SCSI_OFFSET, align 4
  %84 = call i32 @trm_reg_write8(i32 0, i32 %83)
  %85 = load i32, i32* @TRMREG_GEN_CONTROL, align 4
  %86 = call i32 @trm_reg_read16(i32 %85)
  %87 = and i32 %86, 127
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i32, i32* @TRMREG_GEN_CONTROL, align 4
  %91 = call i32 @trm_reg_write16(i64 %89, i32 %90)
  %92 = load i32, i32* @TRMREG_DMA_CONFIG, align 4
  %93 = call i32 @trm_reg_read16(i32 %92)
  %94 = load i32, i32* @DMA_ENHANCE, align 4
  %95 = or i32 %93, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* @TRMREG_DMA_CONFIG, align 4
  %99 = call i32 @trm_reg_write16(i64 %97, i32 %98)
  %100 = load i32, i32* @TRMREG_SCSI_INTSTATUS, align 4
  %101 = call i32 @trm_reg_read8(i32 %100)
  %102 = load i32, i32* @TRMREG_SCSI_INTEN, align 4
  %103 = call i32 @trm_reg_write8(i32 127, i32 %102)
  %104 = load i32, i32* @EN_SCSIINTR, align 4
  %105 = load i32, i32* @TRMREG_DMA_INTEN, align 4
  %106 = call i32 @trm_reg_write8(i32 %104, i32 %105)
  ret i32 0
}

declare dso_local i32 @trm_reg_write8(i32, i32) #1

declare dso_local i32 @trm_reg_write16(i64, i32) #1

declare dso_local i32 @trm_reg_read8(i32) #1

declare dso_local i32 @trm_reg_read16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
