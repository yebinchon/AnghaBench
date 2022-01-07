; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_StartSCSI.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_StartSCSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64*, i32, i32, i32, i32, i8*, %union.ccb* }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32 }

@TRMREG_SCSI_HOSTID = common dso_local global i32 0, align 4
@TRMREG_SCSI_TARGETID = common dso_local global i32 0, align 4
@TRMREG_SCSI_SYNC = common dso_local global i32 0, align 4
@TRMREG_SCSI_OFFSET = common dso_local global i32 0, align 4
@PH_BUS_FREE = common dso_local global i32 0, align 4
@DO_CLRFIFO = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@REQUEST_SENSE = common dso_local global i32 0, align 4
@AUTO_REQSENSE = common dso_local global i32 0, align 4
@WIDE_NEGO_ENABLE = common dso_local global i32 0, align 4
@WIDE_NEGO_DONE = common dso_local global i32 0, align 4
@SYNC_NEGO_ENABLE = common dso_local global i32 0, align 4
@SYNC_NEGO_DONE = common dso_local global i32 0, align 4
@SCMD_SEL_ATNSTOP = common dso_local global i32 0, align 4
@SRB_MSGOUT = common dso_local global i8* null, align 8
@TRMREG_SCSI_FIFO = common dso_local global i32 0, align 4
@SCMD_SEL_ATN = common dso_local global i32 0, align 4
@SRB_START_ = common dso_local global i8* null, align 8
@EN_TAG_QUEUING = common dso_local global i32 0, align 4
@MSG_SIMPLE_QTAG = common dso_local global i32 0, align 4
@SCMD_SEL_ATN3 = common dso_local global i32 0, align 4
@TRMREG_SCSI_STATUS = common dso_local global i32 0, align 4
@SCSIINTERRUPT = common dso_local global i32 0, align 4
@SRB_READY = common dso_local global i8* null, align 8
@SCSI_NOP1 = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@DO_HWRESELECT = common dso_local global i32 0, align 4
@TRMREG_SCSI_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*)* @trm_StartSCSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trm_StartSCSI(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %union.ccb*, align 8
  %14 = alloca %struct.ccb_scsiio*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %17 = load %union.ccb*, %union.ccb** %16, align 8
  store %union.ccb* %17, %union.ccb** %13, align 8
  %18 = load %union.ccb*, %union.ccb** %13, align 8
  %19 = bitcast %union.ccb* %18 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %19, %struct.ccb_scsiio** %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TRMREG_SCSI_HOSTID, align 4
  %24 = call i32 @trm_reg_write8(i32 %22, i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TRMREG_SCSI_TARGETID, align 4
  %29 = call i32 @trm_reg_write8(i32 %27, i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TRMREG_SCSI_SYNC, align 4
  %34 = call i32 @trm_reg_write8(i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TRMREG_SCSI_OFFSET, align 4
  %39 = call i32 @trm_reg_write8(i32 %37, i32 %38)
  %40 = load i32, i32* @PH_BUS_FREE, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @DO_CLRFIFO, align 4
  %44 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %45 = call i32 @trm_reg_write16(i32 %43, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INQUIRY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %3
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @REQUEST_SENSE, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AUTO_REQSENSE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %129

72:                                               ; preds = %65, %56, %3
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %79, %72
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %86
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %93, %79
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 7
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @INQUIRY, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %106, %100
  %115 = load i32, i32* @SCMD_SEL_ATNSTOP, align 4
  store i32 %115, i32* %8, align 4
  %116 = load i8*, i8** @SRB_MSGOUT, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  br label %155

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %93, %86
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %121, 191
  %123 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %124 = call i32 @trm_reg_write8(i32 %122, i32 %123)
  %125 = load i32, i32* @SCMD_SEL_ATN, align 4
  store i32 %125, i32* %8, align 4
  %126 = load i8*, i8** @SRB_START_, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  br label %154

129:                                              ; preds = %65
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %132 = call i32 @trm_reg_write8(i32 %130, i32 %131)
  %133 = load i32, i32* @SCMD_SEL_ATN, align 4
  store i32 %133, i32* %8, align 4
  %134 = load i8*, i8** @SRB_START_, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @EN_TAG_QUEUING, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %129
  %144 = load i32, i32* @MSG_SIMPLE_QTAG, align 4
  %145 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %146 = call i32 @trm_reg_write8(i32 %144, i32 %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %151 = call i32 @trm_reg_write8(i32 %149, i32 %150)
  %152 = load i32, i32* @SCMD_SEL_ATN3, align 4
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %143, %129
  br label %154

154:                                              ; preds = %153, %120
  br label %155

155:                                              ; preds = %154, %114
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @AUTO_REQSENSE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %155
  %163 = load i32, i32* @REQUEST_SENSE, align 4
  %164 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %165 = call i32 @trm_reg_write8(i32 %163, i32 %164)
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 5
  %170 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %171 = call i32 @trm_reg_write8(i32 %169, i32 %170)
  %172 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %173 = call i32 @trm_reg_write8(i32 0, i32 %172)
  %174 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %175 = call i32 @trm_reg_write8(i32 0, i32 %174)
  %176 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %177 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %180 = call i32 @trm_reg_write8(i32 %178, i32 %179)
  %181 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %182 = call i32 @trm_reg_write8(i32 0, i32 %181)
  br label %205

183:                                              ; preds = %155
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = bitcast i64* %186 to i32*
  store i32* %187, i32** %12, align 8
  store i32 0, i32* %9, align 4
  br label %188

188:                                              ; preds = %201, %183
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %188
  %195 = load i32*, i32** %12, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %12, align 8
  %197 = load i32, i32* %195, align 4
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %200 = call i32 @trm_reg_write8(i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %188

204:                                              ; preds = %188
  br label %205

205:                                              ; preds = %204, %162
  %206 = load i32, i32* @TRMREG_SCSI_STATUS, align 4
  %207 = call i32 @trm_reg_read16(i32 %206)
  %208 = load i32, i32* @SCSIINTERRUPT, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load i8*, i8** @SRB_READY, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 5
  store i8* %212, i8** %214, align 8
  store i32 1, i32* %7, align 4
  br label %233

215:                                              ; preds = %205
  %216 = load i32, i32* @SCSI_NOP1, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 4
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  store %struct.TYPE_8__* %219, %struct.TYPE_8__** %221, align 8
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 5
  store %struct.TYPE_7__* %222, %struct.TYPE_7__** %224, align 8
  store i32 0, i32* %7, align 4
  %225 = load i32, i32* @DO_DATALATCH, align 4
  %226 = load i32, i32* @DO_HWRESELECT, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %229 = call i32 @trm_reg_write16(i32 %227, i32 %228)
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %232 = call i32 @trm_reg_write8(i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %215, %211
  %234 = load i32, i32* %7, align 4
  ret i32 %234
}

declare dso_local i32 @trm_reg_write8(i32, i32) #1

declare dso_local i32 @trm_reg_write16(i32, i32) #1

declare dso_local i32 @trm_reg_read16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
