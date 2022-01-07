; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_MsgOutPhase1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_MsgOutPhase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64*, i64*, i32 }

@DO_CLRFIFO = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@SRB_MSGOUT = common dso_local global i32 0, align 4
@TRMREG_SCSI_FIFO = common dso_local global i32 0, align 4
@ABORT_DEV_ = common dso_local global i32 0, align 4
@MSG_ABORT = common dso_local global i64 0, align 8
@SRB_ABORT_SENT = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@REQUEST_SENSE = common dso_local global i64 0, align 8
@AUTO_REQSENSE = common dso_local global i32 0, align 4
@SYNC_NEGO_ENABLE = common dso_local global i32 0, align 4
@SRB_DO_WIDE_NEGO = common dso_local global i32 0, align 4
@WIDE_NEGO_ENABLE = common dso_local global i32 0, align 4
@SYNC_NEGO_DONE = common dso_local global i32 0, align 4
@EN_ATN_STOP = common dso_local global i32 0, align 4
@MSG_EXTENDED = common dso_local global i32 0, align 4
@SRB_DO_SYNC_NEGO = common dso_local global i32 0, align 4
@WIDE_NEGO_DONE = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@SCMD_FIFO_OUT = common dso_local global i32 0, align 4
@TRMREG_SCSI_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_6__*, i64*)* @trm_MsgOutPhase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_MsgOutPhase1(%struct.TYPE_8__* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i32, i32* @DO_CLRFIFO, align 4
  %13 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %14 = call i32 @trm_reg_write16(i32 %12, i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %11, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SRB_MSGOUT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %110, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = bitcast i64* %33 to i32*
  store i32* %34, i32** %10, align 8
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %46, %30
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %43 = call i32 @trm_reg_write8(i32 %41, i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %10, align 8
  br label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %35

49:                                               ; preds = %35
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ABORT_DEV_, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MSG_ABORT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @SRB_ABORT_SENT, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %58, %49
  br label %109

71:                                               ; preds = %24
  %72 = load i64, i64* @MSG_ABORT, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @INQUIRY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %96, label %81

81:                                               ; preds = %71
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @REQUEST_SENSE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %81
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AUTO_REQSENSE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %89, %81, %71
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %111

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %89
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %108 = call i32 @trm_reg_write8(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %70
  br label %210

110:                                              ; preds = %3
  br label %111

111:                                              ; preds = %110, %103
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %154, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %118
  %126 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %127 = load i32, i32* @EN_ATN_STOP, align 4
  %128 = or i32 %126, %127
  %129 = xor i32 %128, -1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 191
  %138 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %139 = call i32 @trm_reg_write8(i32 %137, i32 %138)
  %140 = load i32, i32* @MSG_EXTENDED, align 4
  %141 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %142 = call i32 @trm_reg_write8(i32 %140, i32 %141)
  %143 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %144 = call i32 @trm_reg_write8(i32 2, i32 %143)
  %145 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %146 = call i32 @trm_reg_write8(i32 3, i32 %145)
  %147 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %148 = call i32 @trm_reg_write8(i32 1, i32 %147)
  %149 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %209

154:                                              ; preds = %118, %111
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @SRB_DO_SYNC_NEGO, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %208, label %161

161:                                              ; preds = %154
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %208

168:                                              ; preds = %161
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %168
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 191
  %180 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %181 = call i32 @trm_reg_write8(i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %175, %168
  %183 = load i32, i32* @MSG_EXTENDED, align 4
  %184 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %185 = call i32 @trm_reg_write8(i32 %183, i32 %184)
  %186 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %187 = call i32 @trm_reg_write8(i32 3, i32 %186)
  %188 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %189 = call i32 @trm_reg_write8(i32 1, i32 %188)
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %194 = call i32 @trm_reg_write8(i32 %192, i32 %193)
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 1
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 31, i32 15
  %201 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %202 = call i32 @trm_reg_write8(i32 %200, i32 %201)
  %203 = load i32, i32* @SRB_DO_SYNC_NEGO, align 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %182, %161, %154
  br label %209

209:                                              ; preds = %208, %125
  br label %210

210:                                              ; preds = %209, %109
  %211 = load i32, i32* @DO_DATALATCH, align 4
  %212 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %213 = call i32 @trm_reg_write16(i32 %211, i32 %212)
  %214 = load i32, i32* @SCMD_FIFO_OUT, align 4
  %215 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %216 = call i32 @trm_reg_write8(i32 %214, i32 %215)
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
