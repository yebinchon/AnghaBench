; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/col/extr_col.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/col/extr_col.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to limit stdio\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@max_bufd_lines = common dso_local global i32 0, align 4
@compress_spaces = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"bfhl:px\00", align 1
@no_backspaces = common dso_local global i32 0, align 4
@fine = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@BUFFER_MARGIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"bad -l argument, %s: %s\00", align 1
@pass_unknown_seqs = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@CS_NORMAL = common dso_local global i64 0, align 8
@last_set = common dso_local global i64 0, align 8
@lines = common dso_local global %struct.TYPE_6__* null, align 8
@WEOF = common dso_local global i32 0, align 4
@CS_ALTERNATE = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@nblank_lines = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_6__*, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = load i32, i32* @LC_CTYPE, align 4
  %24 = call i32 @setlocale(i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (...) @caph_limit_stdio()
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %2
  %30 = call i64 (...) @caph_enter()
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  store i32 256, i32* @max_bufd_lines, align 4
  store i32 1, i32* @compress_spaces, align 4
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = call i32 @getopt(i32 %36, i8** %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %17, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = load i32, i32* %17, align 4
  switch i32 %41, label %63 [
    i32 98, label %42
    i32 102, label %43
    i32 104, label %44
    i32 108, label %45
    i32 112, label %60
    i32 120, label %61
    i32 63, label %62
  ]

42:                                               ; preds = %40
  store i32 1, i32* @no_backspaces, align 4
  br label %65

43:                                               ; preds = %40
  store i32 1, i32* @fine, align 4
  br label %65

44:                                               ; preds = %40
  store i32 1, i32* @compress_spaces, align 4
  br label %65

45:                                               ; preds = %40
  %46 = load i32, i32* @optarg, align 4
  %47 = load i32, i32* @INT_MAX, align 4
  %48 = load i32, i32* @BUFFER_MARGIN, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sdiv i32 %49, 2
  %51 = call i32 @strtonum(i32 %46, i32 1, i32 %50, i8** %20)
  %52 = mul nsw i32 %51, 2
  store i32 %52, i32* @max_bufd_lines, align 4
  %53 = load i8*, i8** %20, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i8*, i8** %20, align 8
  %57 = load i32, i32* @optarg, align 4
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %45
  br label %65

60:                                               ; preds = %40
  store i32 1, i32* @pass_unknown_seqs, align 4
  br label %65

61:                                               ; preds = %40
  store i32 0, i32* @compress_spaces, align 4
  br label %65

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %40, %62
  %64 = call i32 (...) @usage()
  br label %65

65:                                               ; preds = %63, %61, %60, %59, %44, %43, %42
  br label %35

66:                                               ; preds = %35
  %67 = load i32, i32* @optind, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (...) @usage()
  br label %72

72:                                               ; preds = %70, %66
  store i32 0, i32* %18, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %73 = load i64, i64* @CS_NORMAL, align 8
  store i64 %73, i64* @last_set, align 8
  store i64 %73, i64* %8, align 8
  %74 = call i8* (...) @alloc_line()
  %75 = bitcast i8* %74 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** @lines, align 8
  br label %76

76:                                               ; preds = %379, %148, %144, %129, %124, %122, %120, %117, %116, %108, %93, %90, %89, %72
  %77 = call i32 (...) @getwchar()
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @WEOF, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %380

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @iswgraph(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %150, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  switch i32 %85, label %131 [
    i32 139, label %86
    i32 138, label %93
    i32 137, label %94
    i32 135, label %109
    i32 130, label %117
    i32 132, label %120
    i32 131, label %122
    i32 129, label %124
    i32 128, label %129
  ]

86:                                               ; preds = %84
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %76

90:                                               ; preds = %86
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %11, align 4
  br label %76

93:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %76

94:                                               ; preds = %84
  %95 = call i32 (...) @getwchar()
  switch i32 %95, label %108 [
    i32 7, label %96
    i32 133, label %96
    i32 8, label %98
    i32 134, label %98
    i32 9, label %100
    i32 136, label %100
  ]

96:                                               ; preds = %94, %94
  %97 = call i32 @addto_lineno(i32* %12, i32 -2)
  br label %108

98:                                               ; preds = %94, %94
  %99 = call i32 @addto_lineno(i32* %12, i32 -1)
  br label %108

100:                                              ; preds = %94, %94
  %101 = call i32 @addto_lineno(i32* %12, i32 1)
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %105, %100
  br label %108

108:                                              ; preds = %107, %94, %98, %96
  br label %76

109:                                              ; preds = %84
  %110 = call i32 @addto_lineno(i32* %12, i32 2)
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %114, %109
  store i32 0, i32* %11, align 4
  br label %76

117:                                              ; preds = %84
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %76

120:                                              ; preds = %84
  %121 = load i64, i64* @CS_NORMAL, align 8
  store i64 %121, i64* %8, align 8
  br label %76

122:                                              ; preds = %84
  %123 = load i64, i64* @CS_ALTERNATE, align 8
  store i64 %123, i64* %8, align 8
  br label %76

124:                                              ; preds = %84
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %125, 7
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %76

129:                                              ; preds = %84
  %130 = call i32 @addto_lineno(i32* %12, i32 -2)
  br label %76

131:                                              ; preds = %84
  %132 = load i32, i32* %6, align 4
  %133 = call i64 @iswspace(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i32, i32* %6, align 4
  %137 = call i8* @wcwidth(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %19, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %140, %135
  br label %76

145:                                              ; preds = %131
  %146 = load i32, i32* @pass_unknown_seqs, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %76

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149, %80
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %293

156:                                              ; preds = %150
  %157 = load i32, i32* @fine, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %159, %156
  %164 = phi i1 [ false, %156 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %235

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %185, %171
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = icmp ne %struct.TYPE_6__* %181, null
  br label %183

183:                                              ; preds = %178, %172
  %184 = phi i1 [ false, %172 ], [ %182, %178 ]
  br i1 %184, label %185, label %191

185:                                              ; preds = %183
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  store %struct.TYPE_6__* %188, %struct.TYPE_6__** %9, align 8
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %14, align 4
  br label %172

191:                                              ; preds = %183
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* %14, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %234

197:                                              ; preds = %191
  %198 = load i32, i32* %15, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %197
  br label %201

201:                                              ; preds = %207, %200
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %202, %203
  %205 = load i32, i32* %14, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %201
  %208 = call i8* (...) @alloc_line()
  %209 = bitcast i8* %208 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %209, %struct.TYPE_6__** %21, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 6
  store %struct.TYPE_6__* %210, %struct.TYPE_6__** %212, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  store %struct.TYPE_6__* %213, %struct.TYPE_6__** %215, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %216, %struct.TYPE_6__** @lines, align 8
  store %struct.TYPE_6__* %216, %struct.TYPE_6__** %9, align 8
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %14, align 4
  br label %201

221:                                              ; preds = %201
  br label %233

222:                                              ; preds = %197
  %223 = load i32, i32* %18, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %18, align 4
  %225 = icmp ne i32 %223, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @dowarn(i32 %227)
  br label %229

229:                                              ; preds = %226, %222
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %16, align 4
  %232 = sub nsw i32 %230, %231
  store i32 %232, i32* %12, align 4
  br label %233

233:                                              ; preds = %229, %221
  br label %234

234:                                              ; preds = %233, %191
  br label %264

235:                                              ; preds = %163
  br label %236

236:                                              ; preds = %257, %235
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %237, %238
  %240 = load i32, i32* %14, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %263

242:                                              ; preds = %236
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 4
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = icmp eq %struct.TYPE_6__* %245, null
  br i1 %246, label %247, label %257

247:                                              ; preds = %242
  %248 = call i8* (...) @alloc_line()
  %249 = bitcast i8* %248 to %struct.TYPE_6__*
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 4
  store %struct.TYPE_6__* %249, %struct.TYPE_6__** %251, align 8
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 4
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 6
  store %struct.TYPE_6__* %252, %struct.TYPE_6__** %256, align 8
  br label %257

257:                                              ; preds = %247, %242
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 4
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  store %struct.TYPE_6__* %260, %struct.TYPE_6__** %9, align 8
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  br label %236

263:                                              ; preds = %236
  br label %264

264:                                              ; preds = %263, %234
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* %15, align 4
  %267 = icmp sgt i32 %265, %266
  br i1 %267, label %268, label %292

268:                                              ; preds = %264
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* %15, align 4
  %271 = sub nsw i32 %269, %270
  %272 = load i32, i32* @max_bufd_lines, align 4
  %273 = load i32, i32* @BUFFER_MARGIN, align 4
  %274 = add nsw i32 %272, %273
  %275 = icmp sge i32 %271, %274
  br i1 %275, label %276, label %292

276:                                              ; preds = %268
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @flush_lines(i32 %280)
  store i32 0, i32* %10, align 4
  br label %282

282:                                              ; preds = %279, %276
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* %15, align 4
  %285 = sub nsw i32 %283, %284
  %286 = load i32, i32* @max_bufd_lines, align 4
  %287 = sub nsw i32 %285, %286
  %288 = call i32 @flush_lines(i32 %287)
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* @max_bufd_lines, align 4
  %291 = sub nsw i32 %289, %290
  store i32 %291, i32* %15, align 4
  br label %292

292:                                              ; preds = %282, %268, %264
  br label %293

293:                                              ; preds = %292, %150
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, 1
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp sge i32 %297, %300
  br i1 %301, label %302, label %332

302:                                              ; preds = %293
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = mul nsw i32 %310, 2
  br label %313

312:                                              ; preds = %302
  br label %313

313:                                              ; preds = %312, %307
  %314 = phi i32 [ %311, %307 ], [ 90, %312 ]
  store i32 %314, i32* %22, align 4
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 5
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = load i32, i32* %22, align 4
  %319 = zext i32 %318 to i64
  %320 = mul i64 %319, 24
  %321 = trunc i64 %320 to i32
  %322 = call %struct.TYPE_7__* @realloc(%struct.TYPE_7__* %317, i32 %321)
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 5
  store %struct.TYPE_7__* %322, %struct.TYPE_7__** %324, align 8
  %325 = icmp eq %struct.TYPE_7__* %322, null
  br i1 %325, label %326, label %328

326:                                              ; preds = %313
  %327 = call i32 @err(i32 1, i8* null)
  br label %328

328:                                              ; preds = %326, %313
  %329 = load i32, i32* %22, align 4
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 1
  store i32 %329, i32* %331, align 4
  br label %332

332:                                              ; preds = %328, %293
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 5
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %334, align 8
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %337, align 8
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i64 %340
  store %struct.TYPE_7__* %341, %struct.TYPE_7__** %7, align 8
  %342 = load i32, i32* %6, align 4
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 8
  %345 = load i64, i64* %8, align 8
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 3
  store i64 %345, i64* %347, align 8
  %348 = load i32, i32* %11, align 4
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 1
  store i32 %348, i32* %350, align 4
  %351 = load i32, i32* %6, align 4
  %352 = call i8* @wcwidth(i32 %351)
  %353 = ptrtoint i8* %352 to i32
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 2
  store i32 %353, i32* %355, align 8
  %356 = load i32, i32* %11, align 4
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %332
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 3
  store i32 1, i32* %363, align 4
  br label %368

364:                                              ; preds = %332
  %365 = load i32, i32* %11, align 4
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 2
  store i32 %365, i32* %367, align 8
  br label %368

368:                                              ; preds = %364, %361
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %368
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* %11, align 4
  %378 = add nsw i32 %377, %376
  store i32 %378, i32* %11, align 4
  br label %379

379:                                              ; preds = %373, %368
  br label %76

380:                                              ; preds = %76
  %381 = load i32, i32* @stdin, align 4
  %382 = call i64 @ferror(i32 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %380
  %385 = call i32 @err(i32 1, i8* null)
  br label %386

386:                                              ; preds = %384, %380
  %387 = load i32, i32* %10, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i32, i32* %10, align 4
  %391 = call i32 @flush_lines(i32 %390)
  br label %392

392:                                              ; preds = %389, %386
  br label %393

393:                                              ; preds = %401, %392
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 4
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %395, align 8
  %397 = icmp ne %struct.TYPE_6__* %396, null
  br i1 %397, label %398, label %405

398:                                              ; preds = %393
  %399 = load i32, i32* %14, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %14, align 4
  br label %401

401:                                              ; preds = %398
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 4
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %403, align 8
  store %struct.TYPE_6__* %404, %struct.TYPE_6__** %9, align 8
  br label %393

405:                                              ; preds = %393
  %406 = load i32, i32* %14, align 4
  %407 = load i32, i32* %15, align 4
  %408 = sub nsw i32 %406, %407
  %409 = add nsw i32 %408, 1
  %410 = call i32 @flush_lines(i32 %409)
  %411 = load i64, i64* @last_set, align 8
  %412 = load i64, i64* @CS_NORMAL, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %405
  %415 = call i32 @PUTC(i32 132)
  br label %416

416:                                              ; preds = %414, %405
  %417 = load i32, i32* %13, align 4
  %418 = load i32, i32* %14, align 4
  %419 = icmp sgt i32 %417, %418
  br i1 %419, label %420, label %424

420:                                              ; preds = %416
  %421 = load i32, i32* %13, align 4
  %422 = load i32, i32* %14, align 4
  %423 = sub nsw i32 %421, %422
  store i32 %423, i32* @nblank_lines, align 4
  br label %424

424:                                              ; preds = %420, %416
  %425 = load i32, i32* %13, align 4
  %426 = and i32 %425, 1
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %424
  %429 = load i32, i32* @nblank_lines, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* @nblank_lines, align 4
  br label %431

431:                                              ; preds = %428, %424
  %432 = call i32 (...) @flush_blanks()
  %433 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @caph_limit_stdio(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtonum(i32, i32, i32, i8**) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @alloc_line(...) #1

declare dso_local i32 @getwchar(...) #1

declare dso_local i32 @iswgraph(i32) #1

declare dso_local i32 @addto_lineno(i32*, i32) #1

declare dso_local i64 @iswspace(i32) #1

declare dso_local i8* @wcwidth(i32) #1

declare dso_local i32 @dowarn(i32) #1

declare dso_local i32 @flush_lines(i32) #1

declare dso_local %struct.TYPE_7__* @realloc(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @PUTC(i32) #1

declare dso_local i32 @flush_blanks(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
