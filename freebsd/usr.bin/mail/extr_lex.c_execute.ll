; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cmd = type { i32, i8*, i32 (i8*)*, i32, i32, i32, i32 }

@LINESIZE = common dso_local global i32 0, align 4
@MAXARGC = common dso_local global i32 0, align 4
@sourcing = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Can't \22!\22 while sourcing\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c" \090123456789$^.:/-+*'\22\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown command: \22%s\22\0A\00", align 1
@F = common dso_local global i32 0, align 4
@cond = common dso_local global i64 0, align 8
@CRCV = common dso_local global i64 0, align 8
@rcvmode = common dso_local global i64 0, align 8
@CSEND = common dso_local global i64 0, align 8
@M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"May not execute \22%s\22 while sending\0A\00", align 1
@I = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"May not execute \22%s\22 while sourcing\0A\00", align 1
@readonly = common dso_local global i64 0, align 8
@W = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"May not execute \22%s\22 -- message file is read only\0A\00", align 1
@R = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Cannot recursively invoke \22%s\22\0A\00", align 1
@P = common dso_local global i32 0, align 4
@T = common dso_local global i32 0, align 4
@msgvec = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"Illegal use of \22message list\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"No applicable messages\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s requires at least %d arg(s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"%s takes no more than %d arg(s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Unknown argtype\00", align 1
@loading = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"autoprint\00", align 1
@dot = common dso_local global %struct.TYPE_3__* null, align 8
@MDELETED = common dso_local global i32 0, align 4
@message = common dso_local global %struct.TYPE_3__* null, align 8
@sawcom = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cmd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @LINESIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @MAXARGC, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store i32 1, i32* %14, align 4
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %30, %2
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isspace(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  br label %24

33:                                               ; preds = %24
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 33
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i64, i64* @sourcing, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %309

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i32 @shell(i8* %45)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %374

47:                                               ; preds = %33
  store i8* %19, i8** %11, align 8
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32* @strchr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8 signext %55)
  %57 = icmp eq i32* %56, null
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i8, i8* %61, align 1
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %11, align 8
  store i8 %63, i8* %64, align 1
  br label %48

66:                                               ; preds = %58
  %67 = load i8*, i8** %11, align 8
  store i8 0, i8* %67, align 1
  %68 = load i64, i64* @sourcing, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i8, i8* %19, align 16
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %374

75:                                               ; preds = %70, %66
  %76 = call %struct.cmd* @lex(i8* %19)
  store %struct.cmd* %76, %struct.cmd** %9, align 8
  %77 = load %struct.cmd*, %struct.cmd** %9, align 8
  %78 = icmp eq %struct.cmd* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %309

81:                                               ; preds = %75
  %82 = load %struct.cmd*, %struct.cmd** %9, align 8
  %83 = getelementptr inbounds %struct.cmd, %struct.cmd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @F, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load i64, i64* @cond, align 8
  %90 = load i64, i64* @CRCV, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i64, i64* @rcvmode, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92, %88
  %96 = load i64, i64* @cond, align 8
  %97 = load i64, i64* @CSEND, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i64, i64* @rcvmode, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %92
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %374

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %81
  %105 = load i64, i64* @rcvmode, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %104
  %108 = load %struct.cmd*, %struct.cmd** %9, align 8
  %109 = getelementptr inbounds %struct.cmd, %struct.cmd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @M, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load %struct.cmd*, %struct.cmd** %9, align 8
  %116 = getelementptr inbounds %struct.cmd, %struct.cmd* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %117)
  br label %309

119:                                              ; preds = %107, %104
  %120 = load i64, i64* @sourcing, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load %struct.cmd*, %struct.cmd** %9, align 8
  %124 = getelementptr inbounds %struct.cmd, %struct.cmd* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @I, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.cmd*, %struct.cmd** %9, align 8
  %131 = getelementptr inbounds %struct.cmd, %struct.cmd* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %132)
  br label %309

134:                                              ; preds = %122, %119
  %135 = load i64, i64* @readonly, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load %struct.cmd*, %struct.cmd** %9, align 8
  %139 = getelementptr inbounds %struct.cmd, %struct.cmd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @W, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.cmd*, %struct.cmd** %9, align 8
  %146 = getelementptr inbounds %struct.cmd, %struct.cmd* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %147)
  br label %309

149:                                              ; preds = %137, %134
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load %struct.cmd*, %struct.cmd** %9, align 8
  %154 = getelementptr inbounds %struct.cmd, %struct.cmd* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @R, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.cmd*, %struct.cmd** %9, align 8
  %161 = getelementptr inbounds %struct.cmd, %struct.cmd* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %162)
  br label %309

164:                                              ; preds = %152, %149
  %165 = load %struct.cmd*, %struct.cmd** %9, align 8
  %166 = getelementptr inbounds %struct.cmd, %struct.cmd* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @F, align 4
  %169 = load i32, i32* @P, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @I, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @M, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @T, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @W, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @R, align 4
  %180 = or i32 %178, %179
  %181 = xor i32 %180, -1
  %182 = and i32 %167, %181
  switch i32 %182, label %306 [
    i32 132, label %183
    i32 131, label %224
    i32 128, label %244
    i32 129, label %259
    i32 130, label %301
  ]

183:                                              ; preds = %164
  %184 = load i8*, i8** @msgvec, align 8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %308

188:                                              ; preds = %183
  %189 = load i8*, i8** %10, align 8
  %190 = load i8*, i8** @msgvec, align 8
  %191 = load %struct.cmd*, %struct.cmd** %9, align 8
  %192 = getelementptr inbounds %struct.cmd, %struct.cmd* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @getmsglist(i8* %189, i8* %190, i32 %193)
  store i32 %194, i32* %12, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  br label %308

197:                                              ; preds = %188
  %198 = load i32, i32* %12, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load %struct.cmd*, %struct.cmd** %9, align 8
  %202 = getelementptr inbounds %struct.cmd, %struct.cmd* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.cmd*, %struct.cmd** %9, align 8
  %205 = getelementptr inbounds %struct.cmd, %struct.cmd* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = call signext i8 @first(i32 %203, i32 %206)
  %208 = load i8*, i8** @msgvec, align 8
  store i8 %207, i8* %208, align 1
  %209 = load i8*, i8** @msgvec, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  store i8 0, i8* %210, align 1
  br label %211

211:                                              ; preds = %200, %197
  %212 = load i8*, i8** @msgvec, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %308

218:                                              ; preds = %211
  %219 = load %struct.cmd*, %struct.cmd** %9, align 8
  %220 = getelementptr inbounds %struct.cmd, %struct.cmd* %219, i32 0, i32 2
  %221 = load i32 (i8*)*, i32 (i8*)** %220, align 8
  %222 = load i8*, i8** @msgvec, align 8
  %223 = call i32 %221(i8* %222)
  store i32 %223, i32* %14, align 4
  br label %308

224:                                              ; preds = %164
  %225 = load i8*, i8** @msgvec, align 8
  %226 = icmp eq i8* %225, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %308

229:                                              ; preds = %224
  %230 = load i8*, i8** %10, align 8
  %231 = load i8*, i8** @msgvec, align 8
  %232 = load %struct.cmd*, %struct.cmd** %9, align 8
  %233 = getelementptr inbounds %struct.cmd, %struct.cmd* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @getmsglist(i8* %230, i8* %231, i32 %234)
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  br label %308

238:                                              ; preds = %229
  %239 = load %struct.cmd*, %struct.cmd** %9, align 8
  %240 = getelementptr inbounds %struct.cmd, %struct.cmd* %239, i32 0, i32 2
  %241 = load i32 (i8*)*, i32 (i8*)** %240, align 8
  %242 = load i8*, i8** @msgvec, align 8
  %243 = call i32 %241(i8* %242)
  store i32 %243, i32* %14, align 4
  br label %308

244:                                              ; preds = %164
  br label %245

245:                                              ; preds = %250, %244
  %246 = load i8*, i8** %10, align 8
  %247 = load i8, i8* %246, align 1
  %248 = call i64 @isspace(i8 zeroext %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load i8*, i8** %10, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %10, align 8
  br label %245

253:                                              ; preds = %245
  %254 = load %struct.cmd*, %struct.cmd** %9, align 8
  %255 = getelementptr inbounds %struct.cmd, %struct.cmd* %254, i32 0, i32 2
  %256 = load i32 (i8*)*, i32 (i8*)** %255, align 8
  %257 = load i8*, i8** %10, align 8
  %258 = call i32 %256(i8* %257)
  store i32 %258, i32* %14, align 4
  br label %308

259:                                              ; preds = %164
  %260 = load i8*, i8** %10, align 8
  %261 = mul nuw i64 8, %21
  %262 = udiv i64 %261, 8
  %263 = trunc i64 %262 to i32
  %264 = call i32 @getrawlist(i8* %260, i8** %22, i32 %263)
  store i32 %264, i32* %12, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %308

267:                                              ; preds = %259
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.cmd*, %struct.cmd** %9, align 8
  %270 = getelementptr inbounds %struct.cmd, %struct.cmd* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %267
  %274 = load %struct.cmd*, %struct.cmd** %9, align 8
  %275 = getelementptr inbounds %struct.cmd, %struct.cmd* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.cmd*, %struct.cmd** %9, align 8
  %278 = getelementptr inbounds %struct.cmd, %struct.cmd* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %276, i32 %279)
  br label %308

281:                                              ; preds = %267
  %282 = load i32, i32* %12, align 4
  %283 = load %struct.cmd*, %struct.cmd** %9, align 8
  %284 = getelementptr inbounds %struct.cmd, %struct.cmd* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = icmp sgt i32 %282, %285
  br i1 %286, label %287, label %295

287:                                              ; preds = %281
  %288 = load %struct.cmd*, %struct.cmd** %9, align 8
  %289 = getelementptr inbounds %struct.cmd, %struct.cmd* %288, i32 0, i32 1
  %290 = load i8*, i8** %289, align 8
  %291 = load %struct.cmd*, %struct.cmd** %9, align 8
  %292 = getelementptr inbounds %struct.cmd, %struct.cmd* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %290, i32 %293)
  br label %308

295:                                              ; preds = %281
  %296 = load %struct.cmd*, %struct.cmd** %9, align 8
  %297 = getelementptr inbounds %struct.cmd, %struct.cmd* %296, i32 0, i32 2
  %298 = load i32 (i8*)*, i32 (i8*)** %297, align 8
  %299 = bitcast i8** %22 to i8*
  %300 = call i32 %298(i8* %299)
  store i32 %300, i32* %14, align 4
  br label %308

301:                                              ; preds = %164
  %302 = load %struct.cmd*, %struct.cmd** %9, align 8
  %303 = getelementptr inbounds %struct.cmd, %struct.cmd* %302, i32 0, i32 2
  %304 = load i32 (i8*)*, i32 (i8*)** %303, align 8
  %305 = call i32 %304(i8* null)
  store i32 %305, i32* %14, align 4
  br label %308

306:                                              ; preds = %164
  %307 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %301, %295, %287, %273, %266, %253, %238, %237, %227, %218, %216, %196, %186
  br label %309

309:                                              ; preds = %308, %159, %144, %129, %114, %79, %41
  %310 = load i32, i32* %14, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %326

312:                                              ; preds = %309
  %313 = load i32, i32* %14, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %374

316:                                              ; preds = %312
  %317 = load i64, i64* @loading, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %316
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %374

320:                                              ; preds = %316
  %321 = load i64, i64* @sourcing, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  %324 = call i32 (...) @unstack()
  br label %325

325:                                              ; preds = %323, %320
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %374

326:                                              ; preds = %309
  %327 = load %struct.cmd*, %struct.cmd** %9, align 8
  %328 = icmp eq %struct.cmd* %327, null
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %374

330:                                              ; preds = %326
  %331 = call i32* @value(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %332 = icmp ne i32* %331, null
  br i1 %332, label %333, label %362

333:                                              ; preds = %330
  %334 = load %struct.cmd*, %struct.cmd** %9, align 8
  %335 = getelementptr inbounds %struct.cmd, %struct.cmd* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @P, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %362

340:                                              ; preds = %333
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dot, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @MDELETED, align 4
  %345 = and i32 %343, %344
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %361

347:                                              ; preds = %340
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dot, align 8
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** @message, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i64 0
  %351 = ptrtoint %struct.TYPE_3__* %348 to i64
  %352 = ptrtoint %struct.TYPE_3__* %350 to i64
  %353 = sub i64 %351, %352
  %354 = sdiv exact i64 %353, 4
  %355 = add nsw i64 %354, 1
  %356 = trunc i64 %355 to i32
  %357 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %356, i32* %357, align 4
  %358 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %358, align 4
  %359 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %360 = call i32 @type(i32* %359)
  br label %361

361:                                              ; preds = %347, %340
  br label %362

362:                                              ; preds = %361, %333, %330
  %363 = load i64, i64* @sourcing, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %373, label %365

365:                                              ; preds = %362
  %366 = load %struct.cmd*, %struct.cmd** %9, align 8
  %367 = getelementptr inbounds %struct.cmd, %struct.cmd* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @T, align 4
  %370 = and i32 %368, %369
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %365
  store i32 1, i32* @sawcom, align 4
  br label %373

373:                                              ; preds = %372, %365, %362
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %374

374:                                              ; preds = %373, %329, %325, %319, %315, %102, %74, %43
  %375 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %375)
  %376 = load i32, i32* %3, align 4
  ret i32 %376
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @shell(i8*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local %struct.cmd* @lex(i8*) #2

declare dso_local i32 @getmsglist(i8*, i8*, i32) #2

declare dso_local signext i8 @first(i32, i32) #2

declare dso_local i32 @getrawlist(i8*, i8**, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @unstack(...) #2

declare dso_local i32* @value(i8*) #2

declare dso_local i32 @type(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
