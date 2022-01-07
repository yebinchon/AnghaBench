; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@err = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Cannot defer diagnostic messages\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"#adFfmrte?h:i?L:l:n?o:ps?w:\00", align 1
@eoptarg = common dso_local global i8* null, align 8
@pgnm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"pr: +page number must be 1 or more\0A\00", align 1
@clcnt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"pr: -columns must be 1 or more\0A\00", align 1
@across = common dso_local global i64 0, align 8
@dspace = common dso_local global i64 0, align 8
@inchar = common dso_local global i32 0, align 4
@INCHAR = common dso_local global i32 0, align 4
@ingap = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"pr: -e gap must be 0 or more\0A\00", align 1
@INGAP = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"pr: invalid value for -e %s\0A\00", align 1
@pausefst = common dso_local global i32 0, align 4
@formfeed = common dso_local global i32 0, align 4
@header = common dso_local global i8* null, align 8
@ochar = common dso_local global i32 0, align 4
@OCHAR = common dso_local global i32 0, align 4
@ogap = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"pr: -i gap must be 0 or more\0A\00", align 1
@OGAP = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"pr: invalid value for -i %s\0A\00", align 1
@lines = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"pr: number of lines must be 1 or more\0A\00", align 1
@merge = common dso_local global i64 0, align 8
@nmchar = common dso_local global i32 0, align 4
@NMCHAR = common dso_local global i32 0, align 4
@nmwd = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"pr: -n width must be 1 or more\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"pr: invalid value for -n %s\0A\00", align 1
@NMWD = common dso_local global i32 0, align 4
@offst = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"pr: -o offset must be 1 or more\0A\00", align 1
@pauseall = common dso_local global i32 0, align 4
@nodiag = common dso_local global i32 0, align 4
@sflag = common dso_local global i64 0, align 8
@SCHAR = common dso_local global i32 0, align 4
@schar = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"pr: invalid value for -s %s\0A\00", align 1
@nohead = common dso_local global i32 0, align 4
@pgwd = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"pr: -w width must be 1 or more \0A\00", align 1
@eoptind = common dso_local global i32 0, align 4
@CLCNT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"pr: -a flag requires multiple columns\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"pr: -m cannot be used with -a\0A\00", align 1
@SPGWD = common dso_local global i32 0, align 4
@PGWD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [45 x i8] c"pr: -m cannot be used with multiple columns\0A\00", align 1
@colwd = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [44 x i8] c"pr: page width is too small for %d columns\0A\00", align 1
@LINES = common dso_local global i32 0, align 4
@HEADLEN = common dso_local global i32 0, align 4
@TAILLEN = common dso_local global i32 0, align 4
@addone = common dso_local global i32 0, align 4
@LC_TIME = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@D_MD_ORDER = common dso_local global i32 0, align 4
@TIMEFMTD = common dso_local global i32 0, align 4
@TIMEFMTM = common dso_local global i32 0, align 4
@timefrmt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fileno(i32 %13)
  %15 = call i64 @isatty(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = call i32* (...) @tmpfile()
  store i32* %18, i32** @err, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** @stderr, align 8
  store i32* %21, i32** @err, align 8
  %22 = load i32*, i32** @stderr, align 8
  %23 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %22)
  store i32 1, i32* %3, align 4
  br label %494

24:                                               ; preds = %17
  br label %27

25:                                               ; preds = %2
  %26 = load i32*, i32** @stderr, align 8
  store i32* %26, i32** @err, align 8
  br label %27

27:                                               ; preds = %25, %24
  br label %28

28:                                               ; preds = %314, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @egetopt(i32 %29, i8** %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %315

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %313 [
    i32 43, label %35
    i32 45, label %44
    i32 97, label %59
    i32 100, label %62
    i32 101, label %65
    i32 102, label %119
    i32 70, label %122
    i32 104, label %125
    i32 105, label %127
    i32 76, label %181
    i32 108, label %183
    i32 109, label %197
    i32 110, label %200
    i32 111, label %248
    i32 112, label %262
    i32 114, label %265
    i32 115, label %268
    i32 116, label %290
    i32 119, label %293
    i32 63, label %312
  ]

35:                                               ; preds = %33
  %36 = load i8*, i8** @eoptarg, align 8
  %37 = call i8* @atoi(i8* %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* @pgnm, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** @err, align 8
  %42 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* %41)
  store i32 1, i32* %3, align 4
  br label %494

43:                                               ; preds = %35
  br label %314

44:                                               ; preds = %33
  %45 = load i8*, i8** @eoptarg, align 8
  %46 = call i8* @atoi(i8* %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* @clcnt, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32*, i32** @err, align 8
  %51 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %50)
  store i32 1, i32* %3, align 4
  br label %494

52:                                               ; preds = %44
  %53 = load i32, i32* @clcnt, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %314

59:                                               ; preds = %33
  %60 = load i64, i64* @across, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* @across, align 8
  br label %314

62:                                               ; preds = %33
  %63 = load i64, i64* @dspace, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* @dspace, align 8
  br label %314

65:                                               ; preds = %33
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load i8*, i8** @eoptarg, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i8*, i8** @eoptarg, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @isdigit(i8 zeroext %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** @eoptarg, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** @eoptarg, align 8
  %78 = load i8, i8* %76, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* @inchar, align 4
  br label %82

80:                                               ; preds = %70, %65
  %81 = load i32, i32* @INCHAR, align 4
  store i32 %81, i32* @inchar, align 4
  br label %82

82:                                               ; preds = %80, %75
  %83 = load i8*, i8** @eoptarg, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i8*, i8** @eoptarg, align 8
  %87 = load i8, i8* %86, align 1
  %88 = call i32 @isdigit(i8 zeroext %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load i8*, i8** @eoptarg, align 8
  %92 = call i8* @atoi(i8* %91)
  store i8* %92, i8** @ingap, align 8
  %93 = icmp ult i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32*, i32** @err, align 8
  %96 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %95)
  store i32 1, i32* %3, align 4
  br label %494

97:                                               ; preds = %90
  %98 = load i8*, i8** @ingap, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i8*, i8** @INGAP, align 8
  store i8* %101, i8** @ingap, align 8
  br label %102

102:                                              ; preds = %100, %97
  br label %118

103:                                              ; preds = %85, %82
  %104 = load i8*, i8** @eoptarg, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i8*, i8** @eoptarg, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32*, i32** @err, align 8
  %113 = load i8*, i8** @eoptarg, align 8
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  store i32 1, i32* %3, align 4
  br label %494

115:                                              ; preds = %106, %103
  %116 = load i8*, i8** @INGAP, align 8
  store i8* %116, i8** @ingap, align 8
  br label %117

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117, %102
  br label %314

119:                                              ; preds = %33
  %120 = load i32, i32* @pausefst, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @pausefst, align 4
  br label %122

122:                                              ; preds = %33, %119
  %123 = load i32, i32* @formfeed, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* @formfeed, align 4
  br label %314

125:                                              ; preds = %33
  %126 = load i8*, i8** @eoptarg, align 8
  store i8* %126, i8** @header, align 8
  br label %314

127:                                              ; preds = %33
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = load i8*, i8** @eoptarg, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load i8*, i8** @eoptarg, align 8
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @isdigit(i8 zeroext %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i8*, i8** @eoptarg, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** @eoptarg, align 8
  %140 = load i8, i8* %138, align 1
  %141 = sext i8 %140 to i32
  store i32 %141, i32* @ochar, align 4
  br label %144

142:                                              ; preds = %132, %127
  %143 = load i32, i32* @OCHAR, align 4
  store i32 %143, i32* @ochar, align 4
  br label %144

144:                                              ; preds = %142, %137
  %145 = load i8*, i8** @eoptarg, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %165

147:                                              ; preds = %144
  %148 = load i8*, i8** @eoptarg, align 8
  %149 = load i8, i8* %148, align 1
  %150 = call i32 @isdigit(i8 zeroext %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = load i8*, i8** @eoptarg, align 8
  %154 = call i8* @atoi(i8* %153)
  store i8* %154, i8** @ogap, align 8
  %155 = icmp ult i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32*, i32** @err, align 8
  %158 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %157)
  store i32 1, i32* %3, align 4
  br label %494

159:                                              ; preds = %152
  %160 = load i8*, i8** @ogap, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i8*, i8** @OGAP, align 8
  store i8* %163, i8** @ogap, align 8
  br label %164

164:                                              ; preds = %162, %159
  br label %180

165:                                              ; preds = %147, %144
  %166 = load i8*, i8** @eoptarg, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load i8*, i8** @eoptarg, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32*, i32** @err, align 8
  %175 = load i8*, i8** @eoptarg, align 8
  %176 = call i32 (i32*, i8*, ...) @fprintf(i32* %174, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %175)
  store i32 1, i32* %3, align 4
  br label %494

177:                                              ; preds = %168, %165
  %178 = load i8*, i8** @OGAP, align 8
  store i8* %178, i8** @ogap, align 8
  br label %179

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %179, %164
  br label %314

181:                                              ; preds = %33
  %182 = load i8*, i8** @eoptarg, align 8
  store i8* %182, i8** %12, align 8
  br label %314

183:                                              ; preds = %33
  %184 = load i8*, i8** @eoptarg, align 8
  %185 = load i8, i8* %184, align 1
  %186 = call i32 @isdigit(i8 zeroext %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i8*, i8** @eoptarg, align 8
  %190 = call i8* @atoi(i8* %189)
  %191 = ptrtoint i8* %190 to i32
  store i32 %191, i32* @lines, align 4
  %192 = icmp slt i32 %191, 1
  br i1 %192, label %193, label %196

193:                                              ; preds = %188, %183
  %194 = load i32*, i32** @err, align 8
  %195 = call i32 @fputs(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32* %194)
  store i32 1, i32* %3, align 4
  br label %494

196:                                              ; preds = %188
  br label %314

197:                                              ; preds = %33
  %198 = load i64, i64* @merge, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* @merge, align 8
  br label %314

200:                                              ; preds = %33
  %201 = load i8*, i8** @eoptarg, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %200
  %204 = load i8*, i8** @eoptarg, align 8
  %205 = load i8, i8* %204, align 1
  %206 = call i32 @isdigit(i8 zeroext %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load i8*, i8** @eoptarg, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** @eoptarg, align 8
  %211 = load i8, i8* %209, align 1
  %212 = sext i8 %211 to i32
  store i32 %212, i32* @nmchar, align 4
  br label %215

213:                                              ; preds = %203, %200
  %214 = load i32, i32* @NMCHAR, align 4
  store i32 %214, i32* @nmchar, align 4
  br label %215

215:                                              ; preds = %213, %208
  %216 = load i8*, i8** @eoptarg, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %232

218:                                              ; preds = %215
  %219 = load i8*, i8** @eoptarg, align 8
  %220 = load i8, i8* %219, align 1
  %221 = call i32 @isdigit(i8 zeroext %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %218
  %224 = load i8*, i8** @eoptarg, align 8
  %225 = call i8* @atoi(i8* %224)
  %226 = ptrtoint i8* %225 to i32
  store i32 %226, i32* @nmwd, align 4
  %227 = icmp slt i32 %226, 1
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load i32*, i32** @err, align 8
  %230 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32* %229)
  store i32 1, i32* %3, align 4
  br label %494

231:                                              ; preds = %223
  br label %247

232:                                              ; preds = %218, %215
  %233 = load i8*, i8** @eoptarg, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %244

235:                                              ; preds = %232
  %236 = load i8*, i8** @eoptarg, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load i32*, i32** @err, align 8
  %242 = load i8*, i8** @eoptarg, align 8
  %243 = call i32 (i32*, i8*, ...) @fprintf(i32* %241, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %242)
  store i32 1, i32* %3, align 4
  br label %494

244:                                              ; preds = %235, %232
  %245 = load i32, i32* @NMWD, align 4
  store i32 %245, i32* @nmwd, align 4
  br label %246

246:                                              ; preds = %244
  br label %247

247:                                              ; preds = %246, %231
  br label %314

248:                                              ; preds = %33
  %249 = load i8*, i8** @eoptarg, align 8
  %250 = load i8, i8* %249, align 1
  %251 = call i32 @isdigit(i8 zeroext %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load i8*, i8** @eoptarg, align 8
  %255 = call i8* @atoi(i8* %254)
  %256 = ptrtoint i8* %255 to i32
  store i32 %256, i32* @offst, align 4
  %257 = icmp slt i32 %256, 1
  br i1 %257, label %258, label %261

258:                                              ; preds = %253, %248
  %259 = load i32*, i32** @err, align 8
  %260 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32* %259)
  store i32 1, i32* %3, align 4
  br label %494

261:                                              ; preds = %253
  br label %314

262:                                              ; preds = %33
  %263 = load i32, i32* @pauseall, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* @pauseall, align 4
  br label %314

265:                                              ; preds = %33
  %266 = load i32, i32* @nodiag, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* @nodiag, align 4
  br label %314

268:                                              ; preds = %33
  %269 = load i64, i64* @sflag, align 8
  %270 = add nsw i64 %269, 1
  store i64 %270, i64* @sflag, align 8
  %271 = load i8*, i8** @eoptarg, align 8
  %272 = icmp eq i8* %271, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* @SCHAR, align 4
  store i32 %274, i32* @schar, align 4
  br label %289

275:                                              ; preds = %268
  %276 = load i8*, i8** @eoptarg, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** @eoptarg, align 8
  %278 = load i8, i8* %276, align 1
  %279 = sext i8 %278 to i32
  store i32 %279, i32* @schar, align 4
  %280 = load i8*, i8** @eoptarg, align 8
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %275
  %285 = load i32*, i32** @err, align 8
  %286 = load i8*, i8** @eoptarg, align 8
  %287 = call i32 (i32*, i8*, ...) @fprintf(i32* %285, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %286)
  store i32 1, i32* %3, align 4
  br label %494

288:                                              ; preds = %275
  br label %289

289:                                              ; preds = %288, %273
  br label %314

290:                                              ; preds = %33
  %291 = load i32, i32* @nohead, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* @nohead, align 4
  br label %314

293:                                              ; preds = %33
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %10, align 4
  %296 = load i8*, i8** @eoptarg, align 8
  %297 = icmp eq i8* %296, null
  br i1 %297, label %308, label %298

298:                                              ; preds = %293
  %299 = load i8*, i8** @eoptarg, align 8
  %300 = load i8, i8* %299, align 1
  %301 = call i32 @isdigit(i8 zeroext %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = load i8*, i8** @eoptarg, align 8
  %305 = call i8* @atoi(i8* %304)
  %306 = ptrtoint i8* %305 to i32
  store i32 %306, i32* @pgwd, align 4
  %307 = icmp slt i32 %306, 1
  br i1 %307, label %308, label %311

308:                                              ; preds = %303, %298, %293
  %309 = load i32*, i32** @err, align 8
  %310 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32* %309)
  store i32 1, i32* %3, align 4
  br label %494

311:                                              ; preds = %303
  br label %314

312:                                              ; preds = %33
  br label %313

313:                                              ; preds = %33, %312
  store i32 1, i32* %3, align 4
  br label %494

314:                                              ; preds = %311, %290, %289, %265, %262, %261, %247, %197, %196, %181, %180, %125, %122, %118, %62, %59, %58, %43
  br label %28

315:                                              ; preds = %28
  %316 = load i32, i32* @clcnt, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %332, label %318

318:                                              ; preds = %315
  %319 = load i64, i64* @merge, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = load i32, i32* %4, align 4
  %323 = load i32, i32* @eoptind, align 4
  %324 = sub nsw i32 %322, %323
  store i32 %324, i32* @clcnt, align 4
  %325 = icmp sle i32 %324, 1
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = load i32, i32* @CLCNT, align 4
  store i32 %327, i32* @clcnt, align 4
  store i64 0, i64* @merge, align 8
  br label %328

328:                                              ; preds = %326, %321
  br label %331

329:                                              ; preds = %318
  %330 = load i32, i32* @CLCNT, align 4
  store i32 %330, i32* @clcnt, align 4
  br label %331

331:                                              ; preds = %329, %328
  br label %332

332:                                              ; preds = %331, %315
  %333 = load i64, i64* @across, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %348

335:                                              ; preds = %332
  %336 = load i32, i32* @clcnt, align 4
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load i32*, i32** @err, align 8
  %340 = call i32 @fputs(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32* %339)
  store i32 1, i32* %3, align 4
  br label %494

341:                                              ; preds = %335
  %342 = load i64, i64* @merge, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load i32*, i32** @err, align 8
  %346 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32* %345)
  store i32 1, i32* %3, align 4
  br label %494

347:                                              ; preds = %341
  br label %348

348:                                              ; preds = %347, %332
  %349 = load i32, i32* %10, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %359, label %351

351:                                              ; preds = %348
  %352 = load i64, i64* @sflag, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  %355 = load i32, i32* @SPGWD, align 4
  store i32 %355, i32* @pgwd, align 4
  br label %358

356:                                              ; preds = %351
  %357 = load i32, i32* @PGWD, align 4
  store i32 %357, i32* @pgwd, align 4
  br label %358

358:                                              ; preds = %356, %354
  br label %359

359:                                              ; preds = %358, %348
  %360 = load i32, i32* %11, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %359
  %363 = load i64, i64* @merge, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %378

365:                                              ; preds = %362, %359
  %366 = load i32, i32* %8, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %365
  %369 = load i32, i32* @INCHAR, align 4
  store i32 %369, i32* @inchar, align 4
  %370 = load i8*, i8** @INGAP, align 8
  store i8* %370, i8** @ingap, align 8
  br label %371

371:                                              ; preds = %368, %365
  %372 = load i32, i32* %9, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %371
  %375 = load i32, i32* @OCHAR, align 4
  store i32 %375, i32* @ochar, align 4
  %376 = load i8*, i8** @OGAP, align 8
  store i8* %376, i8** @ogap, align 8
  br label %377

377:                                              ; preds = %374, %371
  br label %378

378:                                              ; preds = %377, %362
  %379 = load i32, i32* %11, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %427

381:                                              ; preds = %378
  %382 = load i64, i64* @merge, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = load i32*, i32** @err, align 8
  %386 = call i32 @fputs(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32* %385)
  store i32 1, i32* %3, align 4
  br label %494

387:                                              ; preds = %381
  %388 = load i32, i32* @nmwd, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %407

390:                                              ; preds = %387
  %391 = load i32, i32* @pgwd, align 4
  %392 = add nsw i32 %391, 1
  %393 = load i32, i32* @clcnt, align 4
  %394 = load i32, i32* @nmwd, align 4
  %395 = add nsw i32 %394, 2
  %396 = mul nsw i32 %393, %395
  %397 = sub nsw i32 %392, %396
  %398 = load i32, i32* @clcnt, align 4
  %399 = sdiv i32 %397, %398
  store i32 %399, i32* @colwd, align 4
  %400 = load i32, i32* @colwd, align 4
  %401 = load i32, i32* @nmwd, align 4
  %402 = add nsw i32 %400, %401
  %403 = add nsw i32 %402, 2
  %404 = load i32, i32* @clcnt, align 4
  %405 = mul nsw i32 %403, %404
  %406 = sub nsw i32 %405, 1
  store i32 %406, i32* @pgwd, align 4
  br label %419

407:                                              ; preds = %387
  %408 = load i32, i32* @pgwd, align 4
  %409 = add nsw i32 %408, 1
  %410 = load i32, i32* @clcnt, align 4
  %411 = sub nsw i32 %409, %410
  %412 = load i32, i32* @clcnt, align 4
  %413 = sdiv i32 %411, %412
  store i32 %413, i32* @colwd, align 4
  %414 = load i32, i32* @colwd, align 4
  %415 = add nsw i32 %414, 1
  %416 = load i32, i32* @clcnt, align 4
  %417 = mul nsw i32 %415, %416
  %418 = sub nsw i32 %417, 1
  store i32 %418, i32* @pgwd, align 4
  br label %419

419:                                              ; preds = %407, %390
  %420 = load i32, i32* @colwd, align 4
  %421 = icmp slt i32 %420, 1
  br i1 %421, label %422, label %426

422:                                              ; preds = %419
  %423 = load i32*, i32** @err, align 8
  %424 = load i32, i32* @clcnt, align 4
  %425 = call i32 (i32*, i8*, ...) @fprintf(i32* %423, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %424)
  store i32 1, i32* %3, align 4
  br label %494

426:                                              ; preds = %419
  br label %427

427:                                              ; preds = %426, %378
  %428 = load i32, i32* @lines, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %427
  %431 = load i32, i32* @LINES, align 4
  store i32 %431, i32* @lines, align 4
  br label %432

432:                                              ; preds = %430, %427
  %433 = load i32, i32* @lines, align 4
  %434 = load i32, i32* @HEADLEN, align 4
  %435 = load i32, i32* @TAILLEN, align 4
  %436 = add nsw i32 %434, %435
  %437 = icmp sle i32 %433, %436
  br i1 %437, label %438, label %441

438:                                              ; preds = %432
  %439 = load i32, i32* @nohead, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* @nohead, align 4
  br label %451

441:                                              ; preds = %432
  %442 = load i32, i32* @nohead, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %450, label %444

444:                                              ; preds = %441
  %445 = load i32, i32* @HEADLEN, align 4
  %446 = load i32, i32* @TAILLEN, align 4
  %447 = add nsw i32 %445, %446
  %448 = load i32, i32* @lines, align 4
  %449 = sub nsw i32 %448, %447
  store i32 %449, i32* @lines, align 4
  br label %450

450:                                              ; preds = %444, %441
  br label %451

451:                                              ; preds = %450, %438
  %452 = load i64, i64* @dspace, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %469

454:                                              ; preds = %451
  %455 = load i32, i32* @lines, align 4
  %456 = icmp eq i32 %455, 1
  br i1 %456, label %457, label %458

457:                                              ; preds = %454
  store i64 0, i64* @dspace, align 8
  br label %468

458:                                              ; preds = %454
  %459 = load i32, i32* @lines, align 4
  %460 = and i32 %459, 1
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %458
  %463 = load i32, i32* @addone, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* @addone, align 4
  br label %465

465:                                              ; preds = %462, %458
  %466 = load i32, i32* @lines, align 4
  %467 = sdiv i32 %466, 2
  store i32 %467, i32* @lines, align 4
  br label %468

468:                                              ; preds = %465, %457
  br label %469

469:                                              ; preds = %468, %451
  %470 = load i32, i32* @LC_TIME, align 4
  %471 = load i8*, i8** %12, align 8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %473, label %475

473:                                              ; preds = %469
  %474 = load i8*, i8** %12, align 8
  br label %476

475:                                              ; preds = %469
  br label %476

476:                                              ; preds = %475, %473
  %477 = phi i8* [ %474, %473 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), %475 ]
  %478 = call i32 @setlocale(i32 %470, i8* %477)
  %479 = load i32, i32* @D_MD_ORDER, align 4
  %480 = call i8* @nl_langinfo(i32 %479)
  %481 = load i8, i8* %480, align 1
  %482 = sext i8 %481 to i32
  %483 = icmp eq i32 %482, 100
  %484 = zext i1 %483 to i32
  store i32 %484, i32* %7, align 4
  %485 = load i32, i32* %7, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %476
  %488 = load i32, i32* @TIMEFMTD, align 4
  br label %491

489:                                              ; preds = %476
  %490 = load i32, i32* @TIMEFMTM, align 4
  br label %491

491:                                              ; preds = %489, %487
  %492 = phi i32 [ %488, %487 ], [ %490, %489 ]
  %493 = call i32 @strdup(i32 %492)
  store i32 %493, i32* @timefrmt, align 4
  store i32 0, i32* %3, align 4
  br label %494

494:                                              ; preds = %491, %422, %384, %344, %338, %313, %308, %284, %258, %240, %228, %193, %173, %156, %111, %94, %49, %40, %20
  %495 = load i32, i32* %3, align 4
  ret i32 %495
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32* @tmpfile(...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @egetopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i8* @nl_langinfo(i32) #1

declare dso_local i32 @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
