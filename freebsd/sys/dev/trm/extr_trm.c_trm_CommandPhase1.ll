; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_CommandPhase1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_CommandPhase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, %union.ccb* }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32 }

@DO_CLRATN = common dso_local global i32 0, align 4
@DO_CLRFIFO = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@AUTO_REQSENSE = common dso_local global i32 0, align 4
@TRMREG_SCSI_FIFO = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SRB_COMMAND = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@SCMD_FIFO_OUT = common dso_local global i32 0, align 4
@TRMREG_SCSI_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_6__*, i64*)* @trm_CommandPhase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_CommandPhase1(%struct.TYPE_8__* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.ccb*, align 8
  %12 = alloca %struct.ccb_scsiio*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load %union.ccb*, %union.ccb** %14, align 8
  store %union.ccb* %15, %union.ccb** %11, align 8
  %16 = load %union.ccb*, %union.ccb** %11, align 8
  %17 = bitcast %union.ccb* %16 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %17, %struct.ccb_scsiio** %12, align 8
  %18 = load i32, i32* @DO_CLRATN, align 4
  %19 = load i32, i32* @DO_CLRFIFO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %22 = call i32 @trm_reg_write16(i32 %20, i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AUTO_REQSENSE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %48, %29
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %45 = call i32 @trm_reg_write8(i32 %43, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %8, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %37

51:                                               ; preds = %37
  br label %76

52:                                               ; preds = %3
  %53 = load i32, i32* @REQUEST_SENSE, align 4
  %54 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %55 = call i32 @trm_reg_write8(i32 %53, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %7, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 5
  %63 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %64 = call i32 @trm_reg_write8(i32 %62, i32 %63)
  %65 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %66 = call i32 @trm_reg_write8(i32 0, i32 %65)
  %67 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %68 = call i32 @trm_reg_write8(i32 0, i32 %67)
  %69 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %70 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %73 = call i32 @trm_reg_write8(i32 %71, i32 %72)
  %74 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %75 = call i32 @trm_reg_write8(i32 0, i32 %74)
  br label %76

76:                                               ; preds = %52, %51
  %77 = load i32, i32* @SRB_COMMAND, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @DO_DATALATCH, align 4
  %81 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %82 = call i32 @trm_reg_write16(i32 %80, i32 %81)
  %83 = load i32, i32* @SCMD_FIFO_OUT, align 4
  %84 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %85 = call i32 @trm_reg_write8(i32 %83, i32 %84)
  ret void
}

declare dso_local i32 @trm_reg_write16(i32, i32) #1

declare dso_local i32 @trm_reg_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
