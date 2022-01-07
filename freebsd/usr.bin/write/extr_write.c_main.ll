; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@TIOCGETA = common dso_local global i64 0, align 8
@TIOCGWINSZ = common dso_local global i64 0, align 8
@FIODGNAME = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"open(/dev)\00", align 1
@CAP_FCNTL = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@CAP_LOOKUP = common dso_local global i32 0, align 4
@CAP_PWRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"can't limit devfd rights\00", align 1
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@CAP_FCNTL_GETFL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"can't limit stdio rights\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"cap_enter\00", align 1
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"can't find your tty\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"can't find your tty's name\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"you have write permission turned off\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s is not logged in on %s\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s has messages disabled on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %19 = load i64, i64* @TIOCGETA, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 1
  %21 = load i64, i64* @TIOCGWINSZ, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 1
  %23 = load i64, i64* @FIODGNAME, align 8
  store i64 %23, i64* %22, align 8
  %24 = load i32, i32* @MAXPATHLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = load i32, i32* @LC_CTYPE, align 4
  %29 = call i32 @setlocale(i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @_PATH_DEV, align 4
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = call i32 @open(i32 %30, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %2
  %38 = load i32, i32* @CAP_FCNTL, align 4
  %39 = load i32, i32* @CAP_FSTAT, align 4
  %40 = load i32, i32* @CAP_IOCTL, align 4
  %41 = load i32, i32* @CAP_LOOKUP, align 4
  %42 = load i32, i32* @CAP_PWRITE, align 4
  %43 = call i32 @cap_rights_init(i32* %7, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %17, align 4
  %45 = call i64 @caph_rights_limit(i32 %44, i32* %7)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %37
  %50 = load i32, i32* @CAP_FCNTL, align 4
  %51 = load i32, i32* @CAP_FSTAT, align 4
  %52 = load i32, i32* @CAP_IOCTL, align 4
  %53 = load i32, i32* @CAP_READ, align 4
  %54 = load i32, i32* @CAP_WRITE, align 4
  %55 = call i32 @cap_rights_init(i32* %7, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @STDIN_FILENO, align 4
  %57 = call i64 @caph_rights_limit(i32 %56, i32* %7)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %103, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @STDOUT_FILENO, align 4
  %61 = call i64 @caph_rights_limit(i32 %60, i32* %7)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %103, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @STDERR_FILENO, align 4
  %65 = call i64 @caph_rights_limit(i32 %64, i32* %7)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %103, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @STDIN_FILENO, align 4
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %71 = call i32 @nitems(i64* %70)
  %72 = call i64 @caph_ioctls_limit(i32 %68, i64* %69, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @STDOUT_FILENO, align 4
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %77 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %78 = call i32 @nitems(i64* %77)
  %79 = call i64 @caph_ioctls_limit(i32 %75, i64* %76, i32 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @STDERR_FILENO, align 4
  %83 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %84 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %85 = call i32 @nitems(i64* %84)
  %86 = call i64 @caph_ioctls_limit(i32 %82, i64* %83, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @STDIN_FILENO, align 4
  %90 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %91 = call i64 @caph_fcntls_limit(i32 %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @STDOUT_FILENO, align 4
  %95 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %96 = call i64 @caph_fcntls_limit(i32 %94, i32 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @STDERR_FILENO, align 4
  %100 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %101 = call i64 @caph_fcntls_limit(i32 %99, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98, %93, %88, %81, %74, %67, %63, %59, %49
  %104 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %98
  %106 = call i32 (...) @caph_cache_catpages()
  %107 = call i32 (...) @caph_cache_tzdata()
  %108 = call i32 (...) @setutxent()
  %109 = call i32 (...) @getuid()
  store i32 %109, i32* %10, align 4
  %110 = call i8* (...) @getlogin()
  store i8* %110, i8** %16, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = call %struct.passwd* @getpwuid(i32 %113)
  store %struct.passwd* %114, %struct.passwd** %8, align 8
  %115 = icmp ne %struct.passwd* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load %struct.passwd*, %struct.passwd** %8, align 8
  %118 = getelementptr inbounds %struct.passwd, %struct.passwd* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %16, align 8
  br label %121

120:                                              ; preds = %112
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %121

121:                                              ; preds = %120, %116
  br label %122

122:                                              ; preds = %121, %105
  %123 = call i64 (...) @caph_enter()
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %122
  br label %128

128:                                              ; preds = %133, %127
  %129 = load i32, i32* %4, align 4
  %130 = load i8**, i8*** %5, align 8
  %131 = call i32 @getopt(i32 %129, i8** %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %132 = icmp ne i32 %131, -1
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 (...) @usage()
  br label %128

135:                                              ; preds = %128
  %136 = load i64, i64* @optind, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %4, align 4
  %141 = load i64, i64* @optind, align 8
  %142 = load i8**, i8*** %5, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 %141
  store i8** %143, i8*** %5, align 8
  %144 = load i32, i32* @stdin, align 4
  %145 = call i32 @fileno(i32 %144)
  %146 = call i64 @isatty(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %135
  %149 = load i32, i32* @stdin, align 4
  %150 = call i32 @fileno(i32 %149)
  store i32 %150, i32* %12, align 4
  br label %171

151:                                              ; preds = %135
  %152 = load i32, i32* @stdout, align 4
  %153 = call i32 @fileno(i32 %152)
  %154 = call i64 @isatty(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* @stdout, align 4
  %158 = call i32 @fileno(i32 %157)
  store i32 %158, i32* %12, align 4
  br label %170

159:                                              ; preds = %151
  %160 = load i32, i32* @stderr, align 4
  %161 = call i32 @fileno(i32 %160)
  %162 = call i64 @isatty(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 @fileno(i32 %165)
  store i32 %166, i32* %12, align 4
  br label %169

167:                                              ; preds = %159
  %168 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %164
  br label %170

170:                                              ; preds = %169, %156
  br label %171

171:                                              ; preds = %170, %148
  %172 = load i32, i32* %12, align 4
  %173 = call i8* @ttyname(i32 %172)
  store i8* %173, i8** %15, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %171
  %178 = load i8*, i8** %15, align 8
  %179 = load i32, i32* @_PATH_DEV, align 4
  %180 = load i32, i32* @_PATH_DEV, align 4
  %181 = call i32 @strlen(i32 %180)
  %182 = call i32 @strncmp(i8* %178, i32 %179, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %177
  %185 = load i32, i32* @_PATH_DEV, align 4
  %186 = call i32 @strlen(i32 %185)
  %187 = load i8*, i8** %15, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %15, align 8
  br label %190

190:                                              ; preds = %184, %177
  %191 = load i32, i32* %17, align 4
  %192 = load i8*, i8** %15, align 8
  %193 = call i64 @term_chk(i32 %191, i8* %192, i32* %11, i32* %9, i32 1)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = call i32 @exit(i32 1) #4
  unreachable

197:                                              ; preds = %190
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %197
  %203 = load i32, i32* %4, align 4
  switch i32 %203, label %281 [
    i32 1, label %204
    i32 2, label %216
  ]

204:                                              ; preds = %202
  %205 = load i32, i32* %17, align 4
  %206 = load i8**, i8*** %5, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @search_utmp(i32 %205, i8* %208, i8* %27, i8* %209, i32 %210)
  %212 = load i32, i32* %17, align 4
  %213 = load i8*, i8** %15, align 8
  %214 = load i8*, i8** %16, align 8
  %215 = call i32 @do_write(i32 %212, i8* %27, i8* %213, i8* %214)
  br label %283

216:                                              ; preds = %202
  %217 = load i8**, i8*** %5, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 1
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* @_PATH_DEV, align 4
  %221 = load i32, i32* @_PATH_DEV, align 4
  %222 = call i32 @strlen(i32 %221)
  %223 = call i32 @strncmp(i8* %219, i32 %220, i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %216
  %226 = load i32, i32* @_PATH_DEV, align 4
  %227 = call i32 @strlen(i32 %226)
  %228 = load i8**, i8*** %5, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 1
  %230 = load i8*, i8** %229, align 8
  %231 = sext i32 %227 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %229, align 8
  br label %233

233:                                              ; preds = %225, %216
  %234 = load i8**, i8*** %5, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 0
  %236 = load i8*, i8** %235, align 8
  %237 = load i8**, i8*** %5, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @utmp_chk(i8* %236, i8* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %233
  %243 = load i8**, i8*** %5, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 0
  %245 = load i8*, i8** %244, align 8
  %246 = load i8**, i8*** %5, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 1
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %245, i8* %248)
  br label %250

250:                                              ; preds = %242, %233
  %251 = load i32, i32* %17, align 4
  %252 = load i8**, i8*** %5, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 1
  %254 = load i8*, i8** %253, align 8
  %255 = call i64 @term_chk(i32 %251, i8* %254, i32* %11, i32* %9, i32 1)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = call i32 @exit(i32 1) #4
  unreachable

259:                                              ; preds = %250
  %260 = load i32, i32* %10, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %273

262:                                              ; preds = %259
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %262
  %266 = load i8**, i8*** %5, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 0
  %268 = load i8*, i8** %267, align 8
  %269 = load i8**, i8*** %5, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 1
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %268, i8* %271)
  br label %273

273:                                              ; preds = %265, %262, %259
  %274 = load i32, i32* %17, align 4
  %275 = load i8**, i8*** %5, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 1
  %277 = load i8*, i8** %276, align 8
  %278 = load i8*, i8** %15, align 8
  %279 = load i8*, i8** %16, align 8
  %280 = call i32 @do_write(i32 %274, i8* %277, i8* %278, i8* %279)
  br label %283

281:                                              ; preds = %202
  %282 = call i32 (...) @usage()
  br label %283

283:                                              ; preds = %281, %273, %204
  %284 = call i32 @done(i32 0)
  store i32 0, i32* %3, align 4
  %285 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %285)
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i32 @open(i32, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @caph_rights_limit(i32, i32*) #2

declare dso_local i64 @caph_ioctls_limit(i32, i64*, i32) #2

declare dso_local i32 @nitems(i64*) #2

declare dso_local i64 @caph_fcntls_limit(i32, i32) #2

declare dso_local i32 @caph_cache_catpages(...) #2

declare dso_local i32 @caph_cache_tzdata(...) #2

declare dso_local i32 @setutxent(...) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i8* @getlogin(...) #2

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local i64 @caph_enter(...) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @isatty(i32) #2

declare dso_local i32 @fileno(i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i8* @ttyname(i32) #2

declare dso_local i32 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @term_chk(i32, i8*, i32*, i32*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @search_utmp(i32, i8*, i8*, i8*, i32) #2

declare dso_local i32 @do_write(i32, i8*, i8*, i8*) #2

declare dso_local i32 @utmp_chk(i8*, i8*) #2

declare dso_local i32 @done(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
