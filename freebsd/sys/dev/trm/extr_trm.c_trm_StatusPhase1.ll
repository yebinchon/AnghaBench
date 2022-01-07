; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_StatusPhase1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_StatusPhase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TRMREG_DMA_COMMAND = common dso_local global i32 0, align 4
@TRMREG_SCSI_FIFOCNT = common dso_local global i32 0, align 4
@DO_CLRFIFO = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@TRMREG_DMA_FIFOCNT = common dso_local global i32 0, align 4
@CLRXFIFO = common dso_local global i32 0, align 4
@TRMREG_DMA_CONTROL = common dso_local global i32 0, align 4
@SRB_STATUS = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@SCMD_COMP = common dso_local global i32 0, align 4
@TRMREG_SCSI_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32*)* @trm_StatusPhase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_StatusPhase1(i32 %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @TRMREG_DMA_COMMAND, align 4
  %8 = call i32 @trm_reg_read16(i32 %7)
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load i32, i32* @TRMREG_SCSI_FIFOCNT, align 4
  %13 = call i32 @trm_reg_read8(i32 %12)
  %14 = and i32 %13, 64
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @DO_CLRFIFO, align 4
  %18 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %19 = call i32 @trm_reg_write16(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* @TRMREG_DMA_FIFOCNT, align 4
  %22 = call i32 @trm_reg_read16(i32 %21)
  %23 = and i32 %22, 32768
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @CLRXFIFO, align 4
  %27 = load i32, i32* @TRMREG_DMA_CONTROL, align 4
  %28 = call i32 @trm_reg_write8(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  br label %49

30:                                               ; preds = %3
  %31 = load i32, i32* @TRMREG_DMA_FIFOCNT, align 4
  %32 = call i32 @trm_reg_read16(i32 %31)
  %33 = and i32 %32, 32768
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @CLRXFIFO, align 4
  %37 = load i32, i32* @TRMREG_DMA_CONTROL, align 4
  %38 = call i32 @trm_reg_write8(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* @TRMREG_SCSI_FIFOCNT, align 4
  %41 = call i32 @trm_reg_read8(i32 %40)
  %42 = and i32 %41, 64
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @DO_CLRFIFO, align 4
  %46 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %47 = call i32 @trm_reg_write16(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* @SRB_STATUS, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @DO_DATALATCH, align 4
  %54 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %55 = call i32 @trm_reg_write16(i32 %53, i32 %54)
  %56 = load i32, i32* @SCMD_COMP, align 4
  %57 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %58 = call i32 @trm_reg_write8(i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @trm_reg_read16(i32) #1

declare dso_local i32 @trm_reg_read8(i32) #1

declare dso_local i32 @trm_reg_write16(i32, i32) #1

declare dso_local i32 @trm_reg_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
