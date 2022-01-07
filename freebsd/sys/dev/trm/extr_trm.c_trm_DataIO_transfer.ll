; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_DataIO_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_DataIO_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c" SG->address=%8x \0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" SG->length=%8x \0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" pDCB->SyncPeriod=%x \0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" pSRB->pSRBSGL=%8x \0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" pSRB->SRBSGPhyAddr=%8x \0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" pSRB->SRBSGIndex=%d \0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c" pSRB->SRBSGCount=%d \0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c" pSRB->SRBTotalXferLength=%d \0A\00", align 1
@SRB_DATA_XFER = common dso_local global i32 0, align 4
@TRMREG_DMA_XHIGHADDR = common dso_local global i32 0, align 4
@TRMREG_DMA_XLOWADDR = common dso_local global i32 0, align 4
@TRMREG_DMA_XCNT = common dso_local global i32 0, align 4
@TRMREG_SCSI_COUNTER = common dso_local global i32 0, align 4
@TRMREG_DMA_COMMAND = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i64 0, align 8
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@XFERDATAOUT = common dso_local global i64 0, align 8
@SCMD_DMA_OUT = common dso_local global i32 0, align 4
@SCMD_DMA_IN = common dso_local global i32 0, align 4
@TRMREG_SCSI_COMMAND = common dso_local global i32 0, align 4
@H_OVER_UNDER_RUN = common dso_local global i32 0, align 4
@OVER_RUN = common dso_local global i32 0, align 4
@WIDE_SYNC = common dso_local global i32 0, align 4
@TRMREG_SCSI_FIFO = common dso_local global i32 0, align 4
@SRB_XFERPAD = common dso_local global i32 0, align 4
@SCMD_FIFO_OUT = common dso_local global i32 0, align 4
@SCMD_FIFO_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, i64)* @trm_DataIO_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_DataIO_transfer(i32 %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %169

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %110

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = ptrtoint %struct.TYPE_5__* %43 to i32
  %45 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @SRB_DATA_XFER, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @TRMREG_DMA_XHIGHADDR, align 4
  %66 = call i32 @trm_reg_write32(i32 0, i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 3
  %74 = add i32 %69, %73
  %75 = load i32, i32* @TRMREG_DMA_XLOWADDR, align 4
  %76 = call i32 @trm_reg_write32(i32 %74, i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub i32 %79, %82
  %84 = shl i32 %83, 3
  %85 = load i32, i32* @TRMREG_DMA_XCNT, align 4
  %86 = call i32 @trm_reg_write32(i32 %84, i32 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TRMREG_SCSI_COUNTER, align 4
  %91 = call i32 @trm_reg_write32(i32 %89, i32 %90)
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* @TRMREG_DMA_COMMAND, align 4
  %94 = call i32 @trm_reg_write16(i64 %92, i32 %93)
  %95 = load i64, i64* @DO_DATALATCH, align 8
  %96 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %97 = call i32 @trm_reg_write16(i64 %95, i32 %96)
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @XFERDATAOUT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %24
  %102 = load i32, i32* @SCMD_DMA_OUT, align 4
  br label %105

103:                                              ; preds = %24
  %104 = load i32, i32* @SCMD_DMA_IN, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %109 = call i32 @trm_reg_write8(i32 %107, i32 %108)
  br label %168

110:                                              ; preds = %19
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load i32, i32* @H_OVER_UNDER_RUN, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @OVER_RUN, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %115, %110
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @WIDE_SYNC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i32, i32* @TRMREG_SCSI_COUNTER, align 4
  %133 = call i32 @trm_reg_write32(i32 2, i32 %132)
  br label %137

134:                                              ; preds = %124
  %135 = load i32, i32* @TRMREG_SCSI_COUNTER, align 4
  %136 = call i32 @trm_reg_write32(i32 1, i32 %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @XFERDATAOUT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %143 = call i32 @trm_reg_write16(i64 0, i32 %142)
  br label %147

144:                                              ; preds = %137
  %145 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %146 = call i32 @trm_reg_read16(i32 %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* @SRB_XFERPAD, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i64, i64* @DO_DATALATCH, align 8
  %154 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %155 = call i32 @trm_reg_write16(i64 %153, i32 %154)
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @XFERDATAOUT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %147
  %160 = load i32, i32* @SCMD_FIFO_OUT, align 4
  br label %163

161:                                              ; preds = %147
  %162 = load i32, i32* @SCMD_FIFO_IN, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %167 = call i32 @trm_reg_write8(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %105
  br label %169

169:                                              ; preds = %168, %3
  ret void
}

declare dso_local i32 @TRM_DPRINTF(i8*, i32) #1

declare dso_local i32 @trm_reg_write32(i32, i32) #1

declare dso_local i32 @trm_reg_write16(i64, i32) #1

declare dso_local i32 @trm_reg_write8(i32, i32) #1

declare dso_local i32 @trm_reg_read16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
