; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/uniq/extr_uniq.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/uniq/extr_uniq.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"+cdif:s:u\00", align 1
@long_opts = common dso_local global i32 0, align 4
@cflag = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@numfields = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"illegal field skip value: %s\00", align 1
@numchars = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"illegal character skip value: %s\00", align 1
@uflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"unable to limit rights for %s\00", align 1
@CAP_WRITE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@CAP_IOCTL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@TIOCGETA = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"unable to limit ioctls for %s\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@repeats = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i32, i32* @LC_ALL, align 4
  %22 = call i32 @setlocale(i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @obsolete(i8** %23)
  br label %25

25:                                               ; preds = %68, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* @long_opts, align 4
  %29 = call i32 @getopt_long(i32 %26, i8** %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32* null)
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %66 [
    i32 99, label %33
    i32 100, label %34
    i32 105, label %35
    i32 102, label %36
    i32 115, label %50
    i32 117, label %64
    i32 63, label %65
  ]

33:                                               ; preds = %31
  store i32 1, i32* @cflag, align 4
  br label %68

34:                                               ; preds = %31
  store i32 1, i32* @dflag, align 4
  br label %68

35:                                               ; preds = %31
  store i32 1, i32* @iflag, align 4
  br label %68

36:                                               ; preds = %31
  %37 = load i32, i32* @optarg, align 4
  %38 = call i8* @strtol(i32 %37, i8** %17, i32 10)
  store i8* %38, i8** @numfields, align 8
  %39 = load i8*, i8** @numfields, align 8
  %40 = icmp ult i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %17, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @optarg, align 4
  %48 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %68

50:                                               ; preds = %31
  %51 = load i32, i32* @optarg, align 4
  %52 = call i8* @strtol(i32 %51, i8** %17, i32 10)
  store i8* %52, i8** @numchars, align 8
  %53 = load i8*, i8** @numchars, align 8
  %54 = icmp ult i8* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %17, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @optarg, align 4
  %62 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %55
  br label %68

64:                                               ; preds = %31
  store i32 1, i32* @uflag, align 4
  br label %68

65:                                               ; preds = %31
  br label %66

66:                                               ; preds = %31, %65
  %67 = call i32 (...) @usage()
  br label %68

68:                                               ; preds = %66, %64, %63, %49, %35, %34, %33
  br label %25

69:                                               ; preds = %25
  %70 = load i64, i64* @optind, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  %75 = load i64, i64* @optind, align 8
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 %75
  store i8** %77, i8*** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = icmp sgt i32 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = call i32 (...) @usage()
  br label %82

82:                                               ; preds = %80, %69
  %83 = load i32*, i32** @stdin, align 8
  store i32* %83, i32** %8, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  %84 = load i32*, i32** @stdout, align 8
  store i32* %84, i32** %9, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %18, align 8
  %97 = call i32* @file(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %97, i32** %8, align 8
  br label %98

98:                                               ; preds = %93, %87, %82
  %99 = load i32, i32* @CAP_FSTAT, align 4
  %100 = load i32, i32* @CAP_READ, align 4
  %101 = call i32 @cap_rights_init(i32* %19, i32 %99, i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @fileno(i32* %102)
  %104 = call i64 @caph_rights_limit(i32 %103, i32* %19)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i8*, i8** %18, align 8
  %108 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %98
  %110 = load i32, i32* @CAP_FSTAT, align 4
  %111 = load i32, i32* @CAP_WRITE, align 4
  %112 = call i32 @cap_rights_init(i32* %19, i32 %110, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32* @file(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %119, i32** %9, align 8
  br label %123

120:                                              ; preds = %109
  %121 = load i32, i32* @CAP_IOCTL, align 4
  %122 = call i32 @cap_rights_set(i32* %19, i32 %121)
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @fileno(i32* %124)
  %126 = call i64 @caph_rights_limit(i32 %125, i32* %19)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load i32, i32* %4, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  %134 = load i8*, i8** %133, align 8
  br label %136

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i8* [ %134, %131 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %135 ]
  %138 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %136, %123
  %140 = load i32, i32* @CAP_IOCTL, align 4
  %141 = call i64 @cap_rights_is_set(i32* %19, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %139
  %144 = load i64, i64* @TIOCGETA, align 8
  store i64 %144, i64* %20, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @fileno(i32* %145)
  %147 = call i64 @caph_ioctls_limit(i32 %146, i64* %20, i32 1)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load i32, i32* %4, align 4
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i8**, i8*** %5, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 1
  %155 = load i8*, i8** %154, align 8
  br label %157

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %152
  %158 = phi i8* [ %155, %152 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %156 ]
  %159 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %157, %143
  br label %161

161:                                              ; preds = %160, %139
  %162 = call i32 (...) @caph_cache_catpages()
  %163 = call i64 (...) @caph_enter()
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %161
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %15, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = call i64 @getline(i8** %15, i64* %12, i32* %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load i32*, i32** %8, align 8
  %173 = call i64 @ferror(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i8*, i8** %18, align 8
  %177 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %175, %171
  %179 = call i32 @exit(i32 0) #3
  unreachable

180:                                              ; preds = %167
  %181 = load i8*, i8** %15, align 8
  %182 = call i32* @convert(i8* %181)
  store i32* %182, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %183

183:                                              ; preds = %240, %180
  %184 = load i32*, i32** %8, align 8
  %185 = call i64 @getline(i8** %16, i64* %13, i32* %184)
  %186 = icmp sge i64 %185, 0
  br i1 %186, label %187, label %241

187:                                              ; preds = %183
  %188 = load i32*, i32** %7, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32*, i32** %7, align 8
  %192 = call i32 @free(i32* %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i8*, i8** %16, align 8
  %195 = call i32* @convert(i8* %194)
  store i32* %195, i32** %7, align 8
  %196 = load i32*, i32** %7, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load i32*, i32** %6, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i8*, i8** %16, align 8
  %203 = load i8*, i8** %15, align 8
  %204 = call i32 @inlcmp(i8* %202, i8* %203)
  store i32 %204, i32* %11, align 4
  br label %217

205:                                              ; preds = %198, %193
  %206 = load i32*, i32** %7, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = load i32*, i32** %6, align 8
  %210 = icmp eq i32* %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %208, %205
  store i32 1, i32* %11, align 4
  br label %216

212:                                              ; preds = %208
  %213 = load i32*, i32** %7, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = call i32 @wcscoll(i32* %213, i32* %214)
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %212, %211
  br label %217

217:                                              ; preds = %216, %201
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %217
  %221 = load i32*, i32** %9, align 8
  %222 = load i8*, i8** %15, align 8
  %223 = call i32 @show(i32* %221, i8* %222)
  %224 = load i8*, i8** %15, align 8
  store i8* %224, i8** %17, align 8
  %225 = load i64, i64* %12, align 8
  store i64 %225, i64* %14, align 8
  %226 = load i8*, i8** %16, align 8
  store i8* %226, i8** %15, align 8
  %227 = load i64, i64* %13, align 8
  store i64 %227, i64* %12, align 8
  %228 = load i32*, i32** %6, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %220
  %231 = load i32*, i32** %6, align 8
  %232 = call i32 @free(i32* %231)
  br label %233

233:                                              ; preds = %230, %220
  %234 = load i32*, i32** %7, align 8
  store i32* %234, i32** %6, align 8
  %235 = load i8*, i8** %17, align 8
  store i8* %235, i8** %16, align 8
  %236 = load i64, i64* %14, align 8
  store i64 %236, i64* %13, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* @repeats, align 8
  br label %240

237:                                              ; preds = %217
  %238 = load i64, i64* @repeats, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* @repeats, align 8
  br label %240

240:                                              ; preds = %237, %233
  br label %183

241:                                              ; preds = %183
  %242 = load i32*, i32** %8, align 8
  %243 = call i64 @ferror(i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load i8*, i8** %18, align 8
  %247 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %246)
  br label %248

248:                                              ; preds = %245, %241
  %249 = load i32*, i32** %9, align 8
  %250 = load i8*, i8** %15, align 8
  %251 = call i32 @show(i32* %249, i8* %250)
  %252 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @obsolete(i8**) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i8* @strtol(i32, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @file(i8*, i8*) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @cap_rights_set(i32*, i32) #1

declare dso_local i64 @cap_rights_is_set(i32*, i32) #1

declare dso_local i64 @caph_ioctls_limit(i32, i64*, i32) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @ferror(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @convert(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @inlcmp(i8*, i8*) #1

declare dso_local i32 @wcscoll(i32*, i32*) #1

declare dso_local i32 @show(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
