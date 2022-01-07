; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/indent_wrapper/extr_indent_wrapper.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/indent_wrapper/extr_indent_wrapper.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32*, i32*, i64 }

@SIGPIPE = common dso_local global i32 0, align 4
@sigpipe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dDvg:s:c:ht:\00", align 1
@opt_verbose = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@opt_diff_tool = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"git show -U1000000 %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"git diff -U1000000\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"svn diff --diff-cmd=diff -x -U1000000\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"svn diff --diff-cmd=diff -x -U1000000 -r %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BLOCK_ADD = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i64 0, align 8
@entry = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Non printable characters are not allowed: '%c'\00", align 1
@BLOCK_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"L%02d%c|\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Unbalanced parenthesis\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"String without end\00", align 1
@.str.12 = private unnamed_addr constant [599 x i8] c"indent -Tbool -Tclass -TFILE -TLIST_ENTRY -TLIST_HEAD -TSLIST_ENTRY -TSLIST_HEAD -TSTAILQ_ENTRY -TSTAILQ_HEAD -TTAILQ_ENTRY -TTAILQ_HEAD -T__aligned -T__packed -T__unused -T__used -Tfd_set -Toss_mixerinfo -Tu_char -Tu_int -Tu_long -Tu_short -ta -st -bad -bap -nbbb -nbc -br -nbs -c41 -cd41 -cdb -ce -ci4 -cli0 -d0 -di8 -ndj -ei -nfc1 -nfcb -i8 -ip8 -l79 -lc77 -ldi0 -nlp -npcs -psl -sc -nsob -nv  | sed -e 's/_HEAD [(]/_HEAD(/g' -e 's/_ENTRY [(]/_ENTRY(/g' -e 's/\09__aligned/ __aligned/g' -e 's/\09__packed/ __packed/g' -e 's/\09__unused/ __unused/g' -e 's/\09__used/ __used/g' -e 's/^#define /#define\09/g'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.block*, align 8
  %12 = alloca %struct.block*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [256 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.block* null, %struct.block** %11, align 8
  store %struct.block* null, %struct.block** %12, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %25, align 4
  %27 = load i32, i32* @SIGPIPE, align 4
  %28 = call i32 @signal(i32 %27, i32* @sigpipe)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  store i8 0, i8* %29, align 16
  br label %30

30:                                               ; preds = %62, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %24, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load i32, i32* %24, align 4
  switch i32 %36, label %60 [
    i32 118, label %37
    i32 116, label %40
    i32 103, label %42
    i32 100, label %46
    i32 68, label %49
    i32 115, label %52
    i32 99, label %56
  ]

37:                                               ; preds = %35
  %38 = load i64, i64* @opt_verbose, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @opt_verbose, align 8
  br label %62

40:                                               ; preds = %35
  %41 = load i8*, i8** @optarg, align 8
  store i8* %41, i8** @opt_diff_tool, align 8
  br label %62

42:                                               ; preds = %35
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %43, i32 256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %62

46:                                               ; preds = %35
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %62

49:                                               ; preds = %35
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 256, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %62

52:                                               ; preds = %35
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %53, i32 256, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %62

56:                                               ; preds = %35
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %58 = load i8*, i8** @optarg, align 8
  %59 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  br label %62

60:                                               ; preds = %35
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %56, %52, %49, %46, %42, %40, %37
  br label %30

63:                                               ; preds = %30
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %65 = load i8, i8* %64, align 16
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 (...) @usage()
  br label %70

70:                                               ; preds = %68, %63
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %72 = call i32 @cmd_block_process(i32* null, i32* %6, i8* %71)
  %73 = call i32 @TAILQ_INIT(i32* %7)
  %74 = call i32 @TAILQ_INIT(i32* %8)
  %75 = call i64 @size_block(i32* %6)
  store i64 %75, i64* %13, align 8
  %76 = call %struct.block* (...) @alloc_block()
  store %struct.block* %76, %struct.block** %11, align 8
  store i64 0, i64* %15, align 8
  %77 = call %struct.block* (...) @alloc_block()
  store %struct.block* %77, %struct.block** %12, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %14, align 8
  br label %78

78:                                               ; preds = %321, %70
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %322

82:                                               ; preds = %78
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @peek_block(i32* %6, i64 %83)
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = and i32 %85, 255
  switch i32 %86, label %302 [
    i32 43, label %87
    i32 45, label %152
    i32 32, label %210
  ]

87:                                               ; preds = %82
  %88 = load i32, i32* %22, align 4
  %89 = load i64, i64* %14, align 8
  %90 = add nsw i64 %89, 1
  %91 = call i32 @peek_block(i32* %6, i64 %90)
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load i32, i32* %22, align 4
  %95 = load i64, i64* %14, align 8
  %96 = add nsw i64 %95, 2
  %97 = call i32 @peek_block(i32* %6, i64 %96)
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load i64, i64* %14, align 8
  %101 = add nsw i64 %100, 3
  %102 = call i32 @peek_block(i32* %6, i64 %101)
  %103 = and i32 %102, 255
  %104 = icmp eq i32 32, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %265

106:                                              ; preds = %99, %93, %87
  %107 = load i32, i32* %20, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %303

110:                                              ; preds = %106
  %111 = load i64, i64* %14, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %148, %110
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %151

117:                                              ; preds = %113
  %118 = load i64, i64* %14, align 8
  %119 = call i32 @peek_block(i32* %6, i64 %118)
  store i32 %119, i32* %22, align 4
  %120 = load i32, i32* @BLOCK_ADD, align 4
  %121 = ashr i32 %120, 8
  %122 = load %struct.block*, %struct.block** %11, align 8
  %123 = getelementptr inbounds %struct.block, %struct.block* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %15, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %121, i32* %126, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load %struct.block*, %struct.block** %11, align 8
  %129 = getelementptr inbounds %struct.block, %struct.block* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %15, align 8
  %133 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %127, i32* %133, align 4
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* @BLOCK_SIZE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %117
  %138 = load %struct.block*, %struct.block** %11, align 8
  %139 = load i32, i32* @entry, align 4
  %140 = call i32 @TAILQ_INSERT_TAIL(i32* %7, %struct.block* %138, i32 %139)
  %141 = call %struct.block* (...) @alloc_block()
  store %struct.block* %141, %struct.block** %11, align 8
  store i64 0, i64* %15, align 8
  br label %142

142:                                              ; preds = %137, %117
  %143 = load i32, i32* %22, align 4
  %144 = and i32 %143, 255
  %145 = icmp eq i32 %144, 10
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %151

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %14, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %14, align 8
  br label %113

151:                                              ; preds = %146, %113
  br label %303

152:                                              ; preds = %82
  %153 = load i32, i32* %22, align 4
  %154 = load i64, i64* %14, align 8
  %155 = add nsw i64 %154, 1
  %156 = call i32 @peek_block(i32* %6, i64 %155)
  %157 = icmp eq i32 %153, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %152
  %159 = load i32, i32* %22, align 4
  %160 = load i64, i64* %14, align 8
  %161 = add nsw i64 %160, 2
  %162 = call i32 @peek_block(i32* %6, i64 %161)
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %158
  %165 = load i64, i64* %14, align 8
  %166 = add nsw i64 %165, 3
  %167 = call i32 @peek_block(i32* %6, i64 %166)
  %168 = and i32 %167, 255
  %169 = icmp eq i32 32, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %265

171:                                              ; preds = %164, %158, %152
  %172 = load i32, i32* %20, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %303

175:                                              ; preds = %171
  %176 = load i64, i64* %14, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %14, align 8
  br label %178

178:                                              ; preds = %206, %175
  %179 = load i64, i64* %14, align 8
  %180 = load i64, i64* %13, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %178
  %183 = load i64, i64* %14, align 8
  %184 = call i32 @peek_block(i32* %6, i64 %183)
  store i32 %184, i32* %22, align 4
  %185 = load i32, i32* %22, align 4
  %186 = load %struct.block*, %struct.block** %12, align 8
  %187 = getelementptr inbounds %struct.block, %struct.block* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %16, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %16, align 8
  %191 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32 %185, i32* %191, align 4
  %192 = load i64, i64* %16, align 8
  %193 = load i64, i64* @BLOCK_SIZE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %182
  %196 = load %struct.block*, %struct.block** %12, align 8
  %197 = load i32, i32* @entry, align 4
  %198 = call i32 @TAILQ_INSERT_TAIL(i32* %8, %struct.block* %196, i32 %197)
  %199 = call %struct.block* (...) @alloc_block()
  store %struct.block* %199, %struct.block** %12, align 8
  store i64 0, i64* %16, align 8
  br label %200

200:                                              ; preds = %195, %182
  %201 = load i32, i32* %22, align 4
  %202 = and i32 %201, 255
  %203 = icmp eq i32 %202, 10
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  br label %209

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %205
  %207 = load i64, i64* %14, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %14, align 8
  br label %178

209:                                              ; preds = %204, %178
  br label %303

210:                                              ; preds = %82
  %211 = load i32, i32* %20, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  br label %303

214:                                              ; preds = %210
  %215 = load i64, i64* %14, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %14, align 8
  br label %217

217:                                              ; preds = %261, %214
  %218 = load i64, i64* %14, align 8
  %219 = load i64, i64* %13, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %264

221:                                              ; preds = %217
  %222 = load i64, i64* %14, align 8
  %223 = call i32 @peek_block(i32* %6, i64 %222)
  store i32 %223, i32* %22, align 4
  %224 = load i32, i32* %22, align 4
  %225 = load %struct.block*, %struct.block** %11, align 8
  %226 = getelementptr inbounds %struct.block, %struct.block* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* %15, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %15, align 8
  %230 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32 %224, i32* %230, align 4
  %231 = load i64, i64* %15, align 8
  %232 = load i64, i64* @BLOCK_SIZE, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %221
  %235 = load %struct.block*, %struct.block** %11, align 8
  %236 = load i32, i32* @entry, align 4
  %237 = call i32 @TAILQ_INSERT_TAIL(i32* %7, %struct.block* %235, i32 %236)
  %238 = call %struct.block* (...) @alloc_block()
  store %struct.block* %238, %struct.block** %11, align 8
  store i64 0, i64* %15, align 8
  br label %239

239:                                              ; preds = %234, %221
  %240 = load i32, i32* %22, align 4
  %241 = load %struct.block*, %struct.block** %12, align 8
  %242 = getelementptr inbounds %struct.block, %struct.block* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* %16, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %16, align 8
  %246 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32 %240, i32* %246, align 4
  %247 = load i64, i64* %16, align 8
  %248 = load i64, i64* @BLOCK_SIZE, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %239
  %251 = load %struct.block*, %struct.block** %12, align 8
  %252 = load i32, i32* @entry, align 4
  %253 = call i32 @TAILQ_INSERT_TAIL(i32* %8, %struct.block* %251, i32 %252)
  %254 = call %struct.block* (...) @alloc_block()
  store %struct.block* %254, %struct.block** %12, align 8
  store i64 0, i64* %16, align 8
  br label %255

255:                                              ; preds = %250, %239
  %256 = load i32, i32* %22, align 4
  %257 = and i32 %256, 255
  %258 = icmp eq i32 %257, 10
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  br label %264

260:                                              ; preds = %255
  br label %261

261:                                              ; preds = %260
  %262 = load i64, i64* %14, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %14, align 8
  br label %217

264:                                              ; preds = %259, %217
  br label %303

265:                                              ; preds = %170, %105
  %266 = load i64, i64* %14, align 8
  %267 = add nsw i64 %266, 3
  store i64 %267, i64* %14, align 8
  br label %268

268:                                              ; preds = %298, %265
  %269 = load i64, i64* %14, align 8
  %270 = load i64, i64* %13, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %301

272:                                              ; preds = %268
  %273 = load i64, i64* %14, align 8
  %274 = call i32 @peek_block(i32* %6, i64 %273)
  store i32 %274, i32* %22, align 4
  %275 = load i64, i64* %14, align 8
  %276 = add nsw i64 %275, 1
  %277 = call i32 @peek_block(i32* %6, i64 %276)
  store i32 %277, i32* %23, align 4
  %278 = load i32, i32* %22, align 4
  %279 = and i32 %278, 255
  %280 = icmp eq i32 %279, 46
  br i1 %280, label %281, label %292

281:                                              ; preds = %272
  %282 = load i32, i32* %23, align 4
  %283 = and i32 %282, 255
  %284 = icmp eq i32 %283, 99
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = load i32, i32* %23, align 4
  %287 = and i32 %286, 255
  %288 = icmp eq i32 %287, 104
  br label %289

289:                                              ; preds = %285, %281
  %290 = phi i1 [ true, %281 ], [ %288, %285 ]
  %291 = zext i1 %290 to i32
  store i32 %291, i32* %20, align 4
  br label %292

292:                                              ; preds = %289, %272
  %293 = load i32, i32* %22, align 4
  %294 = and i32 %293, 255
  %295 = icmp eq i32 %294, 10
  br i1 %295, label %296, label %297

296:                                              ; preds = %292
  br label %301

297:                                              ; preds = %292
  br label %298

298:                                              ; preds = %297
  %299 = load i64, i64* %14, align 8
  %300 = add nsw i64 %299, 1
  store i64 %300, i64* %14, align 8
  br label %268

301:                                              ; preds = %296, %268
  br label %302

302:                                              ; preds = %82, %301
  br label %303

303:                                              ; preds = %302, %264, %213, %209, %174, %151, %109
  br label %304

304:                                              ; preds = %318, %303
  %305 = load i64, i64* %14, align 8
  %306 = load i64, i64* %13, align 8
  %307 = icmp slt i64 %305, %306
  br i1 %307, label %308, label %321

308:                                              ; preds = %304
  %309 = load i64, i64* %14, align 8
  %310 = call i32 @peek_block(i32* %6, i64 %309)
  store i32 %310, i32* %22, align 4
  %311 = load i32, i32* %22, align 4
  %312 = and i32 %311, 255
  %313 = icmp eq i32 %312, 10
  br i1 %313, label %314, label %317

314:                                              ; preds = %308
  %315 = load i64, i64* %14, align 8
  %316 = add nsw i64 %315, 1
  store i64 %316, i64* %14, align 8
  br label %321

317:                                              ; preds = %308
  br label %318

318:                                              ; preds = %317
  %319 = load i64, i64* %14, align 8
  %320 = add nsw i64 %319, 1
  store i64 %320, i64* %14, align 8
  br label %304

321:                                              ; preds = %314, %304
  br label %78

322:                                              ; preds = %78
  %323 = load i64, i64* %15, align 8
  %324 = load %struct.block*, %struct.block** %11, align 8
  %325 = getelementptr inbounds %struct.block, %struct.block* %324, i32 0, i32 2
  store i64 %323, i64* %325, align 8
  %326 = load i64, i64* %16, align 8
  %327 = load %struct.block*, %struct.block** %12, align 8
  %328 = getelementptr inbounds %struct.block, %struct.block* %327, i32 0, i32 2
  store i64 %326, i64* %328, align 8
  %329 = load %struct.block*, %struct.block** %11, align 8
  %330 = load i32, i32* @entry, align 4
  %331 = call i32 @TAILQ_INSERT_TAIL(i32* %7, %struct.block* %329, i32 %330)
  %332 = load %struct.block*, %struct.block** %12, align 8
  %333 = load i32, i32* @entry, align 4
  %334 = call i32 @TAILQ_INSERT_TAIL(i32* %8, %struct.block* %332, i32 %333)
  %335 = call i64 @size_block(i32* %7)
  store i64 %335, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %336

336:                                              ; preds = %379, %322
  %337 = load i64, i64* %14, align 8
  %338 = load i64, i64* %13, align 8
  %339 = icmp ne i64 %337, %338
  br i1 %339, label %340, label %382

340:                                              ; preds = %336
  %341 = load i64, i64* %14, align 8
  %342 = call i32 @peek_block(i32* %7, i64 %341)
  %343 = and i32 %342, 255
  store i32 %343, i32* %22, align 4
  %344 = load i32, i32* %22, align 4
  %345 = and i32 %344, 128
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %367, label %347

347:                                              ; preds = %340
  %348 = load i32, i32* %22, align 4
  %349 = icmp ne i32 %348, 9
  br i1 %349, label %350, label %367

350:                                              ; preds = %347
  %351 = load i32, i32* %22, align 4
  %352 = icmp ne i32 %351, 13
  br i1 %352, label %353, label %367

353:                                              ; preds = %350
  %354 = load i32, i32* %22, align 4
  %355 = icmp ne i32 %354, 10
  br i1 %355, label %356, label %367

356:                                              ; preds = %353
  %357 = load i32, i32* %22, align 4
  %358 = icmp ne i32 %357, 32
  br i1 %358, label %359, label %367

359:                                              ; preds = %356
  %360 = load i32, i32* %22, align 4
  %361 = call i32 @isprint(i32 %360) #3
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load i32, i32* @EX_SOFTWARE, align 4
  %365 = load i32, i32* %22, align 4
  %366 = call i32 (i32, i8*, ...) @errx(i32 %364, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %365)
  br label %378

367:                                              ; preds = %359, %356, %353, %350, %347, %340
  %368 = load i32, i32* %22, align 4
  %369 = and i32 %368, 128
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %367
  %372 = load i64, i64* %14, align 8
  %373 = load i32, i32* %22, align 4
  %374 = load i32, i32* @BLOCK_MASK, align 4
  %375 = or i32 %373, %374
  %376 = call i32 @set_block(i32* %7, i64 %372, i32 %375)
  br label %377

377:                                              ; preds = %371, %367
  br label %378

378:                                              ; preds = %377, %363
  br label %379

379:                                              ; preds = %378
  %380 = load i64, i64* %14, align 8
  %381 = add nsw i64 %380, 1
  store i64 %381, i64* %14, align 8
  br label %336

382:                                              ; preds = %336
  store i64 0, i64* %14, align 8
  br label %383

383:                                              ; preds = %500, %382
  %384 = load i64, i64* %14, align 8
  %385 = load i64, i64* %13, align 8
  %386 = icmp slt i64 %384, %385
  br i1 %386, label %387, label %503

387:                                              ; preds = %383
  %388 = load i64, i64* %14, align 8
  %389 = call i32 @peek_block(i32* %7, i64 %388)
  store i32 %389, i32* %22, align 4
  %390 = load i64, i64* %14, align 8
  %391 = add nsw i64 %390, 1
  %392 = call i32 @peek_block(i32* %7, i64 %391)
  store i32 %392, i32* %23, align 4
  %393 = load i32, i32* %22, align 4
  %394 = and i32 %393, 255
  %395 = icmp eq i32 %394, 47
  br i1 %395, label %396, label %435

396:                                              ; preds = %387
  %397 = load i32, i32* %23, align 4
  %398 = and i32 %397, 255
  %399 = icmp eq i32 %398, 47
  br i1 %399, label %400, label %435

400:                                              ; preds = %396
  %401 = load i64, i64* %14, align 8
  %402 = load i32, i32* %22, align 4
  %403 = load i32, i32* @BLOCK_MASK, align 4
  %404 = or i32 %402, %403
  %405 = call i32 @set_block(i32* %7, i64 %401, i32 %404)
  %406 = load i64, i64* %14, align 8
  %407 = add nsw i64 %406, 1
  %408 = load i32, i32* %23, align 4
  %409 = load i32, i32* @BLOCK_MASK, align 4
  %410 = or i32 %408, %409
  %411 = call i32 @set_block(i32* %7, i64 %407, i32 %410)
  %412 = load i64, i64* %14, align 8
  %413 = add nsw i64 %412, 2
  store i64 %413, i64* %14, align 8
  br label %414

414:                                              ; preds = %431, %400
  %415 = load i64, i64* %14, align 8
  %416 = load i64, i64* %13, align 8
  %417 = icmp slt i64 %415, %416
  br i1 %417, label %418, label %434

418:                                              ; preds = %414
  %419 = load i64, i64* %14, align 8
  %420 = call i32 @peek_block(i32* %7, i64 %419)
  store i32 %420, i32* %22, align 4
  %421 = load i32, i32* %22, align 4
  %422 = and i32 %421, 255
  %423 = icmp eq i32 %422, 10
  br i1 %423, label %424, label %425

424:                                              ; preds = %418
  br label %434

425:                                              ; preds = %418
  %426 = load i64, i64* %14, align 8
  %427 = load i32, i32* %22, align 4
  %428 = load i32, i32* @BLOCK_MASK, align 4
  %429 = or i32 %427, %428
  %430 = call i32 @set_block(i32* %7, i64 %426, i32 %429)
  br label %431

431:                                              ; preds = %425
  %432 = load i64, i64* %14, align 8
  %433 = add nsw i64 %432, 1
  store i64 %433, i64* %14, align 8
  br label %414

434:                                              ; preds = %424, %414
  br label %499

435:                                              ; preds = %396, %387
  %436 = load i32, i32* %22, align 4
  %437 = and i32 %436, 255
  %438 = icmp eq i32 %437, 47
  br i1 %438, label %439, label %498

439:                                              ; preds = %435
  %440 = load i32, i32* %23, align 4
  %441 = and i32 %440, 255
  %442 = icmp eq i32 %441, 42
  br i1 %442, label %443, label %498

443:                                              ; preds = %439
  %444 = load i64, i64* %14, align 8
  %445 = load i32, i32* %22, align 4
  %446 = load i32, i32* @BLOCK_MASK, align 4
  %447 = or i32 %445, %446
  %448 = call i32 @set_block(i32* %7, i64 %444, i32 %447)
  %449 = load i64, i64* %14, align 8
  %450 = add nsw i64 %449, 1
  %451 = load i32, i32* %23, align 4
  %452 = load i32, i32* @BLOCK_MASK, align 4
  %453 = or i32 %451, %452
  %454 = call i32 @set_block(i32* %7, i64 %450, i32 %453)
  %455 = load i64, i64* %14, align 8
  %456 = add nsw i64 %455, 2
  store i64 %456, i64* %14, align 8
  br label %457

457:                                              ; preds = %494, %443
  %458 = load i64, i64* %14, align 8
  %459 = load i64, i64* %13, align 8
  %460 = icmp slt i64 %458, %459
  br i1 %460, label %461, label %497

461:                                              ; preds = %457
  %462 = load i64, i64* %14, align 8
  %463 = call i32 @peek_block(i32* %7, i64 %462)
  store i32 %463, i32* %22, align 4
  %464 = load i64, i64* %14, align 8
  %465 = add nsw i64 %464, 1
  %466 = call i32 @peek_block(i32* %7, i64 %465)
  store i32 %466, i32* %23, align 4
  %467 = load i32, i32* %22, align 4
  %468 = and i32 %467, 255
  %469 = icmp eq i32 %468, 42
  br i1 %469, label %470, label %488

470:                                              ; preds = %461
  %471 = load i32, i32* %23, align 4
  %472 = and i32 %471, 255
  %473 = icmp eq i32 %472, 47
  br i1 %473, label %474, label %488

474:                                              ; preds = %470
  %475 = load i64, i64* %14, align 8
  %476 = load i32, i32* %22, align 4
  %477 = load i32, i32* @BLOCK_MASK, align 4
  %478 = or i32 %476, %477
  %479 = call i32 @set_block(i32* %7, i64 %475, i32 %478)
  %480 = load i64, i64* %14, align 8
  %481 = add nsw i64 %480, 1
  %482 = load i32, i32* %23, align 4
  %483 = load i32, i32* @BLOCK_MASK, align 4
  %484 = or i32 %482, %483
  %485 = call i32 @set_block(i32* %7, i64 %481, i32 %484)
  %486 = load i64, i64* %14, align 8
  %487 = add nsw i64 %486, 1
  store i64 %487, i64* %14, align 8
  br label %497

488:                                              ; preds = %470, %461
  %489 = load i64, i64* %14, align 8
  %490 = load i32, i32* %22, align 4
  %491 = load i32, i32* @BLOCK_MASK, align 4
  %492 = or i32 %490, %491
  %493 = call i32 @set_block(i32* %7, i64 %489, i32 %492)
  br label %494

494:                                              ; preds = %488
  %495 = load i64, i64* %14, align 8
  %496 = add nsw i64 %495, 1
  store i64 %496, i64* %14, align 8
  br label %457

497:                                              ; preds = %474, %457
  br label %498

498:                                              ; preds = %497, %439, %435
  br label %499

499:                                              ; preds = %498, %434
  br label %500

500:                                              ; preds = %499
  %501 = load i64, i64* %14, align 8
  %502 = add nsw i64 %501, 1
  store i64 %502, i64* %14, align 8
  br label %383

503:                                              ; preds = %383
  store i64 0, i64* %14, align 8
  br label %504

504:                                              ; preds = %618, %503
  %505 = load i64, i64* %14, align 8
  %506 = load i64, i64* %13, align 8
  %507 = icmp slt i64 %505, %506
  br i1 %507, label %508, label %621

508:                                              ; preds = %504
  %509 = load i64, i64* %14, align 8
  %510 = call i32 @peek_block(i32* %7, i64 %509)
  store i32 %510, i32* %22, align 4
  %511 = load i32, i32* %22, align 4
  %512 = load i32, i32* @BLOCK_MASK, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %508
  br label %618

516:                                              ; preds = %508
  %517 = load i32, i32* %18, align 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %567

519:                                              ; preds = %516
  %520 = load i32, i32* %22, align 4
  %521 = and i32 %520, 255
  %522 = icmp eq i32 %521, 35
  br i1 %522, label %523, label %567

523:                                              ; preds = %519
  store i32 0, i32* %26, align 4
  %524 = load i64, i64* %14, align 8
  %525 = load i32, i32* %22, align 4
  %526 = load i32, i32* @BLOCK_MASK, align 4
  %527 = or i32 %525, %526
  %528 = call i32 @set_block(i32* %7, i64 %524, i32 %527)
  %529 = load i64, i64* %14, align 8
  %530 = add nsw i64 %529, 1
  store i64 %530, i64* %14, align 8
  br label %531

531:                                              ; preds = %563, %523
  %532 = load i64, i64* %14, align 8
  %533 = load i64, i64* %13, align 8
  %534 = icmp slt i64 %532, %533
  br i1 %534, label %535, label %566

535:                                              ; preds = %531
  %536 = load i64, i64* %14, align 8
  %537 = call i32 @peek_block(i32* %7, i64 %536)
  store i32 %537, i32* %22, align 4
  %538 = load i32, i32* %22, align 4
  %539 = and i32 %538, 255
  %540 = icmp eq i32 %539, 10
  br i1 %540, label %541, label %546

541:                                              ; preds = %535
  %542 = load i32, i32* %26, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %545, label %544

544:                                              ; preds = %541
  br label %566

545:                                              ; preds = %541
  store i32 0, i32* %26, align 4
  br label %546

546:                                              ; preds = %545, %535
  %547 = load i32, i32* %22, align 4
  %548 = load i32, i32* @BLOCK_MASK, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %546
  br label %563

552:                                              ; preds = %546
  %553 = load i32, i32* %22, align 4
  %554 = and i32 %553, 255
  %555 = icmp eq i32 %554, 92
  br i1 %555, label %556, label %557

556:                                              ; preds = %552
  store i32 1, i32* %26, align 4
  br label %557

557:                                              ; preds = %556, %552
  %558 = load i64, i64* %14, align 8
  %559 = load i32, i32* %22, align 4
  %560 = load i32, i32* @BLOCK_MASK, align 4
  %561 = or i32 %559, %560
  %562 = call i32 @set_block(i32* %7, i64 %558, i32 %561)
  br label %563

563:                                              ; preds = %557, %551
  %564 = load i64, i64* %14, align 8
  %565 = add nsw i64 %564, 1
  store i64 %565, i64* %14, align 8
  br label %531

566:                                              ; preds = %544, %531
  br label %567

567:                                              ; preds = %566, %519, %516
  %568 = load i32, i32* %22, align 4
  %569 = and i32 %568, 255
  %570 = icmp eq i32 %569, 34
  br i1 %570, label %575, label %571

571:                                              ; preds = %567
  %572 = load i32, i32* %22, align 4
  %573 = and i32 %572, 255
  %574 = icmp eq i32 %573, 39
  br i1 %574, label %575, label %597

575:                                              ; preds = %571, %567
  %576 = load i32, i32* %18, align 4
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %575
  %579 = load i32, i32* %22, align 4
  %580 = and i32 %579, 255
  store i32 %580, i32* %18, align 4
  br label %591

581:                                              ; preds = %575
  %582 = load i32, i32* %19, align 4
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %590

584:                                              ; preds = %581
  %585 = load i32, i32* %18, align 4
  %586 = load i32, i32* %22, align 4
  %587 = and i32 %586, 255
  %588 = icmp eq i32 %585, %587
  br i1 %588, label %589, label %590

589:                                              ; preds = %584
  store i32 0, i32* %18, align 4
  br label %590

590:                                              ; preds = %589, %584, %581
  br label %591

591:                                              ; preds = %590, %578
  store i32 0, i32* %19, align 4
  %592 = load i64, i64* %14, align 8
  %593 = load i32, i32* %22, align 4
  %594 = load i32, i32* @BLOCK_MASK, align 4
  %595 = or i32 %593, %594
  %596 = call i32 @set_block(i32* %7, i64 %592, i32 %595)
  br label %617

597:                                              ; preds = %571
  %598 = load i32, i32* %18, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %616

600:                                              ; preds = %597
  %601 = load i32, i32* %22, align 4
  %602 = and i32 %601, 255
  %603 = icmp eq i32 %602, 92
  br i1 %603, label %604, label %609

604:                                              ; preds = %600
  %605 = load i32, i32* %19, align 4
  %606 = icmp ne i32 %605, 0
  %607 = xor i1 %606, true
  %608 = zext i1 %607 to i32
  store i32 %608, i32* %19, align 4
  br label %610

609:                                              ; preds = %600
  store i32 0, i32* %19, align 4
  br label %610

610:                                              ; preds = %609, %604
  %611 = load i64, i64* %14, align 8
  %612 = load i32, i32* %22, align 4
  %613 = load i32, i32* @BLOCK_MASK, align 4
  %614 = or i32 %612, %613
  %615 = call i32 @set_block(i32* %7, i64 %611, i32 %614)
  br label %616

616:                                              ; preds = %610, %597
  br label %617

617:                                              ; preds = %616, %591
  br label %618

618:                                              ; preds = %617, %515
  %619 = load i64, i64* %14, align 8
  %620 = add nsw i64 %619, 1
  store i64 %620, i64* %14, align 8
  br label %504

621:                                              ; preds = %504
  %622 = load i64, i64* @opt_verbose, align 8
  %623 = icmp sgt i64 %622, 0
  br i1 %623, label %624, label %635

624:                                              ; preds = %621
  %625 = load i64, i64* %14, align 8
  %626 = call i32 @peek_block(i32* %7, i64 %625)
  store i32 %626, i32* %23, align 4
  %627 = load i32, i32* %17, align 4
  %628 = load i32, i32* %23, align 4
  %629 = load i32, i32* @BLOCK_ADD, align 4
  %630 = and i32 %628, %629
  %631 = icmp ne i32 %630, 0
  %632 = zext i1 %631 to i64
  %633 = select i1 %631, i32 43, i32 32
  %634 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %627, i32 %633)
  br label %635

635:                                              ; preds = %624, %621
  store i64 0, i64* %14, align 8
  br label %636

636:                                              ; preds = %695, %635
  %637 = load i64, i64* %14, align 8
  %638 = load i64, i64* %13, align 8
  %639 = icmp slt i64 %637, %638
  br i1 %639, label %640, label %698

640:                                              ; preds = %636
  %641 = load i64, i64* %14, align 8
  %642 = call i32 @peek_block(i32* %7, i64 %641)
  store i32 %642, i32* %22, align 4
  %643 = load i64, i64* @opt_verbose, align 8
  %644 = icmp sgt i64 %643, 0
  br i1 %644, label %645, label %665

645:                                              ; preds = %640
  %646 = load i32, i32* %22, align 4
  %647 = and i32 %646, 255
  %648 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %647)
  %649 = load i32, i32* %22, align 4
  %650 = and i32 %649, 255
  %651 = icmp eq i32 %650, 10
  br i1 %651, label %652, label %664

652:                                              ; preds = %645
  %653 = load i64, i64* %14, align 8
  %654 = add nsw i64 %653, 1
  %655 = call i32 @peek_block(i32* %7, i64 %654)
  store i32 %655, i32* %23, align 4
  %656 = load i32, i32* %17, align 4
  %657 = load i32, i32* %23, align 4
  %658 = load i32, i32* @BLOCK_ADD, align 4
  %659 = and i32 %657, %658
  %660 = icmp ne i32 %659, 0
  %661 = zext i1 %660 to i64
  %662 = select i1 %660, i32 43, i32 32
  %663 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %656, i32 %662)
  br label %664

664:                                              ; preds = %652, %645
  br label %665

665:                                              ; preds = %664, %640
  %666 = load i32, i32* %22, align 4
  %667 = load i32, i32* @BLOCK_MASK, align 4
  %668 = and i32 %666, %667
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %671

670:                                              ; preds = %665
  br label %695

671:                                              ; preds = %665
  %672 = load i32, i32* %22, align 4
  %673 = and i32 %672, 255
  switch i32 %673, label %677 [
    i32 123, label %674
    i32 40, label %674
  ]

674:                                              ; preds = %671, %671
  %675 = load i32, i32* %17, align 4
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* %17, align 4
  br label %678

677:                                              ; preds = %671
  br label %678

678:                                              ; preds = %677, %674
  %679 = load i32, i32* %17, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %687

681:                                              ; preds = %678
  %682 = load i64, i64* %14, align 8
  %683 = load i32, i32* %22, align 4
  %684 = load i32, i32* @BLOCK_MASK, align 4
  %685 = or i32 %683, %684
  %686 = call i32 @set_block(i32* %7, i64 %682, i32 %685)
  br label %687

687:                                              ; preds = %681, %678
  %688 = load i32, i32* %22, align 4
  %689 = and i32 %688, 255
  switch i32 %689, label %693 [
    i32 125, label %690
    i32 41, label %690
  ]

690:                                              ; preds = %687, %687
  %691 = load i32, i32* %17, align 4
  %692 = add nsw i32 %691, -1
  store i32 %692, i32* %17, align 4
  br label %694

693:                                              ; preds = %687
  br label %694

694:                                              ; preds = %693, %690
  br label %695

695:                                              ; preds = %694, %670
  %696 = load i64, i64* %14, align 8
  %697 = add nsw i64 %696, 1
  store i64 %697, i64* %14, align 8
  br label %636

698:                                              ; preds = %636
  %699 = load i64, i64* @opt_verbose, align 8
  %700 = icmp sgt i64 %699, 0
  br i1 %700, label %701, label %703

701:                                              ; preds = %698
  %702 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %703

703:                                              ; preds = %701, %698
  %704 = load i32, i32* %17, align 4
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %706, label %709

706:                                              ; preds = %703
  %707 = load i32, i32* @EX_SOFTWARE, align 4
  %708 = call i32 (i32, i8*, ...) @errx(i32 %707, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %709

709:                                              ; preds = %706, %703
  %710 = load i32, i32* %18, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %715

712:                                              ; preds = %709
  %713 = load i32, i32* @EX_SOFTWARE, align 4
  %714 = call i32 (i32, i8*, ...) @errx(i32 %713, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %715

715:                                              ; preds = %712, %709
  store i64 0, i64* %14, align 8
  br label %716

716:                                              ; preds = %739, %715
  %717 = load i64, i64* %14, align 8
  %718 = load i64, i64* %13, align 8
  %719 = icmp slt i64 %717, %718
  br i1 %719, label %720, label %742

720:                                              ; preds = %716
  %721 = load i64, i64* %14, align 8
  %722 = call i32 @peek_block(i32* %7, i64 %721)
  store i32 %722, i32* %22, align 4
  %723 = load i32, i32* %22, align 4
  %724 = load i32, i32* @BLOCK_MASK, align 4
  %725 = and i32 %723, %724
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %727, label %728

727:                                              ; preds = %720
  br label %739

728:                                              ; preds = %720
  %729 = load i32, i32* %22, align 4
  %730 = and i32 %729, 255
  switch i32 %730, label %732 [
    i32 10, label %731
  ]

731:                                              ; preds = %728
  br label %738

732:                                              ; preds = %728
  %733 = load i64, i64* %14, align 8
  %734 = load i32, i32* %22, align 4
  %735 = load i32, i32* @BLOCK_MASK, align 4
  %736 = or i32 %734, %735
  %737 = call i32 @set_block(i32* %7, i64 %733, i32 %736)
  br label %738

738:                                              ; preds = %732, %731
  br label %739

739:                                              ; preds = %738, %727
  %740 = load i64, i64* %14, align 8
  %741 = add nsw i64 %740, 1
  store i64 %741, i64* %14, align 8
  br label %716

742:                                              ; preds = %716
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %743

743:                                              ; preds = %845, %742
  %744 = load i64, i64* %14, align 8
  %745 = load i64, i64* %13, align 8
  %746 = icmp slt i64 %744, %745
  br i1 %746, label %747, label %848

747:                                              ; preds = %743
  %748 = load i64, i64* %14, align 8
  %749 = call i32 @peek_block(i32* %7, i64 %748)
  store i32 %749, i32* %22, align 4
  %750 = load i32, i32* %22, align 4
  %751 = load i32, i32* @BLOCK_ADD, align 4
  %752 = and i32 %750, %751
  %753 = icmp ne i32 %752, 0
  br i1 %753, label %754, label %835

754:                                              ; preds = %747
  %755 = call i32 @TAILQ_INIT(i32* %9)
  %756 = call %struct.block* (...) @alloc_block()
  store %struct.block* %756, %struct.block** %12, align 8
  store i64 0, i64* %16, align 8
  br label %757

757:                                              ; preds = %793, %754
  %758 = load i64, i64* %15, align 8
  %759 = load i64, i64* %13, align 8
  %760 = icmp slt i64 %758, %759
  br i1 %760, label %761, label %796

761:                                              ; preds = %757
  %762 = load i64, i64* %15, align 8
  %763 = call i32 @peek_block(i32* %7, i64 %762)
  store i32 %763, i32* %22, align 4
  %764 = load i64, i64* %15, align 8
  %765 = load i64, i64* %14, align 8
  %766 = icmp sgt i64 %764, %765
  br i1 %766, label %767, label %775

767:                                              ; preds = %761
  %768 = load i32, i32* %22, align 4
  %769 = load i32, i32* @BLOCK_MASK, align 4
  %770 = load i32, i32* @BLOCK_ADD, align 4
  %771 = or i32 %769, %770
  %772 = and i32 %768, %771
  %773 = icmp ne i32 %772, 0
  br i1 %773, label %775, label %774

774:                                              ; preds = %767
  br label %796

775:                                              ; preds = %767, %761
  %776 = load i32, i32* %22, align 4
  %777 = and i32 %776, 255
  %778 = load %struct.block*, %struct.block** %12, align 8
  %779 = getelementptr inbounds %struct.block, %struct.block* %778, i32 0, i32 1
  %780 = load i32*, i32** %779, align 8
  %781 = load i64, i64* %16, align 8
  %782 = add nsw i64 %781, 1
  store i64 %782, i64* %16, align 8
  %783 = getelementptr inbounds i32, i32* %780, i64 %781
  store i32 %777, i32* %783, align 4
  %784 = load i64, i64* %16, align 8
  %785 = load i64, i64* @BLOCK_SIZE, align 8
  %786 = icmp eq i64 %784, %785
  br i1 %786, label %787, label %792

787:                                              ; preds = %775
  %788 = load %struct.block*, %struct.block** %12, align 8
  %789 = load i32, i32* @entry, align 4
  %790 = call i32 @TAILQ_INSERT_TAIL(i32* %9, %struct.block* %788, i32 %789)
  %791 = call %struct.block* (...) @alloc_block()
  store %struct.block* %791, %struct.block** %12, align 8
  store i64 0, i64* %16, align 8
  br label %792

792:                                              ; preds = %787, %775
  br label %793

793:                                              ; preds = %792
  %794 = load i64, i64* %15, align 8
  %795 = add nsw i64 %794, 1
  store i64 %795, i64* %15, align 8
  br label %757

796:                                              ; preds = %774, %757
  %797 = load %struct.block*, %struct.block** %12, align 8
  %798 = getelementptr inbounds %struct.block, %struct.block* %797, i32 0, i32 1
  %799 = load i32*, i32** %798, align 8
  %800 = load i64, i64* %16, align 8
  %801 = getelementptr inbounds i32, i32* %799, i64 %800
  %802 = load i32, i32* %801, align 4
  %803 = icmp ne i32 %802, 10
  br i1 %803, label %804, label %811

804:                                              ; preds = %796
  %805 = load %struct.block*, %struct.block** %12, align 8
  %806 = getelementptr inbounds %struct.block, %struct.block* %805, i32 0, i32 1
  %807 = load i32*, i32** %806, align 8
  %808 = load i64, i64* %16, align 8
  %809 = add nsw i64 %808, 1
  store i64 %809, i64* %16, align 8
  %810 = getelementptr inbounds i32, i32* %807, i64 %808
  store i32 10, i32* %810, align 4
  br label %811

811:                                              ; preds = %804, %796
  %812 = load i64, i64* %16, align 8
  %813 = load %struct.block*, %struct.block** %12, align 8
  %814 = getelementptr inbounds %struct.block, %struct.block* %813, i32 0, i32 2
  store i64 %812, i64* %814, align 8
  %815 = load %struct.block*, %struct.block** %12, align 8
  %816 = load i32, i32* @entry, align 4
  %817 = call i32 @TAILQ_INSERT_TAIL(i32* %9, %struct.block* %815, i32 %816)
  %818 = call i32 @cmd_block_process(i32* %9, i32* %10, i8* getelementptr inbounds ([599 x i8], [599 x i8]* @.str.12, i64 0, i64 0))
  %819 = load i8*, i8** @opt_diff_tool, align 8
  %820 = icmp ne i8* %819, null
  br i1 %820, label %821, label %826

821:                                              ; preds = %811
  %822 = call i64 @diff_tool(i32* %9, i32* %10)
  %823 = icmp ne i64 %822, 0
  br i1 %823, label %824, label %825

824:                                              ; preds = %821
  store i32 1, i32* %25, align 4
  br label %825

825:                                              ; preds = %824, %821
  br label %831

826:                                              ; preds = %811
  %827 = call i64 @diff_block(i32* %9, i32* %10)
  %828 = icmp ne i64 %827, 0
  br i1 %828, label %829, label %830

829:                                              ; preds = %826
  store i32 1, i32* %25, align 4
  br label %830

830:                                              ; preds = %829, %826
  br label %831

831:                                              ; preds = %830, %825
  %832 = call i32 @free_block(i32* %9)
  %833 = call i32 @free_block(i32* %10)
  %834 = load i64, i64* %15, align 8
  store i64 %834, i64* %14, align 8
  br label %844

835:                                              ; preds = %747
  %836 = load i32, i32* %22, align 4
  %837 = load i32, i32* @BLOCK_MASK, align 4
  %838 = and i32 %836, %837
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %843, label %840

840:                                              ; preds = %835
  %841 = load i64, i64* %14, align 8
  %842 = add nsw i64 %841, 1
  store i64 %842, i64* %15, align 8
  br label %843

843:                                              ; preds = %840, %835
  br label %844

844:                                              ; preds = %843, %831
  br label %845

845:                                              ; preds = %844
  %846 = load i64, i64* %14, align 8
  %847 = add nsw i64 %846, 1
  store i64 %847, i64* %14, align 8
  br label %743

848:                                              ; preds = %743
  %849 = load i32, i32* %25, align 4
  ret i32 %849
}

declare dso_local i32 @signal(i32, i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @cmd_block_process(i32*, i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @size_block(i32*) #1

declare dso_local %struct.block* @alloc_block(...) #1

declare dso_local i32 @peek_block(i32*, i64) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.block*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @set_block(i32*, i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @diff_tool(i32*, i32*) #1

declare dso_local i64 @diff_block(i32*, i32*) #1

declare dso_local i32 @free_block(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
