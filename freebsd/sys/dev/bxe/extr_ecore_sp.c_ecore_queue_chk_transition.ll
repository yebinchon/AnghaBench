; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_chk_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_chk_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_sp_obj = type { i32, i32, i32, i32, i32 }
%struct.ecore_queue_state_params = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.ecore_queue_update_params }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_queue_update_params = type { i32 }

@ECORE_Q_STATE_MAX = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Blocking transition since pending was %lx\0A\00", align 1
@ECORE_BUSY = common dso_local global i32 0, align 4
@ECORE_Q_CMD_INIT = common dso_local global i32 0, align 4
@ECORE_Q_CMD_SETUP = common dso_local global i32 0, align 4
@ECORE_Q_FLG_ACTIVE = common dso_local global i32 0, align 4
@ECORE_Q_CMD_DEACTIVATE = common dso_local global i32 0, align 4
@ECORE_Q_CMD_EMPTY = common dso_local global i32 0, align 4
@ECORE_Q_CMD_UPDATE_TPA = common dso_local global i32 0, align 4
@ECORE_Q_CMD_SETUP_TX_ONLY = common dso_local global i32 0, align 4
@ECORE_Q_CMD_HALT = common dso_local global i32 0, align 4
@ECORE_Q_CMD_UPDATE = common dso_local global i32 0, align 4
@ECORE_Q_UPDATE_ACTIVATE_CHNG = common dso_local global i32 0, align 4
@ECORE_Q_UPDATE_ACTIVATE = common dso_local global i32 0, align 4
@ECORE_Q_CMD_TERMINATE = common dso_local global i32 0, align 4
@ECORE_Q_CMD_CFC_DEL = common dso_local global i32 0, align 4
@ECORE_Q_CMD_ACTIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Illegal state: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Good state transition: %d(%d)->%d\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Bad state transition request: %d %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_queue_sp_obj*, %struct.ecore_queue_state_params*)* @ecore_queue_chk_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_queue_chk_transition(%struct.bxe_softc* %0, %struct.ecore_queue_sp_obj* %1, %struct.ecore_queue_state_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_queue_sp_obj*, align 8
  %7 = alloca %struct.ecore_queue_state_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_queue_update_params*, align 8
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_queue_sp_obj* %1, %struct.ecore_queue_sp_obj** %6, align 8
  store %struct.ecore_queue_state_params* %2, %struct.ecore_queue_state_params** %7, align 8
  %13 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @ECORE_Q_STATE_MAX, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %7, align 8
  %18 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %7, align 8
  %21 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store %struct.ecore_queue_update_params* %22, %struct.ecore_queue_update_params** %11, align 8
  %23 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %27 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %7, align 8
  %28 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %27, i32 0, i32 2
  %29 = call i64 @ECORE_TEST_BIT(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %32, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @ECORE_Q_STATE_MAX, align 4
  %35 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %36 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %3
  %38 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %39 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ECORE_BUSY, align 4
  store i32 %47, i32* %4, align 4
  br label %268

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %242 [
    i32 130, label %50
    i32 133, label %56
    i32 135, label %72
    i32 131, label %120
    i32 132, label %166
    i32 134, label %181
    i32 129, label %230
    i32 128, label %236
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @ECORE_Q_CMD_INIT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 133, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %50
  br label %245

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @ECORE_Q_CMD_SETUP, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* @ECORE_Q_FLG_ACTIVE, align 4
  %62 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %7, align 8
  %63 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i64 @ECORE_TEST_BIT(i32 %61, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 135, i32* %9, align 4
  br label %70

69:                                               ; preds = %60
  store i32 134, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %56
  br label %245

72:                                               ; preds = %48
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @ECORE_Q_CMD_DEACTIVATE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 134, i32* %9, align 4
  br label %119

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @ECORE_Q_CMD_EMPTY, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @ECORE_Q_CMD_UPDATE_TPA, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %77
  store i32 135, i32* %9, align 4
  br label %118

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @ECORE_Q_CMD_SETUP_TX_ONLY, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 131, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %117

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @ECORE_Q_CMD_HALT, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 129, i32* %9, align 4
  br label %116

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @ECORE_Q_CMD_UPDATE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i32, i32* @ECORE_Q_UPDATE_ACTIVATE_CHNG, align 4
  %102 = load %struct.ecore_queue_update_params*, %struct.ecore_queue_update_params** %11, align 8
  %103 = getelementptr inbounds %struct.ecore_queue_update_params, %struct.ecore_queue_update_params* %102, i32 0, i32 0
  %104 = call i64 @ECORE_TEST_BIT(i32 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i32, i32* @ECORE_Q_UPDATE_ACTIVATE, align 4
  %108 = load %struct.ecore_queue_update_params*, %struct.ecore_queue_update_params** %11, align 8
  %109 = getelementptr inbounds %struct.ecore_queue_update_params, %struct.ecore_queue_update_params* %108, i32 0, i32 0
  %110 = call i64 @ECORE_TEST_BIT(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  store i32 134, i32* %9, align 4
  br label %114

113:                                              ; preds = %106, %100
  store i32 135, i32* %9, align 4
  br label %114

114:                                              ; preds = %113, %112
  br label %115

115:                                              ; preds = %114, %96
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %90
  br label %118

118:                                              ; preds = %117, %85
  br label %119

119:                                              ; preds = %118, %76
  br label %245

120:                                              ; preds = %48
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @ECORE_Q_CMD_TERMINATE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 132, i32* %9, align 4
  br label %165

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @ECORE_Q_CMD_SETUP_TX_ONLY, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  store i32 131, i32* %9, align 4
  %130 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %131 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %164

134:                                              ; preds = %125
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @ECORE_Q_CMD_EMPTY, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @ECORE_Q_CMD_UPDATE_TPA, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %134
  store i32 131, i32* %9, align 4
  br label %163

143:                                              ; preds = %138
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @ECORE_Q_CMD_UPDATE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load i32, i32* @ECORE_Q_UPDATE_ACTIVATE_CHNG, align 4
  %149 = load %struct.ecore_queue_update_params*, %struct.ecore_queue_update_params** %11, align 8
  %150 = getelementptr inbounds %struct.ecore_queue_update_params, %struct.ecore_queue_update_params* %149, i32 0, i32 0
  %151 = call i64 @ECORE_TEST_BIT(i32 %148, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load i32, i32* @ECORE_Q_UPDATE_ACTIVATE, align 4
  %155 = load %struct.ecore_queue_update_params*, %struct.ecore_queue_update_params** %11, align 8
  %156 = getelementptr inbounds %struct.ecore_queue_update_params, %struct.ecore_queue_update_params* %155, i32 0, i32 0
  %157 = call i64 @ECORE_TEST_BIT(i32 %154, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %153
  store i32 134, i32* %9, align 4
  br label %161

160:                                              ; preds = %153, %147
  store i32 131, i32* %9, align 4
  br label %161

161:                                              ; preds = %160, %159
  br label %162

162:                                              ; preds = %161, %143
  br label %163

163:                                              ; preds = %162, %142
  br label %164

164:                                              ; preds = %163, %129
  br label %165

165:                                              ; preds = %164, %124
  br label %245

166:                                              ; preds = %48
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @ECORE_Q_CMD_CFC_DEL, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %172 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i32 135, i32* %9, align 4
  br label %179

178:                                              ; preds = %170
  store i32 131, i32* %9, align 4
  br label %179

179:                                              ; preds = %178, %177
  br label %180

180:                                              ; preds = %179, %166
  br label %245

181:                                              ; preds = %48
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @ECORE_Q_CMD_ACTIVATE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 135, i32* %9, align 4
  br label %229

186:                                              ; preds = %181
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @ECORE_Q_CMD_EMPTY, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @ECORE_Q_CMD_UPDATE_TPA, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190, %186
  store i32 134, i32* %9, align 4
  br label %228

195:                                              ; preds = %190
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @ECORE_Q_CMD_HALT, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store i32 129, i32* %9, align 4
  br label %227

200:                                              ; preds = %195
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* @ECORE_Q_CMD_UPDATE, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %226

204:                                              ; preds = %200
  %205 = load i32, i32* @ECORE_Q_UPDATE_ACTIVATE_CHNG, align 4
  %206 = load %struct.ecore_queue_update_params*, %struct.ecore_queue_update_params** %11, align 8
  %207 = getelementptr inbounds %struct.ecore_queue_update_params, %struct.ecore_queue_update_params* %206, i32 0, i32 0
  %208 = call i64 @ECORE_TEST_BIT(i32 %205, i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %204
  %211 = load i32, i32* @ECORE_Q_UPDATE_ACTIVATE, align 4
  %212 = load %struct.ecore_queue_update_params*, %struct.ecore_queue_update_params** %11, align 8
  %213 = getelementptr inbounds %struct.ecore_queue_update_params, %struct.ecore_queue_update_params* %212, i32 0, i32 0
  %214 = call i64 @ECORE_TEST_BIT(i32 %211, i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %210
  %217 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %218 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  store i32 135, i32* %9, align 4
  br label %223

222:                                              ; preds = %216
  store i32 131, i32* %9, align 4
  br label %223

223:                                              ; preds = %222, %221
  br label %225

224:                                              ; preds = %210, %204
  store i32 134, i32* %9, align 4
  br label %225

225:                                              ; preds = %224, %223
  br label %226

226:                                              ; preds = %225, %200
  br label %227

227:                                              ; preds = %226, %199
  br label %228

228:                                              ; preds = %227, %194
  br label %229

229:                                              ; preds = %228, %185
  br label %245

230:                                              ; preds = %48
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @ECORE_Q_CMD_TERMINATE, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 128, i32* %9, align 4
  br label %235

235:                                              ; preds = %234, %230
  br label %245

236:                                              ; preds = %48
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @ECORE_Q_CMD_CFC_DEL, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  store i32 130, i32* %9, align 4
  br label %241

241:                                              ; preds = %240, %236
  br label %245

242:                                              ; preds = %48
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %242, %241, %235, %229, %180, %165, %119, %71, %55
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @ECORE_Q_STATE_MAX, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %262

249:                                              ; preds = %245
  %250 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %9, align 4
  %254 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @ECORE_MSG(%struct.bxe_softc* %250, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %251, i32 %252, i32 %253)
  %255 = load i32, i32* %9, align 4
  %256 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %257 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* %12, align 4
  %259 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %260 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %259, i32 0, i32 4
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %261, i32* %4, align 4
  br label %268

262:                                              ; preds = %245
  %263 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @ECORE_MSG(%struct.bxe_softc* %263, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %264, i32 %265)
  %267 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %267, i32* %4, align 4
  br label %268

268:                                              ; preds = %262, %249, %42
  %269 = load i32, i32* %4, align 4
  ret i32 %269
}

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
