; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_cmds.c_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_cmds.c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdtab = type { i32, i32 (i8*, i8*)*, i64 (...)*, i32* (...)*, i32 (i32*)*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@delay = common dso_local global i32 0, align 4
@CMDLINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Refresh disabled.\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@cmdtab = common dso_local global %struct.cmdtab* null, align 8
@COLS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%d: bad interval.\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"%s: Ambiguous command.\00", align 1
@curcmd = common dso_local global %struct.cmdtab* null, align 8
@wnd = common dso_local global i32* null, align 8
@CF_INIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Couldn't open new display\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Couldn't change back to previous cmd\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"%s: Unknown command.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cmdtab*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** %6, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i1 [ false, %13 ], [ %23, %18 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  br label %13

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  store i8 0, i8* %35, align 1
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %278

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %57, %43
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isspace(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ false, %44 ], [ %53, %49 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %4, align 8
  br label %44

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60
  %69 = call i32 @die(i32 0)
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (...) @load()
  br label %278

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  store i32 0, i32* @delay, align 4
  %81 = load i32, i32* @CMDLINE, align 4
  %82 = call i32 @mvaddstr(i32 %81, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %83 = call i32 (...) @clrtoeol()
  br label %278

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %84
  %89 = load i32, i32* @CMDLINE, align 4
  store i32 0, i32* %8, align 4
  %90 = call i32 @move(i32 %89, i32 0)
  %91 = load %struct.cmdtab*, %struct.cmdtab** @cmdtab, align 8
  store %struct.cmdtab* %91, %struct.cmdtab** %3, align 8
  br label %92

92:                                               ; preds = %123, %88
  %93 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %94 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %92
  %98 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %99 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @strlen(i64 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* @COLS, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %126

108:                                              ; preds = %97
  %109 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %110 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @addstr(i64 %111)
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* @COLS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = call i32 @addch(i8 signext 32)
  br label %122

122:                                              ; preds = %120, %108
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %125 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %124, i32 1
  store %struct.cmdtab* %125, %struct.cmdtab** %3, align 8
  br label %92

126:                                              ; preds = %107, %92
  %127 = call i32 (...) @clrtoeol()
  br label %278

128:                                              ; preds = %84
  %129 = load i8*, i8** %6, align 8
  %130 = call double @strtod(i8* %129, i32* null)
  %131 = fmul double %130, 1.000000e+06
  store double %131, double* %7, align 8
  %132 = load double, double* %7, align 8
  %133 = fcmp ogt double %132, 0.000000e+00
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load double, double* %7, align 8
  %136 = load i64, i64* @UINT_MAX, align 8
  %137 = sitofp i64 %136 to double
  %138 = fcmp olt double %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load double, double* %7, align 8
  %141 = fptoui double %140 to i32
  store i32 %141, i32* @delay, align 4
  br label %142

142:                                              ; preds = %139, %134, %128
  %143 = load double, double* %7, align 8
  %144 = fcmp ole double %143, 0.000000e+00
  br i1 %144, label %150, label %145

145:                                              ; preds = %142
  %146 = load double, double* %7, align 8
  %147 = load i64, i64* @UINT_MAX, align 8
  %148 = sitofp i64 %147 to double
  %149 = fcmp ogt double %146, %148
  br i1 %149, label %150, label %180

150:                                              ; preds = %145, %142
  %151 = load i8*, i8** %6, align 8
  %152 = call i64 @strcmp(i8* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** %6, align 8
  %156 = call i64 @strcmp(i8* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %154, %150
  %159 = load i8*, i8** %4, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %158
  %164 = load i8*, i8** %4, align 8
  %165 = call double @strtod(i8* %164, i32* null)
  %166 = fmul double %165, 1.000000e+06
  store double %166, double* %7, align 8
  %167 = load double, double* %7, align 8
  %168 = fcmp ole double %167, 0.000000e+00
  br i1 %168, label %174, label %169

169:                                              ; preds = %163
  %170 = load double, double* %7, align 8
  %171 = load i64, i64* @UINT_MAX, align 8
  %172 = sitofp i64 %171 to double
  %173 = fcmp oge double %170, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %169, %163
  %175 = load double, double* %7, align 8
  %176 = fptosi double %175 to i32
  %177 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  br label %278

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178, %158
  br label %180

180:                                              ; preds = %179, %154, %145
  %181 = load double, double* %7, align 8
  %182 = fcmp ogt double %181, 0.000000e+00
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load double, double* %7, align 8
  %185 = fptoui double %184 to i32
  store i32 %185, i32* @delay, align 4
  %186 = call i32 (...) @display()
  %187 = call i32 (...) @status()
  br label %278

188:                                              ; preds = %180
  %189 = load i8*, i8** %6, align 8
  %190 = call %struct.cmdtab* @lookup(i8* %189)
  store %struct.cmdtab* %190, %struct.cmdtab** %3, align 8
  %191 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %192 = icmp eq %struct.cmdtab* %191, inttoptr (i64 -1 to %struct.cmdtab*)
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load i8*, i8** %6, align 8
  %195 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %194)
  br label %278

196:                                              ; preds = %188
  %197 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %198 = icmp ne %struct.cmdtab* %197, null
  br i1 %198, label %199, label %261

199:                                              ; preds = %196
  %200 = load %struct.cmdtab*, %struct.cmdtab** @curcmd, align 8
  %201 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %202 = icmp eq %struct.cmdtab* %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %278

204:                                              ; preds = %199
  %205 = load %struct.cmdtab*, %struct.cmdtab** @curcmd, align 8
  %206 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %205, i32 0, i32 4
  %207 = load i32 (i32*)*, i32 (i32*)** %206, align 8
  %208 = load i32*, i32** @wnd, align 8
  %209 = call i32 %207(i32* %208)
  %210 = load i32, i32* @CF_INIT, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.cmdtab*, %struct.cmdtab** @curcmd, align 8
  %213 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %217 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %216, i32 0, i32 3
  %218 = load i32* (...)*, i32* (...)** %217, align 8
  %219 = call i32* (...) %218()
  store i32* %219, i32** @wnd, align 8
  %220 = load i32*, i32** @wnd, align 8
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %235

222:                                              ; preds = %204
  %223 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %224 = load %struct.cmdtab*, %struct.cmdtab** @curcmd, align 8
  %225 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %224, i32 0, i32 3
  %226 = load i32* (...)*, i32* (...)** %225, align 8
  %227 = call i32* (...) %226()
  store i32* %227, i32** @wnd, align 8
  %228 = load i32*, i32** @wnd, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %222
  %231 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %232 = call i32 @exit(i32 1) #3
  unreachable

233:                                              ; preds = %222
  %234 = load %struct.cmdtab*, %struct.cmdtab** @curcmd, align 8
  store %struct.cmdtab* %234, %struct.cmdtab** %3, align 8
  br label %235

235:                                              ; preds = %233, %204
  %236 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %237 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @CF_INIT, align 4
  %240 = and i32 %238, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %235
  %243 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %244 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %243, i32 0, i32 2
  %245 = load i64 (...)*, i64 (...)** %244, align 8
  %246 = call i64 (...) %245()
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = load i32, i32* @CF_INIT, align 4
  %250 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %251 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  br label %255

254:                                              ; preds = %242
  br label %278

255:                                              ; preds = %248
  br label %256

256:                                              ; preds = %255, %235
  %257 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  store %struct.cmdtab* %257, %struct.cmdtab** @curcmd, align 8
  %258 = call i32 (...) @labels()
  %259 = call i32 (...) @display()
  %260 = call i32 (...) @status()
  br label %278

261:                                              ; preds = %196
  %262 = load %struct.cmdtab*, %struct.cmdtab** @curcmd, align 8
  %263 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %262, i32 0, i32 1
  %264 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %263, align 8
  %265 = icmp eq i32 (i8*, i8*)* %264, null
  br i1 %265, label %274, label %266

266:                                              ; preds = %261
  %267 = load %struct.cmdtab*, %struct.cmdtab** @curcmd, align 8
  %268 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %267, i32 0, i32 1
  %269 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %268, align 8
  %270 = load i8*, i8** %6, align 8
  %271 = load i8*, i8** %4, align 8
  %272 = call i32 %269(i8* %270, i8* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %266, %261
  %275 = load i8*, i8** %6, align 8
  %276 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %275)
  br label %277

277:                                              ; preds = %274, %266
  br label %278

278:                                              ; preds = %277, %256, %254, %203, %193, %183, %174, %126, %80, %74, %42
  %279 = load i8*, i8** %5, align 8
  %280 = call i32 @free(i8* %279)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @load(...) #1

declare dso_local i32 @mvaddstr(i32, i32, i8*) #1

declare dso_local i32 @clrtoeol(...) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @addstr(i64) #1

declare dso_local i32 @addch(i8 signext) #1

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @display(...) #1

declare dso_local i32 @status(...) #1

declare dso_local %struct.cmdtab* @lookup(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @labels(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
