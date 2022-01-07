; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_complete_mptmfi_passthru.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_complete_mptmfi_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32* }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_6__*, i32, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.mrsas_header }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.mrsas_header = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"MFI_CMD_INVALID command.\0A\00", align 1
@MR_DCMD_LD_MAP_GET_INFO = common dso_local global i32 0, align 4
@MFI_STAT_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"map sync failed, status=%x\0A\00", align 1
@MR_DCMD_CTRL_EVENT_GET_INFO = common dso_local global i32 0, align 4
@MR_DCMD_CTRL_EVENT_GET = common dso_local global i32 0, align 4
@MR_DCMD_SYSTEM_PD_MAP_GET_INFO = common dso_local global i32 0, align 4
@MFI_STAT_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Jbod map sync failed, status=%x\0A\00", align 1
@MR_DCMD_CTRL_EVENT_WAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unknown command completed! [0x%X]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_complete_mptmfi_passthru(%struct.mrsas_softc* %0, %struct.mrsas_mfi_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca %struct.mrsas_mfi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mrsas_header*, align 8
  %8 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store %struct.mrsas_mfi_cmd* %1, %struct.mrsas_mfi_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store %struct.mrsas_header* %12, %struct.mrsas_header** %7, align 8
  %13 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.mrsas_header, %struct.mrsas_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.mrsas_header*, %struct.mrsas_header** %7, align 8
  %30 = getelementptr inbounds %struct.mrsas_header, %struct.mrsas_header* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %217 [
    i32 132, label %32
    i32 130, label %37
    i32 131, label %37
    i32 129, label %49
    i32 128, label %49
    i32 133, label %49
    i32 134, label %213
  ]

32:                                               ; preds = %28
  %33 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %34 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %225

37:                                               ; preds = %28, %28
  %38 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %46 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %47 = call i32 @mrsas_wakeup(%struct.mrsas_softc* %45, %struct.mrsas_mfi_cmd* %46)
  br label %225

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %28, %28, %28, %48
  %50 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MR_DCMD_LD_MAP_GET_INFO, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %119

58:                                               ; preds = %49
  %59 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %119

69:                                               ; preds = %58
  %70 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %71 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %73 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %72, i32 0, i32 2
  %74 = call i32 @mtx_lock(i32* %73)
  %75 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %76 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %75, i32 0, i32 8
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %69
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @MFI_STAT_NOT_FOUND, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %85 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %95

89:                                               ; preds = %79
  %90 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %91 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %90)
  %92 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %93 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %92, i32 0, i32 2
  %94 = call i32 @mtx_unlock(i32* %93)
  br label %225

95:                                               ; preds = %83
  br label %101

96:                                               ; preds = %69
  %97 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %98 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %95
  %102 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %103 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %102)
  %104 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %105 = call i32 @MR_ValidateMapInfo(%struct.mrsas_softc* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %109 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  br label %113

110:                                              ; preds = %101
  %111 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %112 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %115 = call i32 @mrsas_sync_map_info(%struct.mrsas_softc* %114)
  %116 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %117 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %116, i32 0, i32 2
  %118 = call i32 @mtx_unlock(i32* %117)
  br label %225

119:                                              ; preds = %58, %49
  %120 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %121 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MR_DCMD_CTRL_EVENT_GET_INFO, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %119
  %129 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MR_DCMD_CTRL_EVENT_GET, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %128, %119
  %138 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %139 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %138, i32 0, i32 6
  store i32 0, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %128
  %141 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %142 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @MR_DCMD_SYSTEM_PD_MAP_GET_INFO, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %195

149:                                              ; preds = %140
  %150 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %151 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %195

160:                                              ; preds = %149
  %161 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %162 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %161, i32 0, i32 2
  %163 = call i32 @mtx_lock(i32* %162)
  %164 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %165 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %164, i32 0, i32 5
  store i32* null, i32** %165, align 8
  %166 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %167 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %166)
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @MFI_STAT_OK, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %160
  %172 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %173 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  %176 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %177 = call i32 @megasas_sync_pd_seq_num(%struct.mrsas_softc* %176, i32 1)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %181 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %180, i32 0, i32 3
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %171
  br label %191

183:                                              ; preds = %160
  %184 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %185 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %184, i32 0, i32 3
  store i32 0, i32* %185, align 4
  %186 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %187 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 (i32, i8*, ...) @device_printf(i32 %188, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %183, %182
  %192 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %193 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %192, i32 0, i32 2
  %194 = call i32 @mtx_unlock(i32* %193)
  br label %225

195:                                              ; preds = %149, %140
  %196 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %197 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %196, i32 0, i32 0
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @MR_DCMD_CTRL_EVENT_WAIT, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %195
  %205 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %206 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %207 = call i32 @mrsas_complete_aen(%struct.mrsas_softc* %205, %struct.mrsas_mfi_cmd* %206)
  br label %212

208:                                              ; preds = %195
  %209 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %210 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %211 = call i32 @mrsas_wakeup(%struct.mrsas_softc* %209, %struct.mrsas_mfi_cmd* %210)
  br label %212

212:                                              ; preds = %208, %204
  br label %225

213:                                              ; preds = %28
  %214 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %215 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %216 = call i32 @mrsas_complete_abort(%struct.mrsas_softc* %214, %struct.mrsas_mfi_cmd* %215)
  br label %225

217:                                              ; preds = %28
  %218 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %219 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.mrsas_header*, %struct.mrsas_header** %7, align 8
  %222 = getelementptr inbounds %struct.mrsas_header, %struct.mrsas_header* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i32, i8*, ...) @device_printf(i32 %220, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %217, %213, %212, %191, %113, %89, %42, %32
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mrsas_wakeup(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @MR_ValidateMapInfo(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_sync_map_info(%struct.mrsas_softc*) #1

declare dso_local i32 @megasas_sync_pd_seq_num(%struct.mrsas_softc*, i32) #1

declare dso_local i32 @mrsas_complete_aen(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_complete_abort(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
