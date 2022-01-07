; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_DataOutPhase0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_DataOutPhase0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64, %struct.TYPE_6__*, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SRB_XFERPAD = common dso_local global i32 0, align 4
@PARITYERROR = common dso_local global i32 0, align 4
@PARITY_ERROR = common dso_local global i32 0, align 4
@SCSIXFERDONE = common dso_local global i32 0, align 4
@TRMREG_SCSI_FIFOCNT = common dso_local global i32 0, align 4
@WIDE_SYNC = common dso_local global i32 0, align 4
@TRMREG_SCSI_COUNTER = common dso_local global i32 0, align 4
@DO_CLRFIFO = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@SCSIXFERCNT_2_ZERO = common dso_local global i32 0, align 4
@TRMREG_DMA_STATUS = common dso_local global i32 0, align 4
@DMAXFERCOMP = common dso_local global i64 0, align 8
@STOPDMAXFER = common dso_local global i32 0, align 4
@TRMREG_DMA_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, i32*)* @trm_DataOutPhase0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_DataOutPhase0(i32 %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SRB_XFERPAD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %159, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PARITYERROR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @PARITY_ERROR, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @SCSIXFERDONE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @TRMREG_SCSI_FIFOCNT, align 4
  %43 = call i32 @trm_reg_read8(i32 %42)
  %44 = and i32 %43, 63
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @WIDE_SYNC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* @TRMREG_SCSI_COUNTER, align 4
  %57 = call i64 @trm_reg_read32(i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  %65 = load i32, i32* @DO_CLRFIFO, align 4
  %66 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %67 = call i32 @trm_reg_write16(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @SCSIXFERCNT_2_ZERO, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71, %68
  %77 = load i32, i32* @TRMREG_DMA_STATUS, align 4
  %78 = call i32 @trm_reg_read8(i32 %77)
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %86, %76
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @DMAXFERCOMP, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @TRMREG_DMA_STATUS, align 4
  %88 = call i32 @trm_reg_read8(i32 %87)
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %8, align 8
  br label %80

90:                                               ; preds = %80
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  br label %158

93:                                               ; preds = %71
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %157

99:                                               ; preds = %93
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %113
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %11, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %9, align 8
  br label %118

118:                                              ; preds = %153, %99
  %119 = load i64, i64* %9, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %119, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %118
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp sge i32 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %12, align 4
  %135 = sub nsw i32 %134, %133
  store i32 %135, i32* %12, align 4
  br label %150

136:                                              ; preds = %124
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  br label %156

150:                                              ; preds = %130
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 1
  store %struct.TYPE_6__* %152, %struct.TYPE_6__** %11, align 8
  br label %153

153:                                              ; preds = %150
  %154 = load i64, i64* %9, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %9, align 8
  br label %118

156:                                              ; preds = %136, %118
  br label %157

157:                                              ; preds = %156, %93
  br label %158

158:                                              ; preds = %157, %90
  br label %159

159:                                              ; preds = %158, %3
  %160 = load i32, i32* @STOPDMAXFER, align 4
  %161 = load i32, i32* @TRMREG_DMA_CONTROL, align 4
  %162 = call i32 @trm_reg_write8(i32 %160, i32 %161)
  ret void
}

declare dso_local i32 @trm_reg_read8(i32) #1

declare dso_local i64 @trm_reg_read32(i32) #1

declare dso_local i32 @trm_reg_write16(i32, i32) #1

declare dso_local i32 @trm_reg_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
