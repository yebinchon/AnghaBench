; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_Disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_Disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32**, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i32*, i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i64 }

@.str = private unnamed_addr constant [32 x i8] c"trm_Disconnect...............\0A \00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c" Exception Disconnect DCB=NULL..............\0A \00", align 1
@DO_CLRFIFO = common dso_local global i32 0, align 4
@DO_HWRESELECT = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c":pDCB->pActiveSRB= %8x \0A \00", align 1
@PH_BUS_FREE = common dso_local global i32 0, align 4
@SRB_UNEXPECT_RESEL = common dso_local global i32 0, align 4
@SRB_ABORT_SENT = common dso_local global i32 0, align 4
@SRB_START_ = common dso_local global i32 0, align 4
@SRB_MSGOUT = common dso_local global i32 0, align 4
@SRB_DISCONNECT = common dso_local global i32 0, align 4
@SRB_COMPLETED = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@SRB_READY = common dso_local global i32 0, align 4
@SCSI_STAT_SEL_TIMEOUT = common dso_local global i32 0, align 4
@SRB_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @trm_Disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_Disconnect(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %11 = call i32 (i8*, ...) @TRM_DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %3, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @TRM_DPRINTF(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 400, i32* %7, align 4
  br label %19

19:                                               ; preds = %23, %17
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @DELAY(i32 1)
  br label %19

25:                                               ; preds = %19
  %26 = load i32, i32* @DO_CLRFIFO, align 4
  %27 = load i32, i32* @DO_HWRESELECT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %30 = call i32 @trm_reg_write16(i32 %28, i32 %29)
  br label %205

31:                                               ; preds = %1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %4, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = ptrtoint %struct.TYPE_15__* %49 to i64
  %51 = call i32 (i8*, ...) @TRM_DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %53, align 8
  %54 = load i32, i32* @PH_BUS_FREE, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @DO_CLRFIFO, align 4
  %58 = load i32, i32* @DO_HWRESELECT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %61 = call i32 @trm_reg_write16(i32 %59, i32 %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SRB_UNEXPECT_RESEL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %31
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %72 = call i32 @trm_DoWaitingSRB(%struct.TYPE_17__* %71)
  br label %204

73:                                               ; preds = %31
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SRB_ABORT_SENT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %73
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %108, %80
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %5, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %103, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %106, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %107, %struct.TYPE_15__** %4, align 8
  br label %108

108:                                              ; preds = %95
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %91

111:                                              ; preds = %91
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %115 = call i32 @trm_DoWaitingSRB(%struct.TYPE_17__* %114)
  br label %203

116:                                              ; preds = %73
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SRB_START_, align 4
  %121 = load i32, i32* @SRB_MSGOUT, align 4
  %122 = add nsw i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %116
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SRB_DISCONNECT, align 4
  %130 = load i32, i32* @SRB_COMPLETED, align 4
  %131 = add nsw i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %172, label %134

134:                                              ; preds = %125, %116
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32**, i32*** %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = getelementptr inbounds i32*, i32** %137, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %167, label %145

145:                                              ; preds = %134
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %145
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @INQUIRY, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %152
  %161 = load i32, i32* @SRB_READY, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = call i32 @trm_RewaitSRB(%struct.TYPE_16__* %164, %struct.TYPE_15__* %165)
  br label %171

167:                                              ; preds = %152, %145, %134
  %168 = load i32, i32* @SCSI_STAT_SEL_TIMEOUT, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  br label %190

171:                                              ; preds = %160
  br label %202

172:                                              ; preds = %125
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @SRB_DISCONNECT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %181 = call i32 @trm_DoWaitingSRB(%struct.TYPE_17__* %180)
  br label %201

182:                                              ; preds = %172
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @SRB_COMPLETED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %167
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %192, align 8
  %193 = load i32, i32* @SRB_FREE, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = call i32 @trm_SRBdone(%struct.TYPE_17__* %196, %struct.TYPE_16__* %197, %struct.TYPE_15__* %198)
  br label %200

200:                                              ; preds = %190, %182
  br label %201

201:                                              ; preds = %200, %179
  br label %202

202:                                              ; preds = %201, %171
  br label %203

203:                                              ; preds = %202, %111
  br label %204

204:                                              ; preds = %203, %68
  br label %205

205:                                              ; preds = %204, %25
  ret void
}

declare dso_local i32 @TRM_DPRINTF(i8*, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @trm_reg_write16(i32, i32) #1

declare dso_local i32 @trm_DoWaitingSRB(%struct.TYPE_17__*) #1

declare dso_local i32 @trm_RewaitSRB(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @trm_SRBdone(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
