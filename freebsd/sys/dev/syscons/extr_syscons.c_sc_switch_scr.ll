; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_switch_scr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_switch_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_26__ = type { i32, i64, i64, i64, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i64, i64, i64 }
%struct.TYPE_25__ = type { i32, i64, %struct.TYPE_23__, i32, %struct.proc*, i32, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.proc = type { i32 }
%struct.tty = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"sc0: sc_switch_scr() %d \00", align 1
@SC_SCRN_VTYLOCK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SC_SCRN_BLANKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"switch delayed\0A\00", align 1
@VT_PROCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"cur_scp controlling process %d died, \00", align 1
@SWITCH_WAIT_REL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"reset WAIT_REL, \00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"finishing previous switch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SWITCH_WAIT_ACQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"reset WAIT_ACQ, \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"waiting nothing, \00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"sending relsig again, \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"force reset WAIT_REL, \00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"act as if VT_FALSE was seen\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"sending acqsig again, \00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"force reset WAIT_ACQ, \00", align 1
@bios_value = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@BELL_DURATION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"error 1\0A\00", align 1
@VT_AUTO = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"error, graphics mode\0A\00", align 1
@sc_console = common dso_local global %struct.TYPE_20__* null, align 8
@.str.14 = private unnamed_addr constant [36 x i8] c"error 2, requested vty isn't open!\0A\00", align 1
@kdb_active = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [50 x i8] c"error 3, requested vty is in the VT_PROCESS mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"switch done (new == old)\0A\00", align 1
@sc_console_unit = common dso_local global i64 0, align 8
@sc_consptr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"switch done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_switch_scr(%struct.TYPE_26__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.tty*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 1
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @DPRINTF(i32 5, i8* %12)
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %17 = icmp eq %struct.TYPE_25__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %401

19:                                               ; preds = %2
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SC_SCRN_VTYLOCK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sc_bell(%struct.TYPE_25__* %29, i32 %34, i32 %39)
  %41 = load i32, i32* @EPERM, align 4
  store i32 %41, i32* %3, align 4
  br label %401

42:                                               ; preds = %19
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SC_SCRN_BLANKED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 10
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 9
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54, %49, %42
  %60 = load i64, i64* %5, align 8
  %61 = add nsw i64 %60, 1
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 8
  store i64 %61, i64* %63, align 8
  %64 = call i32 (...) @sc_touch_scrn_saver()
  %65 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %401

66:                                               ; preds = %54
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 8
  store i64 0, i64* %68, align 8
  %69 = call i32 (...) @spltty()
  store i32 %69, i32* %9, align 4
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %71, align 8
  store %struct.TYPE_25__* %72, %struct.TYPE_25__** %6, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %204

77:                                               ; preds = %66
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @VT_PROCESS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %204

84:                                               ; preds = %77
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 4
  %87 = load %struct.proc*, %struct.proc** %86, align 8
  %88 = icmp ne %struct.proc* %87, null
  br i1 %88, label %89, label %204

89:                                               ; preds = %84
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.proc* @pfind(i32 %92)
  store %struct.proc* %93, %struct.proc** %8, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 4
  %96 = load %struct.proc*, %struct.proc** %95, align 8
  %97 = load %struct.proc*, %struct.proc** %8, align 8
  %98 = icmp ne %struct.proc* %96, %97
  br i1 %98, label %99, label %142

99:                                               ; preds = %89
  %100 = load %struct.proc*, %struct.proc** %8, align 8
  %101 = icmp ne %struct.proc* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.proc*, %struct.proc** %8, align 8
  %104 = call i32 @PROC_UNLOCK(%struct.proc* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @DPRINTF(i32 5, i8* %110)
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SWITCH_WAIT_REL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %105
  %119 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = load i32, i32* @TRUE, align 4
  %122 = call i32 @finish_vt_rel(%struct.TYPE_25__* %120, i32 %121, i32* %9)
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @splx(i32 %123)
  %125 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %3, align 4
  br label %401

127:                                              ; preds = %105
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @SWITCH_WAIT_ACQ, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %137 = call i32 @finish_vt_acq(%struct.TYPE_25__* %136)
  br label %140

138:                                              ; preds = %127
  %139 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %134
  br label %141

141:                                              ; preds = %140
  br label %203

142:                                              ; preds = %89
  %143 = load %struct.proc*, %struct.proc** %8, align 8
  %144 = icmp ne %struct.proc* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.proc*, %struct.proc** %8, align 8
  %147 = call i32 @PROC_UNLOCK(%struct.proc* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SWITCH_WAIT_REL, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %148
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %157, align 8
  switch i64 %158, label %167 [
    i64 1, label %160
    i64 2, label %161
    i64 3, label %165
    i64 4, label %166
  ]

160:                                              ; preds = %155
  br label %176

161:                                              ; preds = %155
  %162 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %164 = call i64 @signal_vt_rel(%struct.TYPE_25__* %163)
  br label %176

165:                                              ; preds = %155
  br label %176

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %155, %166
  %168 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %170 = load i32, i32* @FALSE, align 4
  %171 = call i32 @finish_vt_rel(%struct.TYPE_25__* %169, i32 %170, i32* %9)
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @splx(i32 %172)
  %174 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %175 = load i32, i32* @EINVAL, align 4
  store i32 %175, i32* %3, align 4
  br label %401

176:                                              ; preds = %165, %161, %160
  br label %202

177:                                              ; preds = %148
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @SWITCH_WAIT_ACQ, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %177
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %186, align 8
  switch i64 %187, label %196 [
    i64 1, label %189
    i64 2, label %190
    i64 3, label %194
    i64 4, label %195
  ]

189:                                              ; preds = %184
  br label %200

190:                                              ; preds = %184
  %191 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %193 = call i64 @signal_vt_acq(%struct.TYPE_25__* %192)
  br label %200

194:                                              ; preds = %184
  br label %200

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %184, %195
  %197 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %199 = call i32 @finish_vt_acq(%struct.TYPE_25__* %198)
  br label %200

200:                                              ; preds = %196, %194, %190, %189
  br label %201

201:                                              ; preds = %200, %177
  br label %202

202:                                              ; preds = %201, %176
  br label %203

203:                                              ; preds = %202, %141
  br label %204

204:                                              ; preds = %203, %84, %77, %66
  %205 = load i64, i64* %5, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp slt i64 %205, %208
  br i1 %209, label %225, label %210

210:                                              ; preds = %204
  %211 = load i64, i64* %5, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %214, %217
  %219 = icmp sge i64 %211, %218
  br i1 %219, label %225, label %220

220:                                              ; preds = %210
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %220, %210, %204
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @splx(i32 %226)
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bios_value, i32 0, i32 0), align 4
  %230 = load i32, i32* @BELL_DURATION, align 4
  %231 = call i32 @sc_bell(%struct.TYPE_25__* %228, i32 %229, i32 %230)
  %232 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %233 = load i32, i32* @EINVAL, align 4
  store i32 %233, i32* %3, align 4
  br label %401

234:                                              ; preds = %220
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = call %struct.tty* @SC_DEV(%struct.TYPE_26__* %235, i64 %238)
  store %struct.tty* %239, %struct.tty** %7, align 8
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %5, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %269

245:                                              ; preds = %234
  %246 = load %struct.tty*, %struct.tty** %7, align 8
  %247 = call i64 @tty_opened_ns(%struct.tty* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %269

249:                                              ; preds = %245
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @VT_AUTO, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %269

256:                                              ; preds = %249
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %258 = call i64 @ISGRAPHSC(%struct.TYPE_25__* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %256
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @splx(i32 %261)
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %264 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bios_value, i32 0, i32 0), align 4
  %265 = load i32, i32* @BELL_DURATION, align 4
  %266 = call i32 @sc_bell(%struct.TYPE_25__* %263, i32 %264, i32 %265)
  %267 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %268 = load i32, i32* @EINVAL, align 4
  store i32 %268, i32* %3, align 4
  br label %401

269:                                              ; preds = %256, %249, %245, %234
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sc_console, align 8
  %271 = icmp eq %struct.TYPE_20__* %270, null
  br i1 %271, label %278, label %272

272:                                              ; preds = %269
  %273 = load i64, i64* %5, align 8
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sc_console, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %273, %276
  br i1 %277, label %278, label %311

278:                                              ; preds = %272, %269
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %280 = load i64, i64* %5, align 8
  %281 = call %struct.tty* @SC_DEV(%struct.TYPE_26__* %279, i64 %280)
  store %struct.tty* %281, %struct.tty** %7, align 8
  %282 = load %struct.tty*, %struct.tty** %7, align 8
  %283 = call i64 @tty_opened_ns(%struct.tty* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %294, label %285

285:                                              ; preds = %278
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @splx(i32 %286)
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %289 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bios_value, i32 0, i32 0), align 4
  %290 = load i32, i32* @BELL_DURATION, align 4
  %291 = call i32 @sc_bell(%struct.TYPE_25__* %288, i32 %289, i32 %290)
  %292 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %293 = load i32, i32* @EINVAL, align 4
  store i32 %293, i32* %3, align 4
  br label %401

294:                                              ; preds = %278
  %295 = load i64, i64* @kdb_active, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %294
  %298 = load %struct.tty*, %struct.tty** %7, align 8
  %299 = call %struct.TYPE_22__* @SC_STAT(%struct.tty* %298)
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @VT_PROCESS, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %297
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @splx(i32 %306)
  %308 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0))
  %309 = load i32, i32* @EINVAL, align 4
  store i32 %309, i32* %3, align 4
  br label %401

310:                                              ; preds = %297, %294
  br label %311

311:                                              ; preds = %310, %272
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 4
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %314, 1
  store i64 %315, i64* %313, align 8
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %317, i32 0, i32 6
  store %struct.TYPE_25__* %316, %struct.TYPE_25__** %318, align 8
  %319 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %320 = load i64, i64* %5, align 8
  %321 = call %struct.tty* @SC_DEV(%struct.TYPE_26__* %319, i64 %320)
  %322 = call %struct.TYPE_25__* @sc_get_stat(%struct.tty* %321)
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 7
  store %struct.TYPE_25__* %322, %struct.TYPE_25__** %324, align 8
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 7
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %326, align 8
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 6
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %329, align 8
  %331 = icmp eq %struct.TYPE_25__* %327, %330
  br i1 %331, label %332, label %346

332:                                              ; preds = %311
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 4
  store i64 0, i64* %334, align 8
  %335 = load i64, i64* @kdb_active, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %332
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %339 = load i64, i64* %5, align 8
  %340 = call i32 @VTY_WCHAN(%struct.TYPE_26__* %338, i64 %339)
  %341 = call i32 @wakeup(i32 %340)
  br label %342

342:                                              ; preds = %337, %332
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @splx(i32 %343)
  %345 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %401

346:                                              ; preds = %311
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 6
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %348, align 8
  %350 = call i32 @vt_proc_alive(%struct.TYPE_25__* %349)
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %351, i32 0, i32 7
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %352, align 8
  %354 = call i32 @vt_proc_alive(%struct.TYPE_25__* %353)
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 6
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %356, align 8
  %358 = call i64 @signal_vt_rel(%struct.TYPE_25__* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %346
  %361 = load i32, i32* %9, align 4
  %362 = call i32 @splx(i32 %361)
  store i32 0, i32* %3, align 4
  br label %401

363:                                              ; preds = %346
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @splx(i32 %364)
  %366 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %367 = call i32 @exchange_scr(%struct.TYPE_26__* %366)
  %368 = call i32 (...) @spltty()
  store i32 %368, i32* %9, align 4
  %369 = load i64, i64* @kdb_active, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %376, label %371

371:                                              ; preds = %363
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %373 = load i64, i64* %5, align 8
  %374 = call i32 @VTY_WCHAN(%struct.TYPE_26__* %372, i64 %373)
  %375 = call i32 @wakeup(i32 %374)
  br label %376

376:                                              ; preds = %371, %363
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 5
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %378, align 8
  %380 = call i64 @signal_vt_acq(%struct.TYPE_25__* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = load i32, i32* %9, align 4
  %384 = call i32 @splx(i32 %383)
  store i32 0, i32* %3, align 4
  br label %401

385:                                              ; preds = %376
  %386 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %386, i32 0, i32 4
  store i64 0, i64* %387, align 8
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 3
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @sc_console_unit, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %397

393:                                              ; preds = %385
  %394 = load i32, i32* @sc_consptr, align 4
  %395 = load i32, i32* @TRUE, align 4
  %396 = call i32 @cnavailable(i32 %394, i32 %395)
  br label %397

397:                                              ; preds = %393, %385
  %398 = load i32, i32* %9, align 4
  %399 = call i32 @splx(i32 %398)
  %400 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %401

401:                                              ; preds = %397, %382, %360, %342, %305, %285, %260, %225, %167, %118, %59, %26, %18
  %402 = load i32, i32* %3, align 4
  ret i32 %402
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @sc_bell(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @sc_touch_scrn_saver(...) #1

declare dso_local i32 @spltty(...) #1

declare dso_local %struct.proc* @pfind(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @finish_vt_rel(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @finish_vt_acq(%struct.TYPE_25__*) #1

declare dso_local i64 @signal_vt_rel(%struct.TYPE_25__*) #1

declare dso_local i64 @signal_vt_acq(%struct.TYPE_25__*) #1

declare dso_local %struct.tty* @SC_DEV(%struct.TYPE_26__*, i64) #1

declare dso_local i64 @tty_opened_ns(%struct.tty*) #1

declare dso_local i64 @ISGRAPHSC(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_22__* @SC_STAT(%struct.tty*) #1

declare dso_local %struct.TYPE_25__* @sc_get_stat(%struct.tty*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @VTY_WCHAN(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @vt_proc_alive(%struct.TYPE_25__*) #1

declare dso_local i32 @exchange_scr(%struct.TYPE_26__*) #1

declare dso_local i32 @cnavailable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
