; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_parseTemplate.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_parseTemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MAXID = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4
@bol = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c".directive\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ifmode\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"endmode\00", align 1
@curmode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"forchan\00", align 1
@curchan = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"endforchan\00", align 1
@numChannels = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"ifpdgain\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pdgain\00", align 1
@curlpdgain = common dso_local global i32 0, align 4
@pRaw = common dso_local global %struct.TYPE_5__* null, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"endpdgain\00", align 1
@curpdgain = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"forpdgain\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"endforpdgain\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"forpcdac\00", align 1
@curpcdac = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"endforpcdac\00", align 1
@pDataPerChannel = common dso_local global %struct.TYPE_6__* null, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"forctl\00", align 1
@curctl = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"endforctl\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"line %d, unknown directive %s ignored\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"$var\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @parseTemplate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseTemplate(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32, i32* @MAXID, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i32 1, i32* @lineno, align 4
  store i32 1, i32* @bol, align 4
  br label %18

18:                                               ; preds = %311, %285, %44, %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @getc(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %312

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 35
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %274, %26
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @getc(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @EOF, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 10
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i1 [ false, %28 ], [ %35, %33 ]
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %28

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @EOF, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %13, align 4
  br label %313

44:                                               ; preds = %39
  %45 = load i32, i32* @lineno, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @lineno, align 4
  store i32 1, i32* @bol, align 4
  br label %18

47:                                               ; preds = %23
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %275

50:                                               ; preds = %47
  %51 = load i32, i32* @bol, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %275

53:                                               ; preds = %50
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @MAXID, align 4
  %56 = call i32 @token(i32* %54, i8* %17, i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EOF, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %13, align 4
  br label %313

60:                                               ; preds = %53
  %61 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @skipws(i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* @MAXID, align 4
  %68 = call i32 @token(i32* %66, i8* %17, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EOF, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %13, align 4
  br label %313

72:                                               ; preds = %63
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @ifmode(i32* %73, i8* %17)
  br label %274

75:                                               ; preds = %60
  %76 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 -1, i32* @curmode, align 4
  br label %273

79:                                               ; preds = %75
  %80 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @ftell(i32* %83)
  %85 = sext i32 %84 to i64
  %86 = sub i64 %85, 8
  store i64 %86, i64* %9, align 8
  %87 = load i32, i32* @curchan, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* @curchan, align 4
  br label %90

90:                                               ; preds = %89, %82
  br label %272

91:                                               ; preds = %79
  %92 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32, i32* @curchan, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @curchan, align 4
  %97 = load i32, i32* @numChannels, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32*, i32** %3, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i32 @fseek(i32* %100, i64 %101, i32 %102)
  br label %105

104:                                              ; preds = %94
  store i32 -1, i32* @curchan, align 4
  br label %105

105:                                              ; preds = %104, %99
  br label %271

106:                                              ; preds = %91
  %107 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %106
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @skipws(i32* %110)
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* @MAXID, align 4
  %114 = call i32 @token(i32* %112, i8* %17, i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i32, i32* @EOF, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 1, i32* %13, align 4
  br label %313

118:                                              ; preds = %109
  %119 = call i32 @strtoul(i8* %17, i32* null, i32 0)
  store i32 %119, i32* @curlpdgain, align 4
  %120 = load i32, i32* @curlpdgain, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pRaw, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* @curchan, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp sge i32 %120, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @skipto(i32* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* @curlpdgain, align 4
  br label %136

133:                                              ; preds = %118
  %134 = load i32, i32* @curlpdgain, align 4
  %135 = call i32 @pdgain(i32 %134)
  store i32 %135, i32* @curpdgain, align 4
  br label %136

136:                                              ; preds = %133, %130
  br label %270

137:                                              ; preds = %106
  %138 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 -1, i32* @curpdgain, align 4
  store i32 -1, i32* @curlpdgain, align 4
  br label %269

141:                                              ; preds = %137
  %142 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %180

144:                                              ; preds = %141
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @ftell(i32* %145)
  %147 = sext i32 %146 to i64
  %148 = sub i64 %147, 10
  store i64 %148, i64* %10, align 8
  %149 = load i32, i32* @curlpdgain, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %179

151:                                              ; preds = %144
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @skipws(i32* %152)
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* @MAXID, align 4
  %156 = call i32 @token(i32* %154, i8* %17, i32 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %157 = load i32, i32* @EOF, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  store i32 1, i32* %13, align 4
  br label %313

160:                                              ; preds = %151
  %161 = call i32 @strtoul(i8* %17, i32* null, i32 0)
  store i32 %161, i32* @curlpdgain, align 4
  %162 = load i32, i32* @curlpdgain, align 4
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pRaw, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* @curchan, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp sge i32 %162, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %160
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @skipto(i32* %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* @curlpdgain, align 4
  br label %178

175:                                              ; preds = %160
  %176 = load i32, i32* @curlpdgain, align 4
  %177 = call i32 @pdgain(i32 %176)
  store i32 %177, i32* @curpdgain, align 4
  br label %178

178:                                              ; preds = %175, %172
  br label %179

179:                                              ; preds = %178, %144
  br label %268

180:                                              ; preds = %141
  %181 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %180
  %184 = load i32, i32* @curpdgain, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* @curpdgain, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pRaw, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* @curchan, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %185, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %183
  %196 = load i32*, i32** %3, align 8
  %197 = load i64, i64* %10, align 8
  %198 = load i32, i32* @SEEK_SET, align 4
  %199 = call i32 @fseek(i32* %196, i64 %197, i32 %198)
  br label %201

200:                                              ; preds = %183
  store i32 -1, i32* @curpdgain, align 4
  br label %201

201:                                              ; preds = %200, %195
  br label %267

202:                                              ; preds = %180
  %203 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load i32*, i32** %3, align 8
  %207 = call i32 @ftell(i32* %206)
  %208 = sext i32 %207 to i64
  %209 = sub i64 %208, 9
  store i64 %209, i64* %12, align 8
  %210 = load i32, i32* @curpcdac, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  store i32 0, i32* @curpcdac, align 4
  br label %213

213:                                              ; preds = %212, %205
  br label %266

214:                                              ; preds = %202
  %215 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %214
  %218 = load i32, i32* @curpcdac, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* @curpcdac, align 4
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pDataPerChannel, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %219, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %217
  %226 = load i32*, i32** %3, align 8
  %227 = load i64, i64* %12, align 8
  %228 = load i32, i32* @SEEK_SET, align 4
  %229 = call i32 @fseek(i32* %226, i64 %227, i32 %228)
  br label %231

230:                                              ; preds = %217
  store i32 -1, i32* @curpcdac, align 4
  br label %231

231:                                              ; preds = %230, %225
  br label %265

232:                                              ; preds = %214
  %233 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %232
  %236 = load i32*, i32** %3, align 8
  %237 = call i32 @ftell(i32* %236)
  %238 = sext i32 %237 to i64
  %239 = sub i64 %238, 8
  store i64 %239, i64* %11, align 8
  %240 = load i32, i32* @curctl, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %244

242:                                              ; preds = %235
  %243 = call i32 @nextctl(i32 0)
  store i32 %243, i32* @curctl, align 4
  br label %244

244:                                              ; preds = %242, %235
  br label %264

245:                                              ; preds = %232
  %246 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %245
  %249 = load i32, i32* @curctl, align 4
  %250 = add nsw i32 %249, 1
  %251 = call i32 @nextctl(i32 %250)
  store i32 %251, i32* @curctl, align 4
  %252 = load i32, i32* @curctl, align 4
  %253 = icmp ne i32 %252, -1
  br i1 %253, label %254, label %259

254:                                              ; preds = %248
  %255 = load i32*, i32** %3, align 8
  %256 = load i64, i64* %11, align 8
  %257 = load i32, i32* @SEEK_SET, align 4
  %258 = call i32 @fseek(i32* %255, i64 %256, i32 %257)
  br label %259

259:                                              ; preds = %254, %248
  br label %263

260:                                              ; preds = %245
  %261 = load i32, i32* @lineno, align 4
  %262 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %261, i8* %17)
  br label %263

263:                                              ; preds = %260, %259
  br label %264

264:                                              ; preds = %263, %244
  br label %265

265:                                              ; preds = %264, %231
  br label %266

266:                                              ; preds = %265, %213
  br label %267

267:                                              ; preds = %266, %201
  br label %268

268:                                              ; preds = %267, %179
  br label %269

269:                                              ; preds = %268, %140
  br label %270

270:                                              ; preds = %269, %136
  br label %271

271:                                              ; preds = %270, %105
  br label %272

272:                                              ; preds = %271, %90
  br label %273

273:                                              ; preds = %272, %78
  br label %274

274:                                              ; preds = %273, %72
  br label %27

275:                                              ; preds = %50, %47
  %276 = load i32, i32* %5, align 4
  %277 = icmp eq i32 %276, 36
  br i1 %277, label %278, label %288

278:                                              ; preds = %275
  %279 = load i32*, i32** %3, align 8
  %280 = load i32, i32* @MAXID, align 4
  %281 = call i32 @token(i32* %279, i8* %17, i32 %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %282 = load i32, i32* @EOF, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  store i32 1, i32* %13, align 4
  br label %313

285:                                              ; preds = %278
  %286 = load i32*, i32** %4, align 8
  %287 = call i32 @eevar(i32* %286, i8* %17)
  br label %18

288:                                              ; preds = %275
  %289 = load i32, i32* %5, align 4
  %290 = icmp eq i32 %289, 92
  br i1 %290, label %291, label %299

291:                                              ; preds = %288
  %292 = load i32*, i32** %3, align 8
  %293 = call i32 @getc(i32* %292)
  store i32 %293, i32* %5, align 4
  %294 = load i32, i32* %5, align 4
  %295 = load i32, i32* @EOF, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %291
  store i32 1, i32* %13, align 4
  br label %313

298:                                              ; preds = %291
  br label %299

299:                                              ; preds = %298, %288
  %300 = load i32, i32* %5, align 4
  %301 = load i32*, i32** %4, align 8
  %302 = call i32 @fputc(i32 %300, i32* %301)
  %303 = load i32, i32* %5, align 4
  %304 = icmp eq i32 %303, 10
  %305 = zext i1 %304 to i32
  store i32 %305, i32* @bol, align 4
  %306 = load i32, i32* @bol, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %299
  %309 = load i32, i32* @lineno, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* @lineno, align 4
  br label %311

311:                                              ; preds = %308, %299
  br label %18

312:                                              ; preds = %18
  store i32 0, i32* %13, align 4
  br label %313

313:                                              ; preds = %312, %297, %284, %159, %117, %71, %59, %43
  %314 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %314)
  %315 = load i32, i32* %13, align 4
  switch i32 %315, label %317 [
    i32 0, label %316
    i32 1, label %316
  ]

316:                                              ; preds = %313, %313
  ret void

317:                                              ; preds = %313
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getc(i32*) #2

declare dso_local i32 @token(i32*, i8*, i32, i8*) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @skipws(i32*) #2

declare dso_local i32 @ifmode(i32*, i8*) #2

declare dso_local i32 @ftell(i32*) #2

declare dso_local i32 @fseek(i32*, i64, i32) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @skipto(i32*, i8*) #2

declare dso_local i32 @pdgain(i32) #2

declare dso_local i32 @nextctl(i32) #2

declare dso_local i32 @warnx(i8*, i32, i8*) #2

declare dso_local i32 @eevar(i32*, i8*) #2

declare dso_local i32 @fputc(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
