; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/daemon/extr_daemon_saver.c_daemon_saver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/daemon/extr_daemon_saver.c_daemon_saver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }

@daemon_saver.txpos = internal global i32 10, align 4
@daemon_saver.typos = internal global i32 10, align 4
@daemon_saver.txdir = internal global i32 -1, align 4
@daemon_saver.tydir = internal global i32 -1, align 4
@daemon_saver.dxpos = internal global i32 0, align 4
@daemon_saver.dypos = internal global i32 0, align 4
@daemon_saver.dxdir = internal global i32 1, align 4
@daemon_saver.dydir = internal global i32 1, align 4
@daemon_saver.moved_daemon = internal global i32 0, align 4
@daemon_saver.xoff = internal global i32 0, align 4
@daemon_saver.yoff = internal global i32 0, align 4
@daemon_saver.toff = internal global i32 0, align 4
@daemon_saver.xlen = internal global i32 0, align 4
@daemon_saver.ylen = internal global i32 0, align 4
@daemon_saver.tlen = internal global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@V_INFO_GRAPHICS = common dso_local global i32 0, align 4
@blanked = common dso_local global i32 0, align 4
@FG_LIGHTGREY = common dso_local global i32 0, align 4
@BG_BLACK = common dso_local global i32 0, align 4
@message = common dso_local global i32 0, align 4
@DAEMON_MAX_WIDTH = common dso_local global i32 0, align 4
@DAEMON_MAX_HEIGHT = common dso_local global i32 0, align 4
@messagelen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @daemon_saver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daemon_saver(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = call %struct.TYPE_17__* @sc_find_softc(%struct.TYPE_15__* %10, i32* null)
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = icmp eq %struct.TYPE_17__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EAGAIN, align 4
  store i32 %15, i32* %3, align 4
  br label %330

16:                                               ; preds = %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %328

22:                                               ; preds = %16
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @EAGAIN, align 4
  store i32 %31, i32* %3, align 4
  br label %330

32:                                               ; preds = %22
  %33 = load i32, i32* @blanked, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 32
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FG_LIGHTGREY, align 4
  %44 = load i32, i32* @BG_BLACK, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @ATTR(i32 %45)
  %47 = call i32 @sc_vtb_clear(i32* %37, i32 %42, i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = call i32 @vidd_set_hw_cursor(%struct.TYPE_15__* %48, i32 -1, i32 -1)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = call i32 @sc_set_border(%struct.TYPE_16__* %50, i32 0)
  store i32 0, i32* @daemon_saver.tlen, align 4
  store i32 0, i32* @daemon_saver.ylen, align 4
  store i32 0, i32* @daemon_saver.xlen, align 4
  br label %52

52:                                               ; preds = %35, %32
  %53 = load i32, i32* @blanked, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @blanked, align 4
  %55 = icmp slt i32 %53, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %330

57:                                               ; preds = %52
  store i32 1, i32* @blanked, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = load i32, i32* @daemon_saver.dxpos, align 4
  %60 = load i32, i32* @daemon_saver.dypos, align 4
  %61 = load i32, i32* @daemon_saver.dxdir, align 4
  %62 = load i32, i32* @daemon_saver.xoff, align 4
  %63 = load i32, i32* @daemon_saver.yoff, align 4
  %64 = load i32, i32* @daemon_saver.xlen, align 4
  %65 = load i32, i32* @daemon_saver.ylen, align 4
  %66 = call i32 @clear_daemon(%struct.TYPE_17__* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = load i32, i32* @daemon_saver.txpos, align 4
  %69 = load i32, i32* @daemon_saver.typos, align 4
  %70 = load i32, i32* @daemon_saver.toff, align 4
  %71 = load i32, i32* @message, align 4
  %72 = load i32, i32* @daemon_saver.tlen, align 4
  %73 = call i32 @clear_string(%struct.TYPE_17__* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @daemon_saver.moved_daemon, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @daemon_saver.moved_daemon, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %220

77:                                               ; preds = %57
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DAEMON_MAX_WIDTH, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DAEMON_MAX_WIDTH, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sub nsw i32 %88, 10
  store i32 %89, i32* %8, align 4
  store i32 10, i32* %9, align 4
  br label %96

90:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DAEMON_MAX_WIDTH, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %90, %83
  %97 = load i32, i32* @daemon_saver.dxpos, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* @daemon_saver.dxpos, align 4
  store i32 1, i32* @daemon_saver.dxdir, align 4
  br label %109

102:                                              ; preds = %96
  %103 = load i32, i32* @daemon_saver.dxpos, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* @daemon_saver.dxpos, align 4
  store i32 -1, i32* @daemon_saver.dxdir, align 4
  br label %108

108:                                              ; preds = %106, %102
  br label %109

109:                                              ; preds = %108, %100
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DAEMON_MAX_HEIGHT, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DAEMON_MAX_HEIGHT, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sub nsw i32 %120, 10
  store i32 %121, i32* %8, align 4
  store i32 10, i32* %9, align 4
  br label %128

122:                                              ; preds = %109
  store i32 0, i32* %8, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DAEMON_MAX_HEIGHT, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %122, %115
  %129 = load i32, i32* @daemon_saver.dypos, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* @daemon_saver.dypos, align 4
  store i32 1, i32* @daemon_saver.dydir, align 4
  br label %141

134:                                              ; preds = %128
  %135 = load i32, i32* @daemon_saver.dypos, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* @daemon_saver.dypos, align 4
  store i32 -1, i32* @daemon_saver.dydir, align 4
  br label %140

140:                                              ; preds = %138, %134
  br label %141

141:                                              ; preds = %140, %132
  store i32 -1, i32* @daemon_saver.moved_daemon, align 4
  %142 = load i32, i32* @daemon_saver.dxdir, align 4
  %143 = load i32, i32* @daemon_saver.dxpos, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* @daemon_saver.dxpos, align 4
  %145 = load i32, i32* @daemon_saver.dydir, align 4
  %146 = load i32, i32* @daemon_saver.dypos, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* @daemon_saver.dypos, align 4
  store i32 0, i32* @daemon_saver.xoff, align 4
  %148 = load i32, i32* @DAEMON_MAX_WIDTH, align 4
  store i32 %148, i32* @daemon_saver.xlen, align 4
  %149 = load i32, i32* @daemon_saver.dxpos, align 4
  %150 = load i32, i32* @daemon_saver.xlen, align 4
  %151 = add nsw i32 %149, %150
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  store i32 0, i32* @daemon_saver.xlen, align 4
  br label %161

154:                                              ; preds = %141
  %155 = load i32, i32* @daemon_saver.dxpos, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* @daemon_saver.dxpos, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* @daemon_saver.xoff, align 4
  br label %160

160:                                              ; preds = %157, %154
  br label %161

161:                                              ; preds = %160, %153
  %162 = load i32, i32* @daemon_saver.dxpos, align 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp sge i32 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 0, i32* @daemon_saver.xlen, align 4
  br label %183

168:                                              ; preds = %161
  %169 = load i32, i32* @daemon_saver.dxpos, align 4
  %170 = load i32, i32* @daemon_saver.xlen, align 4
  %171 = add nsw i32 %169, %170
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %171, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %168
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @daemon_saver.dxpos, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* @daemon_saver.xlen, align 4
  br label %182

182:                                              ; preds = %176, %168
  br label %183

183:                                              ; preds = %182, %167
  store i32 0, i32* @daemon_saver.yoff, align 4
  %184 = load i32, i32* @DAEMON_MAX_HEIGHT, align 4
  store i32 %184, i32* @daemon_saver.ylen, align 4
  %185 = load i32, i32* @daemon_saver.dypos, align 4
  %186 = load i32, i32* @daemon_saver.ylen, align 4
  %187 = add nsw i32 %185, %186
  %188 = icmp sle i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  store i32 0, i32* @daemon_saver.ylen, align 4
  br label %197

190:                                              ; preds = %183
  %191 = load i32, i32* @daemon_saver.dypos, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* @daemon_saver.dypos, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* @daemon_saver.yoff, align 4
  br label %196

196:                                              ; preds = %193, %190
  br label %197

197:                                              ; preds = %196, %189
  %198 = load i32, i32* @daemon_saver.dypos, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp sge i32 %198, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  store i32 0, i32* @daemon_saver.ylen, align 4
  br label %219

204:                                              ; preds = %197
  %205 = load i32, i32* @daemon_saver.dypos, align 4
  %206 = load i32, i32* @daemon_saver.ylen, align 4
  %207 = add nsw i32 %205, %206
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp sgt i32 %207, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %204
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @daemon_saver.dypos, align 4
  %217 = sub nsw i32 %215, %216
  store i32 %217, i32* @daemon_saver.ylen, align 4
  br label %218

218:                                              ; preds = %212, %204
  br label %219

219:                                              ; preds = %218, %203
  br label %220

220:                                              ; preds = %219, %57
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @messagelen, align 4
  %225 = icmp sle i32 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %220
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @messagelen, align 4
  %231 = sub nsw i32 %229, %230
  %232 = sub nsw i32 %231, 10
  store i32 %232, i32* %8, align 4
  store i32 10, i32* %9, align 4
  br label %239

233:                                              ; preds = %220
  store i32 0, i32* %8, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @messagelen, align 4
  %238 = sub nsw i32 %236, %237
  store i32 %238, i32* %9, align 4
  br label %239

239:                                              ; preds = %233, %226
  %240 = load i32, i32* @daemon_saver.txpos, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp sle i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i32, i32* %8, align 4
  store i32 %244, i32* @daemon_saver.txpos, align 4
  store i32 1, i32* @daemon_saver.txdir, align 4
  br label %252

245:                                              ; preds = %239
  %246 = load i32, i32* @daemon_saver.txpos, align 4
  %247 = load i32, i32* %9, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i32, i32* %9, align 4
  store i32 %250, i32* @daemon_saver.txpos, align 4
  store i32 -1, i32* @daemon_saver.txdir, align 4
  br label %251

251:                                              ; preds = %249, %245
  br label %252

252:                                              ; preds = %251, %243
  %253 = load i32, i32* @daemon_saver.typos, align 4
  %254 = icmp sle i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store i32 0, i32* @daemon_saver.typos, align 4
  store i32 1, i32* @daemon_saver.tydir, align 4
  br label %269

256:                                              ; preds = %252
  %257 = load i32, i32* @daemon_saver.typos, align 4
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 %260, 1
  %262 = icmp sge i32 %257, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %256
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 %266, 1
  store i32 %267, i32* @daemon_saver.typos, align 4
  store i32 -1, i32* @daemon_saver.tydir, align 4
  br label %268

268:                                              ; preds = %263, %256
  br label %269

269:                                              ; preds = %268, %255
  %270 = load i32, i32* @daemon_saver.txdir, align 4
  %271 = load i32, i32* @daemon_saver.txpos, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* @daemon_saver.txpos, align 4
  %273 = load i32, i32* @daemon_saver.tydir, align 4
  %274 = load i32, i32* @daemon_saver.typos, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* @daemon_saver.typos, align 4
  store i32 0, i32* @daemon_saver.toff, align 4
  %276 = load i32, i32* @messagelen, align 4
  store i32 %276, i32* @daemon_saver.tlen, align 4
  %277 = load i32, i32* @daemon_saver.txpos, align 4
  %278 = load i32, i32* @daemon_saver.tlen, align 4
  %279 = add nsw i32 %277, %278
  %280 = icmp sle i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %269
  store i32 0, i32* @daemon_saver.tlen, align 4
  br label %289

282:                                              ; preds = %269
  %283 = load i32, i32* @daemon_saver.txpos, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i32, i32* @daemon_saver.txpos, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* @daemon_saver.toff, align 4
  br label %288

288:                                              ; preds = %285, %282
  br label %289

289:                                              ; preds = %288, %281
  %290 = load i32, i32* @daemon_saver.txpos, align 4
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp sge i32 %290, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  store i32 0, i32* @daemon_saver.tlen, align 4
  br label %311

296:                                              ; preds = %289
  %297 = load i32, i32* @daemon_saver.txpos, align 4
  %298 = load i32, i32* @daemon_saver.tlen, align 4
  %299 = add nsw i32 %297, %298
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = icmp sgt i32 %299, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %296
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @daemon_saver.txpos, align 4
  %309 = sub nsw i32 %307, %308
  store i32 %309, i32* @daemon_saver.tlen, align 4
  br label %310

310:                                              ; preds = %304, %296
  br label %311

311:                                              ; preds = %310, %295
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %313 = load i32, i32* @daemon_saver.dxpos, align 4
  %314 = load i32, i32* @daemon_saver.dypos, align 4
  %315 = load i32, i32* @daemon_saver.dxdir, align 4
  %316 = load i32, i32* @daemon_saver.xoff, align 4
  %317 = load i32, i32* @daemon_saver.yoff, align 4
  %318 = load i32, i32* @daemon_saver.xlen, align 4
  %319 = load i32, i32* @daemon_saver.ylen, align 4
  %320 = call i32 @draw_daemon(%struct.TYPE_17__* %312, i32 %313, i32 %314, i32 %315, i32 %316, i32 %317, i32 %318, i32 %319)
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %322 = load i32, i32* @daemon_saver.txpos, align 4
  %323 = load i32, i32* @daemon_saver.typos, align 4
  %324 = load i32, i32* @daemon_saver.toff, align 4
  %325 = load i32, i32* @message, align 4
  %326 = load i32, i32* @daemon_saver.tlen, align 4
  %327 = call i32 @draw_string(%struct.TYPE_17__* %321, i32 %322, i32 %323, i32 %324, i32 %325, i32 %326)
  br label %329

328:                                              ; preds = %16
  store i32 0, i32* @blanked, align 4
  br label %329

329:                                              ; preds = %328, %311
  store i32 0, i32* %3, align 4
  br label %330

330:                                              ; preds = %329, %56, %30, %14
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local %struct.TYPE_17__* @sc_find_softc(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @sc_vtb_clear(i32*, i32, i32) #1

declare dso_local i32 @ATTR(i32) #1

declare dso_local i32 @vidd_set_hw_cursor(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @sc_set_border(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @clear_daemon(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clear_string(%struct.TYPE_17__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @draw_daemon(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @draw_string(%struct.TYPE_17__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
