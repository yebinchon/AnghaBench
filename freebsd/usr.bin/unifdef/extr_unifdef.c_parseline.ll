; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_parseline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_parseline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@incomment = common dso_local global i64 0, align 8
@LT_EOF = common dso_local global i64 0, align 8
@newline = common dso_local global i32* null, align 8
@tline = common dso_local global i8* null, align 8
@newline_crlf = common dso_local global i32* null, align 8
@newline_unix = common dso_local global i32* null, align 8
@LT_PLAIN = common dso_local global i64 0, align 8
@keyword = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@LT_IF = common dso_local global i64 0, align 8
@LT_FALSE = common dso_local global i64 0, align 8
@LT_TRUE = common dso_local global i64 0, align 8
@value = common dso_local global i32** null, align 8
@ignore = common dso_local global i64* null, align 8
@LT_TRUEI = common dso_local global i64 0, align 8
@LT_FALSEI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@LT_ELSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@LT_ENDIF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"\\\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@LT_ELTRUE = common dso_local global i64 0, align 8
@LT_ELFALSE = common dso_local global i64 0, align 8
@LT_ELIF = common dso_local global i64 0, align 8
@linestate = common dso_local global i64 0, align 8
@LS_HASH = common dso_local global i64 0, align 8
@MAXLINE = common dso_local global i64 0, align 8
@input = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"can't read %s\00", align 1
@filename = common dso_local global i32 0, align 4
@LS_START = common dso_local global i64 0, align 8
@LS_DIRTY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"parser line %d state %s comment %s line\00", align 1
@linenum = common dso_local global i32 0, align 4
@comment_name = common dso_local global i32* null, align 8
@linestate_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @parseline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parseline() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i64, i64* @incomment, align 8
  store i64 %7, i64* %5, align 8
  %8 = call i8* (...) @skiphash()
  store i8* %8, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i64, i64* @LT_EOF, align 8
  store i64 %12, i64* %1, align 8
  br label %256

13:                                               ; preds = %0
  %14 = load i32*, i32** @newline, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i8*, i8** @tline, align 8
  %18 = call i64 @strrchr(i8* %17, i8 signext 10)
  %19 = load i8*, i8** @tline, align 8
  %20 = call i64 @strrchr(i8* %19, i8 signext 13)
  %21 = add nsw i64 %20, 1
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32*, i32** @newline_crlf, align 8
  store i32* %24, i32** @newline, align 8
  br label %27

25:                                               ; preds = %16
  %26 = load i32*, i32** @newline_unix, align 8
  store i32* %26, i32** @newline, align 8
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %13
  %29 = load i8*, i8** %2, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @LT_PLAIN, align 8
  store i64 %34, i64* %4, align 8
  br label %244

35:                                               ; preds = %28
  %36 = load i8*, i8** @tline, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = load i8*, i8** @tline, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = getelementptr inbounds i8, i8* %36, i64 %41
  store i8* %42, i8** @keyword, align 8
  %43 = load i8*, i8** @keyword, align 8
  %44 = call i8* @matchsym(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i8* %44, i8** %2, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = load i8*, i8** @keyword, align 8
  %48 = call i8* @matchsym(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  store i8* %48, i8** %2, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %104

50:                                               ; preds = %46, %35
  %51 = load i8*, i8** %2, align 8
  %52 = call i8* @skipcomment(i8* %51)
  store i8* %52, i8** %2, align 8
  %53 = call i32 @findsym(i8** %2)
  store i32 %53, i32* %3, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @LT_IF, align 8
  store i64 %56, i64* %4, align 8
  br label %103

57:                                               ; preds = %50
  %58 = load i8*, i8** @keyword, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 110
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* @LT_FALSE, align 8
  br label %67

65:                                               ; preds = %57
  %66 = load i64, i64* @LT_TRUE, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i64 [ %64, %63 ], [ %66, %65 ]
  store i64 %68, i64* %4, align 8
  %69 = load i32**, i32*** @value, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @LT_TRUE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* @LT_FALSE, align 8
  br label %83

81:                                               ; preds = %75
  %82 = load i64, i64* @LT_TRUE, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i64 [ %80, %79 ], [ %82, %81 ]
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %83, %67
  %86 = load i64*, i64** @ignore, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @LT_TRUE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* @LT_TRUEI, align 8
  br label %100

98:                                               ; preds = %92
  %99 = load i64, i64* @LT_FALSEI, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %97, %96 ], [ %99, %98 ]
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %100, %85
  br label %103

103:                                              ; preds = %102, %55
  br label %149

104:                                              ; preds = %46
  %105 = load i8*, i8** @keyword, align 8
  %106 = call i8* @matchsym(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  store i8* %106, i8** %2, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i64 @ifeval(i8** %2)
  store i64 %109, i64* %4, align 8
  br label %148

110:                                              ; preds = %104
  %111 = load i8*, i8** @keyword, align 8
  %112 = call i8* @matchsym(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  store i8* %112, i8** %2, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = call i64 @ifeval(i8** %2)
  %116 = call i64 @linetype_if2elif(i64 %115)
  store i64 %116, i64* %4, align 8
  br label %147

117:                                              ; preds = %110
  %118 = load i8*, i8** @keyword, align 8
  %119 = call i8* @matchsym(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  store i8* %119, i8** %2, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i64, i64* @LT_ELSE, align 8
  store i64 %122, i64* %4, align 8
  br label %146

123:                                              ; preds = %117
  %124 = load i8*, i8** @keyword, align 8
  %125 = call i8* @matchsym(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %124)
  store i8* %125, i8** %2, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* @LT_ENDIF, align 8
  store i64 %128, i64* %4, align 8
  br label %145

129:                                              ; preds = %123
  %130 = load i8*, i8** @keyword, align 8
  %131 = call i8* @skipsym(i8* %130)
  store i8* %131, i8** %2, align 8
  %132 = load i8*, i8** %2, align 8
  %133 = call i64 @strncmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %129
  %136 = load i8*, i8** %2, align 8
  %137 = call i64 @strncmp(i8* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135, %129
  %140 = call i32 (...) @Eioccc()
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i8*, i8** %2, align 8
  %143 = call i8* @skipline(i8* %142)
  store i8* %143, i8** %2, align 8
  %144 = load i64, i64* @LT_PLAIN, align 8
  store i64 %144, i64* %4, align 8
  br label %244

145:                                              ; preds = %127
  br label %146

146:                                              ; preds = %145, %121
  br label %147

147:                                              ; preds = %146, %114
  br label %148

148:                                              ; preds = %147, %108
  br label %149

149:                                              ; preds = %148, %103
  %150 = load i8*, i8** %2, align 8
  %151 = call i8* @skipcomment(i8* %150)
  store i8* %151, i8** %2, align 8
  %152 = load i8*, i8** %2, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %187

156:                                              ; preds = %149
  %157 = load i8*, i8** %2, align 8
  %158 = call i8* @skipline(i8* %157)
  store i8* %158, i8** %2, align 8
  %159 = load i64, i64* %4, align 8
  %160 = load i64, i64* @LT_TRUE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %174, label %162

162:                                              ; preds = %156
  %163 = load i64, i64* %4, align 8
  %164 = load i64, i64* @LT_FALSE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = load i64, i64* %4, align 8
  %168 = load i64, i64* @LT_TRUEI, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %4, align 8
  %172 = load i64, i64* @LT_FALSEI, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170, %166, %162, %156
  %175 = load i64, i64* @LT_IF, align 8
  store i64 %175, i64* %4, align 8
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i64, i64* %4, align 8
  %178 = load i64, i64* @LT_ELTRUE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i64, i64* %4, align 8
  %182 = load i64, i64* @LT_ELFALSE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180, %176
  %185 = load i64, i64* @LT_ELIF, align 8
  store i64 %185, i64* %4, align 8
  br label %186

186:                                              ; preds = %184, %180
  br label %187

187:                                              ; preds = %186, %149
  %188 = load i64, i64* @linestate, align 8
  %189 = load i64, i64* @LS_HASH, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %228

191:                                              ; preds = %187
  %192 = load i8*, i8** %2, align 8
  %193 = load i8*, i8** @tline, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  store i64 %196, i64* %6, align 8
  %197 = load i8*, i8** @tline, align 8
  %198 = load i64, i64* %6, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = load i64, i64* @MAXLINE, align 8
  %201 = load i64, i64* %6, align 8
  %202 = sub nsw i64 %200, %201
  %203 = load i32, i32* @input, align 4
  %204 = call i32* @fgets(i8* %199, i64 %202, i32 %203)
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %225

206:                                              ; preds = %191
  %207 = load i32, i32* @input, align 4
  %208 = call i64 @ferror(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i32, i32* @filename, align 4
  %212 = call i32 @err(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %210, %206
  %214 = load i8*, i8** @tline, align 8
  %215 = load i64, i64* %6, align 8
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  %217 = load i32*, i32** @newline, align 8
  %218 = call i32 @strcpy(i8* %216, i32* %217)
  %219 = load i32*, i32** @newline, align 8
  %220 = call i32 @strlen(i32* %219)
  %221 = load i8*, i8** %2, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8* %223, i8** %2, align 8
  %224 = load i64, i64* @LS_START, align 8
  store i64 %224, i64* @linestate, align 8
  br label %227

225:                                              ; preds = %191
  %226 = load i64, i64* @LS_DIRTY, align 8
  store i64 %226, i64* @linestate, align 8
  br label %227

227:                                              ; preds = %225, %213
  br label %228

228:                                              ; preds = %227, %187
  %229 = load i64, i64* %4, align 8
  %230 = load i64, i64* @LT_PLAIN, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %243

232:                                              ; preds = %228
  %233 = load i64, i64* %5, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %232
  %236 = load i64, i64* @linestate, align 8
  %237 = load i64, i64* @LS_START, align 8
  %238 = icmp ne i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %235, %232
  %240 = load i64, i64* %4, align 8
  %241 = call i64 @linetype_2dodgy(i64 %240)
  store i64 %241, i64* %4, align 8
  %242 = load i64, i64* @LS_DIRTY, align 8
  store i64 %242, i64* @linestate, align 8
  br label %243

243:                                              ; preds = %239, %235, %228
  br label %244

244:                                              ; preds = %243, %141, %33
  %245 = load i32, i32* @linenum, align 4
  %246 = load i32*, i32** @comment_name, align 8
  %247 = load i64, i64* @incomment, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** @linestate_name, align 8
  %251 = load i64, i64* @linestate, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %245, i32 %249, i32 %253)
  %255 = load i64, i64* %4, align 8
  store i64 %255, i64* %1, align 8
  br label %256

256:                                              ; preds = %244, %11
  %257 = load i64, i64* %1, align 8
  ret i64 %257
}

declare dso_local i8* @skiphash(...) #1

declare dso_local i64 @strrchr(i8*, i8 signext) #1

declare dso_local i8* @matchsym(i8*, i8*) #1

declare dso_local i8* @skipcomment(i8*) #1

declare dso_local i32 @findsym(i8**) #1

declare dso_local i64 @ifeval(i8**) #1

declare dso_local i64 @linetype_if2elif(i64) #1

declare dso_local i8* @skipsym(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Eioccc(...) #1

declare dso_local i8* @skipline(i8*) #1

declare dso_local i32* @fgets(i8*, i64, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @linetype_2dodgy(i64) #1

declare dso_local i32 @debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
