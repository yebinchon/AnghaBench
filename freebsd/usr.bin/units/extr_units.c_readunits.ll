; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_readunits.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_readunits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@unitcount = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to open units file '%s'\00", align 1
@UNITSFILE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@SEPARATOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"can't find units file '%s'\00", align 1
@CAP_READ = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"cap_rights_limit() failed\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" \0A\09\00", align 1
@prefixcount = common dso_local global i64 0, align 8
@MAXPREFIXES = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"memory for prefixes exceeded in line %d\00", align 1
@prefixtable = common dso_local global %struct.TYPE_4__* null, align 8
@.str.9 = private unnamed_addr constant [47 x i8] c"redefinition of prefix '%s' on line %d ignored\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"unexpected end of prefix on line %d\00", align 1
@MAXUNITS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [37 x i8] c"memory for units exceeded in line %d\00", align 1
@unittable = common dso_local global %struct.TYPE_3__* null, align 8
@.str.13 = private unnamed_addr constant [45 x i8] c"redefinition of unit '%s' on line %d ignored\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"unexpected end of unit on line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @readunits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readunits(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [1000 x i8], align 16
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @unitcount, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %15
  br label %62

24:                                               ; preds = %1
  %25 = load i8*, i8** @UNITSFILE, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %61, label %29

29:                                               ; preds = %24
  %30 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* @SEPARATOR, align 4
  %36 = call i8* @strtok(i8* %34, i32 %35)
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %50, %33
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 0
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** @UNITSFILE, align 8
  %44 = call i32 @snprintf(i8* %41, i32 1000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %43)
  %45 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 0
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %46, i32** %3, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @SEPARATOR, align 4
  %52 = call i8* @strtok(i8* null, i32 %51)
  store i8* %52, i8** %10, align 8
  br label %37

53:                                               ; preds = %49, %37
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32*, i32** %3, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** @UNITSFILE, align 8
  %59 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %24
  br label %62

62:                                               ; preds = %61, %23
  %63 = load i32, i32* @CAP_READ, align 4
  %64 = load i32, i32* @CAP_FSTAT, align 4
  %65 = call i32 @cap_rights_init(i32* %9, i32 %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @fileno(i32* %66)
  %68 = call i64 @caph_rights_limit(i32 %67, i32* %9)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %62
  br label %73

73:                                               ; preds = %265, %248, %201, %182, %128, %113, %97, %72
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @feof(i32* %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %78, label %266

78:                                               ; preds = %73
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @fgets(i8* %79, i32 512, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %266

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %97, label %92

92:                                               ; preds = %84
  %93 = load i8*, i8** %5, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 35
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %84
  br label %73

98:                                               ; preds = %92
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @strspn(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i8*, i8** %5, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @strcspn(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %105, i32* %6, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %98
  br label %73

114:                                              ; preds = %98
  %115 = load i8*, i8** %5, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 45
  br i1 %123, label %124, label %197

124:                                              ; preds = %114
  %125 = load i64, i64* @prefixcount, align 8
  %126 = load i64, i64* @MAXPREFIXES, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  br label %73

131:                                              ; preds = %124
  %132 = load i8*, i8** %5, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i8*, i8** %5, align 8
  %139 = call i8* @dupstr(i8* %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prefixtable, align 8
  %141 = load i64, i64* @prefixcount, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i8* %139, i8** %143, align 8
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %164, %131
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* @prefixcount, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prefixtable, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 @strcmp(i8* %155, i8* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %149
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %160, i32 %161)
  br label %164

163:                                              ; preds = %149
  br label %164

164:                                              ; preds = %163, %159
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %144

167:                                              ; preds = %144
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  %170 = load i8*, i8** %5, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %5, align 8
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 @strspn(i8* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %175 = load i8*, i8** %5, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %5, align 8
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 @strcspn(i8* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %167
  %183 = load i32, i32* %7, align 4
  %184 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %183)
  br label %73

185:                                              ; preds = %167
  %186 = load i8*, i8** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  store i8 0, i8* %189, align 1
  %190 = load i8*, i8** %5, align 8
  %191 = call i8* @dupstr(i8* %190)
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prefixtable, align 8
  %193 = load i64, i64* @prefixcount, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* @prefixcount, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %193
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store i8* %191, i8** %196, align 8
  br label %265

197:                                              ; preds = %114
  %198 = load i64, i64* @unitcount, align 8
  %199 = load i64, i64* @MAXUNITS, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, i32* %7, align 4
  %203 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %202)
  br label %73

204:                                              ; preds = %197
  %205 = load i8*, i8** %5, align 8
  %206 = call i8* @dupstr(i8* %205)
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** @unittable, align 8
  %208 = load i64, i64* @unitcount, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 1
  store i8* %206, i8** %210, align 8
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %231, %204
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* @unitcount, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %216, label %234

216:                                              ; preds = %211
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** @unittable, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = load i8*, i8** %5, align 8
  %224 = call i32 @strcmp(i8* %222, i8* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %216
  %227 = load i8*, i8** %5, align 8
  %228 = load i32, i32* %7, align 4
  %229 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i8* %227, i32 %228)
  br label %231

230:                                              ; preds = %216
  br label %231

231:                                              ; preds = %230, %226
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  br label %211

234:                                              ; preds = %211
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  %237 = load i8*, i8** %5, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  store i8* %239, i8** %5, align 8
  %240 = load i8*, i8** %5, align 8
  %241 = call i32 @strspn(i8* %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %242 = load i8*, i8** %5, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %5, align 8
  %245 = load i8*, i8** %5, align 8
  %246 = call i32 @strlen(i8* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %234
  %249 = load i32, i32* %7, align 4
  %250 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %249)
  br label %73

251:                                              ; preds = %234
  %252 = load i8*, i8** %5, align 8
  %253 = call i32 @strcspn(i8* %252, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 %253, i32* %6, align 4
  %254 = load i8*, i8** %5, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  store i8 0, i8* %257, align 1
  %258 = load i8*, i8** %5, align 8
  %259 = call i8* @dupstr(i8* %258)
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** @unittable, align 8
  %261 = load i64, i64* @unitcount, align 8
  %262 = add i64 %261, 1
  store i64 %262, i64* @unitcount, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i64 %261
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  store i8* %259, i8** %264, align 8
  br label %265

265:                                              ; preds = %251, %185
  br label %73

266:                                              ; preds = %83, %73
  %267 = load i32*, i32** %3, align 8
  %268 = call i32 @fclose(i32* %267)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i8* @dupstr(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
