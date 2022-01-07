; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_parse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflist = type { i32 }
%struct.conf_entry = type { i64, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* }
%struct.ilist = type { i32 }
%struct.passwd = type { i8* }
%struct.group = type { i8* }
%struct.TYPE_4__ = type { i64, i8** }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"malformed line (missing fields):\0A%s\00", align 1
@DEBUG_MARKER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"debug line specifies no option:\0A%s\00", align 1
@INCLUDE_MARKER = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Found: %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"include line missing argument:\0A%s\00", align 1
@GLOB_NOCHECK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot expand pattern (%d): %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\09+ Expanding pattern %s\0A\00", align 1
@DEFAULT_MARKER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Ignoring duplicate entry for %s!\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"error in config file; unknown user:\0A%s\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"error in config file; unknown group:\0A%s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"error in config file; bad permissions:\0A%s\00", align 1
@DEFFILEMODE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"File mode bits 0%o changed to 0%o in line:\0A%s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"error in config file; bad value for count of logs to save:\0A%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Invalid value of '%s' for 'size' in line:\0A%s\00", align 1
@COMPRESS_NONE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [26 x i8] c"interval is too large:\0A%s\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"malformed interval/at:\0A%s\00", align 1
@CE_TRIMAT = common dso_local global i32 0, align 4
@PTM_PARSE_ISO8601 = common dso_local global i32 0, align 4
@PTM_PARSE_DWM = common dso_local global i32 0, align 4
@PTM_PARSE_MATCHDOM = common dso_local global i32 0, align 4
@timenow = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [36 x i8] c"nonexistent time for 'at' value:\0A%s\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"malformed 'at' value:\0A%s\00", align 1
@CE_BINARY = common dso_local global i32 0, align 4
@CE_CREATE = common dso_local global i32 0, align 4
@CE_NODUMP = common dso_local global i32 0, align 4
@CE_GLOB = common dso_local global i32 0, align 4
@COMPRESS_BZIP2 = common dso_local global i32 0, align 4
@CE_NOSIGNAL = common dso_local global i32 0, align 4
@CE_PLAIN0 = common dso_local global i32 0, align 4
@CE_PID2CMD = common dso_local global i32 0, align 4
@CE_RFC5424 = common dso_local global i32 0, align 4
@CE_SIGNALGROUP = common dso_local global i32 0, align 4
@COMPRESS_XZ = common dso_local global i32 0, align 4
@COMPRESS_ZSTD = common dso_local global i32 0, align 4
@COMPRESS_GZIP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [34 x i8] c"illegal flag in config file -- %c\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"illegal pid file or signal in config file:\0A%s\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@sys_nsig = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [34 x i8] c"illegal signal in config file:\0A%s\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"Ignoring '%s' because flag 'n' was specified in line:\0A%s\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Ignoring flag 'U' in line:\0A%s\00", align 1
@needroot = common dso_local global i64 0, align 8
@path_syslogpid = common dso_local global i8* null, align 8
@cf_nextp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.cflist*, %struct.cflist*, %struct.conf_entry**, %struct.ilist*)* @parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_file(i32* %0, %struct.cflist* %1, %struct.cflist* %2, %struct.conf_entry** %3, %struct.ilist* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cflist*, align 8
  %8 = alloca %struct.cflist*, align 8
  %9 = alloca %struct.conf_entry**, align 8
  %10 = alloca %struct.ilist*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.conf_entry*, align 8
  %19 = alloca %struct.passwd*, align 8
  %20 = alloca %struct.group*, align 8
  %21 = alloca %struct.TYPE_4__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.cflist* %1, %struct.cflist** %7, align 8
  store %struct.cflist* %2, %struct.cflist** %8, align 8
  store %struct.conf_entry** %3, %struct.conf_entry*** %9, align 8
  store %struct.ilist* %4, %struct.ilist** %10, align 8
  %29 = load i32, i32* @BUFSIZ, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %11, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  store i8* null, i8** %16, align 8
  br label %33

33:                                               ; preds = %829, %208, %195, %162, %148, %125, %51, %5
  %34 = load i32, i32* @BUFSIZ, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @fgets(i8* %32, i32 %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %830

38:                                               ; preds = %33
  %39 = getelementptr inbounds i8, i8* %32, i64 0
  %40 = load i8, i8* %39, align 16
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, i8* %32, i64 0
  %45 = load i8, i8* %44, align 16
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 35
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = call i64 @strlen(i8* %32)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %43, %38
  br label %33

52:                                               ; preds = %48
  %53 = load i8*, i8** %16, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %16, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = call i8* @strdup(i8* %32)
  store i8* %59, i8** %16, align 8
  %60 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %60, i8** %15, align 8
  br label %61

61:                                               ; preds = %87, %58
  %62 = load i8*, i8** %15, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load i8*, i8** %15, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 35
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %87

72:                                               ; preds = %66
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 92
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -1
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @strcpy(i8* %80, i8* %81)
  %83 = load i8*, i8** %15, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %84, i8** %15, align 8
  br label %87

85:                                               ; preds = %72
  %86 = load i8*, i8** %15, align 8
  store i8 0, i8* %86, align 1
  br label %90

87:                                               ; preds = %78, %71
  %88 = load i8*, i8** %15, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %15, align 8
  br label %61

90:                                               ; preds = %85, %61
  %91 = call i8* @sob(i8* %32)
  %92 = load i8*, i8** %16, align 8
  %93 = call i8* @missing_field(i8* %91, i8* %92)
  store i8* %93, i8** %13, align 8
  store i8* %93, i8** %14, align 8
  %94 = call i8* @son(i8* %32)
  store i8* %94, i8** %13, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %90
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %98, %90
  %102 = load i8*, i8** %13, align 8
  store i8 0, i8* %102, align 1
  %103 = load i32, i32* @DEBUG_MARKER, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = call i64 @strcasecmp(i32 %103, i8* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %101
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i8* @sob(i8* %109)
  %111 = load i8*, i8** %16, align 8
  %112 = call i8* @missing_field(i8* %110, i8* %111)
  store i8* %112, i8** %13, align 8
  store i8* %112, i8** %14, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = call i8* @son(i8* %113)
  store i8* %114, i8** %13, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %107
  %119 = load i8*, i8** %16, align 8
  %120 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  br label %125

121:                                              ; preds = %107
  %122 = load i8*, i8** %13, align 8
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @parse_doption(i8* %123)
  br label %125

125:                                              ; preds = %121, %118
  br label %33

126:                                              ; preds = %101
  %127 = load i32, i32* @INCLUDE_MARKER, align 4
  %128 = load i8*, i8** %14, align 8
  %129 = call i64 @strcasecmp(i32 %127, i8* %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %196

131:                                              ; preds = %126
  %132 = load i32, i32* @verbose, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i8*, i8** %16, align 8
  %136 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i8*, i8** %13, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = call i8* @sob(i8* %139)
  %141 = load i8*, i8** %16, align 8
  %142 = call i8* @missing_field(i8* %140, i8* %141)
  store i8* %142, i8** %13, align 8
  store i8* %142, i8** %14, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = call i8* @son(i8* %143)
  store i8* %144, i8** %13, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %137
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %149)
  br label %33

151:                                              ; preds = %137
  %152 = load i8*, i8** %13, align 8
  store i8 0, i8* %152, align 1
  %153 = load i8*, i8** %14, align 8
  %154 = call i64 @isglobstr(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %191

156:                                              ; preds = %151
  %157 = load i8*, i8** %14, align 8
  %158 = load i32, i32* @GLOB_NOCHECK, align 4
  %159 = call i32 @glob(i8* %157, i32 %158, i32* null, %struct.TYPE_4__* %21)
  store i32 %159, i32* %24, align 4
  %160 = load i32, i32* %24, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i32, i32* %24, align 4
  %164 = load i8*, i8** %14, align 8
  %165 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %163, i8* %164)
  br label %33

166:                                              ; preds = %156
  %167 = load i32, i32* @verbose, align 4
  %168 = icmp sgt i32 %167, 2
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i8*, i8** %14, align 8
  %171 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %169, %166
  store i64 0, i64* %26, align 8
  br label %173

173:                                              ; preds = %186, %172
  %174 = load i64, i64* %26, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ult i64 %174, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %180 = load i8**, i8*** %179, align 8
  %181 = load i64, i64* %26, align 8
  %182 = getelementptr inbounds i8*, i8** %180, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.ilist*, %struct.ilist** %10, align 8
  %185 = call i32 @add_to_queue(i8* %183, %struct.ilist* %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i64, i64* %26, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %26, align 8
  br label %173

189:                                              ; preds = %173
  %190 = call i32 @globfree(%struct.TYPE_4__* %21)
  br label %195

191:                                              ; preds = %151
  %192 = load i8*, i8** %14, align 8
  %193 = load %struct.ilist*, %struct.ilist** %10, align 8
  %194 = call i32 @add_to_queue(i8* %192, %struct.ilist* %193)
  br label %195

195:                                              ; preds = %191, %189
  br label %33

196:                                              ; preds = %126
  br label %197

197:                                              ; preds = %196
  store i32 0, i32* %25, align 4
  %198 = load i8*, i8** %14, align 8
  %199 = call %struct.conf_entry* @init_entry(i8* %198, i32* null)
  store %struct.conf_entry* %199, %struct.conf_entry** %18, align 8
  %200 = load i32, i32* @DEFAULT_MARKER, align 4
  %201 = load i8*, i8** %14, align 8
  %202 = call i64 @strcasecmp(i32 %200, i8* %201)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %197
  store i32 1, i32* %25, align 4
  %205 = load %struct.conf_entry**, %struct.conf_entry*** %9, align 8
  %206 = load %struct.conf_entry*, %struct.conf_entry** %205, align 8
  %207 = icmp ne %struct.conf_entry* %206, null
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i8*, i8** %14, align 8
  %210 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %209)
  %211 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %212 = call i32 @free_entry(%struct.conf_entry* %211)
  br label %33

213:                                              ; preds = %204
  %214 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %215 = load %struct.conf_entry**, %struct.conf_entry*** %9, align 8
  store %struct.conf_entry* %214, %struct.conf_entry** %215, align 8
  br label %216

216:                                              ; preds = %213, %197
  %217 = load i8*, i8** %13, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = call i8* @sob(i8* %218)
  %220 = load i8*, i8** %16, align 8
  %221 = call i8* @missing_field(i8* %219, i8* %220)
  store i8* %221, i8** %13, align 8
  store i8* %221, i8** %14, align 8
  %222 = load i8*, i8** %13, align 8
  %223 = call i8* @son(i8* %222)
  store i8* %223, i8** %13, align 8
  %224 = load i8*, i8** %13, align 8
  %225 = load i8, i8* %224, align 1
  %226 = icmp ne i8 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %216
  %228 = load i8*, i8** %16, align 8
  %229 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %228)
  br label %230

230:                                              ; preds = %227, %216
  %231 = load i8*, i8** %13, align 8
  store i8 0, i8* %231, align 1
  %232 = load i8*, i8** %14, align 8
  %233 = call i8* @strchr(i8* %232, i8 signext 58)
  store i8* %233, i8** %17, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %239, label %235

235:                                              ; preds = %230
  %236 = load i8*, i8** %14, align 8
  %237 = call i8* @strrchr(i8* %236, i8 signext 46)
  store i8* %237, i8** %17, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %318

239:                                              ; preds = %235, %230
  %240 = load i8*, i8** %17, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %17, align 8
  store i8 0, i8* %240, align 1
  %242 = load i8*, i8** %14, align 8
  %243 = load i8, i8* %242, align 1
  %244 = icmp ne i8 %243, 0
  br i1 %244, label %245, label %268

245:                                              ; preds = %239
  %246 = load i8*, i8** %14, align 8
  %247 = call i32 @isnumberstr(i8* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %262, label %249

249:                                              ; preds = %245
  %250 = load i8*, i8** %14, align 8
  %251 = call %struct.passwd* @getpwnam(i8* %250)
  store %struct.passwd* %251, %struct.passwd** %19, align 8
  %252 = icmp eq %struct.passwd* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i8*, i8** %16, align 8
  %255 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %254)
  br label %256

256:                                              ; preds = %253, %249
  %257 = load %struct.passwd*, %struct.passwd** %19, align 8
  %258 = getelementptr inbounds %struct.passwd, %struct.passwd* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %261 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %260, i32 0, i32 10
  store i8* %259, i8** %261, align 8
  br label %267

262:                                              ; preds = %245
  %263 = load i8*, i8** %14, align 8
  %264 = call i8* @atoi(i8* %263)
  %265 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %266 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %265, i32 0, i32 10
  store i8* %264, i8** %266, align 8
  br label %267

267:                                              ; preds = %262, %256
  br label %271

268:                                              ; preds = %239
  %269 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %270 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %269, i32 0, i32 10
  store i8* inttoptr (i64 -1 to i8*), i8** %270, align 8
  br label %271

271:                                              ; preds = %268, %267
  %272 = load i8*, i8** %17, align 8
  store i8* %272, i8** %14, align 8
  %273 = load i8*, i8** %14, align 8
  %274 = load i8, i8* %273, align 1
  %275 = icmp ne i8 %274, 0
  br i1 %275, label %276, label %299

276:                                              ; preds = %271
  %277 = load i8*, i8** %14, align 8
  %278 = call i32 @isnumberstr(i8* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %276
  %281 = load i8*, i8** %14, align 8
  %282 = call %struct.group* @getgrnam(i8* %281)
  store %struct.group* %282, %struct.group** %20, align 8
  %283 = icmp eq %struct.group* %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %280
  %285 = load i8*, i8** %16, align 8
  %286 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %285)
  br label %287

287:                                              ; preds = %284, %280
  %288 = load %struct.group*, %struct.group** %20, align 8
  %289 = getelementptr inbounds %struct.group, %struct.group* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %292 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %291, i32 0, i32 9
  store i8* %290, i8** %292, align 8
  br label %298

293:                                              ; preds = %276
  %294 = load i8*, i8** %14, align 8
  %295 = call i8* @atoi(i8* %294)
  %296 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %297 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %296, i32 0, i32 9
  store i8* %295, i8** %297, align 8
  br label %298

298:                                              ; preds = %293, %287
  br label %302

299:                                              ; preds = %271
  %300 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %301 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %300, i32 0, i32 9
  store i8* inttoptr (i64 -1 to i8*), i8** %301, align 8
  br label %302

302:                                              ; preds = %299, %298
  %303 = load i8*, i8** %13, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 1
  %305 = call i8* @sob(i8* %304)
  %306 = load i8*, i8** %16, align 8
  %307 = call i8* @missing_field(i8* %305, i8* %306)
  store i8* %307, i8** %13, align 8
  store i8* %307, i8** %14, align 8
  %308 = load i8*, i8** %13, align 8
  %309 = call i8* @son(i8* %308)
  store i8* %309, i8** %13, align 8
  %310 = load i8*, i8** %13, align 8
  %311 = load i8, i8* %310, align 1
  %312 = icmp ne i8 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %302
  %314 = load i8*, i8** %16, align 8
  %315 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %314)
  br label %316

316:                                              ; preds = %313, %302
  %317 = load i8*, i8** %13, align 8
  store i8 0, i8* %317, align 1
  br label %323

318:                                              ; preds = %235
  %319 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %320 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %319, i32 0, i32 10
  store i8* inttoptr (i64 -1 to i8*), i8** %320, align 8
  %321 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %322 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %321, i32 0, i32 9
  store i8* inttoptr (i64 -1 to i8*), i8** %322, align 8
  br label %323

323:                                              ; preds = %318, %316
  %324 = load i8*, i8** %14, align 8
  %325 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %326 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %325, i32 0, i32 0
  %327 = call i32 @sscanf(i8* %324, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %323
  %330 = load i8*, i8** %16, align 8
  %331 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %330)
  br label %332

332:                                              ; preds = %329, %323
  %333 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %334 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i32, i32* @DEFFILEMODE, align 4
  %337 = xor i32 %336, -1
  %338 = sext i32 %337 to i64
  %339 = and i64 %335, %338
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %359

341:                                              ; preds = %332
  %342 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %343 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %346 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i32, i32* @DEFFILEMODE, align 4
  %349 = sext i32 %348 to i64
  %350 = and i64 %347, %349
  %351 = load i8*, i8** %16, align 8
  %352 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i64 %344, i64 %350, i8* %351)
  %353 = load i32, i32* @DEFFILEMODE, align 4
  %354 = sext i32 %353 to i64
  %355 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %356 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = and i64 %357, %354
  store i64 %358, i64* %356, align 8
  br label %359

359:                                              ; preds = %341, %332
  %360 = load i8*, i8** %13, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 1
  %362 = call i8* @sob(i8* %361)
  %363 = load i8*, i8** %16, align 8
  %364 = call i8* @missing_field(i8* %362, i8* %363)
  store i8* %364, i8** %13, align 8
  store i8* %364, i8** %14, align 8
  %365 = load i8*, i8** %13, align 8
  %366 = call i8* @son(i8* %365)
  store i8* %366, i8** %13, align 8
  %367 = load i8*, i8** %13, align 8
  %368 = load i8, i8* %367, align 1
  %369 = icmp ne i8 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %359
  %371 = load i8*, i8** %16, align 8
  %372 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %371)
  br label %373

373:                                              ; preds = %370, %359
  %374 = load i8*, i8** %13, align 8
  store i8 0, i8* %374, align 1
  %375 = load i8*, i8** %14, align 8
  %376 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %377 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %376, i32 0, i32 1
  %378 = call i32 @sscanf(i8* %375, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64* %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %373
  %381 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %382 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = icmp slt i64 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %380, %373
  %386 = load i8*, i8** %16, align 8
  %387 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i8* %386)
  br label %388

388:                                              ; preds = %385, %380
  %389 = load i8*, i8** %13, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 1
  %391 = call i8* @sob(i8* %390)
  %392 = load i8*, i8** %16, align 8
  %393 = call i8* @missing_field(i8* %391, i8* %392)
  store i8* %393, i8** %13, align 8
  store i8* %393, i8** %14, align 8
  %394 = load i8*, i8** %13, align 8
  %395 = call i8* @son(i8* %394)
  store i8* %395, i8** %13, align 8
  %396 = load i8*, i8** %13, align 8
  %397 = load i8, i8* %396, align 1
  %398 = icmp ne i8 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %388
  %400 = load i8*, i8** %16, align 8
  %401 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %400)
  br label %402

402:                                              ; preds = %399, %388
  %403 = load i8*, i8** %13, align 8
  store i8 0, i8* %403, align 1
  %404 = load i8*, i8** %14, align 8
  %405 = load i8, i8* %404, align 1
  %406 = call i64 @isdigitch(i8 signext %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %414

408:                                              ; preds = %402
  %409 = load i8*, i8** %14, align 8
  %410 = call i8* @atoi(i8* %409)
  %411 = ptrtoint i8* %410 to i32
  %412 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %413 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %412, i32 0, i32 2
  store i32 %411, i32* %413, align 8
  br label %428

414:                                              ; preds = %402
  %415 = load i8*, i8** %14, align 8
  %416 = call i64 @strcmp(i8* %415, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %414
  %419 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %420 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %419, i32 0, i32 2
  store i32 -1, i32* %420, align 8
  br label %427

421:                                              ; preds = %414
  %422 = load i8*, i8** %14, align 8
  %423 = load i8*, i8** %16, align 8
  %424 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i8* %422, i8* %423)
  %425 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %426 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %425, i32 0, i32 2
  store i32 -1, i32* %426, align 8
  br label %427

427:                                              ; preds = %421, %418
  br label %428

428:                                              ; preds = %427, %408
  %429 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %430 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %429, i32 0, i32 3
  store i32 0, i32* %430, align 4
  %431 = load i32, i32* @COMPRESS_NONE, align 4
  %432 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %433 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %432, i32 0, i32 7
  store i32 %431, i32* %433, align 4
  %434 = load i8*, i8** %13, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 1
  %436 = call i8* @sob(i8* %435)
  %437 = load i8*, i8** %16, align 8
  %438 = call i8* @missing_field(i8* %436, i8* %437)
  store i8* %438, i8** %13, align 8
  store i8* %438, i8** %14, align 8
  %439 = load i8*, i8** %13, align 8
  %440 = call i8* @son(i8* %439)
  store i8* %440, i8** %13, align 8
  %441 = load i8*, i8** %13, align 8
  %442 = load i8, i8* %441, align 1
  %443 = icmp ne i8 %442, 0
  %444 = xor i1 %443, true
  %445 = zext i1 %444 to i32
  store i32 %445, i32* %22, align 4
  %446 = load i8*, i8** %13, align 8
  store i8 0, i8* %446, align 1
  %447 = load i8*, i8** %14, align 8
  %448 = call i64 @strtoul(i8* %447, i8** %27, i32 10)
  store i64 %448, i64* %28, align 8
  %449 = load i8*, i8** %27, align 8
  %450 = load i8*, i8** %14, align 8
  %451 = icmp eq i8* %449, %450
  br i1 %451, label %452, label %455

452:                                              ; preds = %428
  %453 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %454 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %453, i32 0, i32 4
  store i32 0, i32* %454, align 8
  br label %477

455:                                              ; preds = %428
  %456 = load i8*, i8** %27, align 8
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = icmp eq i32 %458, 42
  br i1 %459, label %460, label %463

460:                                              ; preds = %455
  %461 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %462 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %461, i32 0, i32 4
  store i32 -1, i32* %462, align 8
  br label %476

463:                                              ; preds = %455
  %464 = load i64, i64* %28, align 8
  %465 = load i64, i64* @INT_MAX, align 8
  %466 = icmp sgt i64 %464, %465
  br i1 %466, label %467, label %470

467:                                              ; preds = %463
  %468 = load i8*, i8** %16, align 8
  %469 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* %468)
  br label %475

470:                                              ; preds = %463
  %471 = load i64, i64* %28, align 8
  %472 = trunc i64 %471 to i32
  %473 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %474 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %473, i32 0, i32 4
  store i32 %472, i32* %474, align 8
  br label %475

475:                                              ; preds = %470, %467
  br label %476

476:                                              ; preds = %475, %460
  br label %477

477:                                              ; preds = %476, %452
  %478 = load i8*, i8** %27, align 8
  %479 = load i8, i8* %478, align 1
  %480 = sext i8 %479 to i32
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %486, label %482

482:                                              ; preds = %477
  %483 = load i8*, i8** %27, align 8
  %484 = call i64 @strcmp(i8* %483, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %482, %477
  br label %542

487:                                              ; preds = %482
  %488 = load i8*, i8** %27, align 8
  %489 = load i8, i8* %488, align 1
  %490 = sext i8 %489 to i32
  %491 = icmp ne i32 %490, 64
  br i1 %491, label %492, label %500

492:                                              ; preds = %487
  %493 = load i8*, i8** %27, align 8
  %494 = load i8, i8* %493, align 1
  %495 = sext i8 %494 to i32
  %496 = icmp ne i32 %495, 36
  br i1 %496, label %497, label %500

497:                                              ; preds = %492
  %498 = load i8*, i8** %16, align 8
  %499 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %498)
  br label %500

500:                                              ; preds = %497, %492, %487
  %501 = load i32, i32* @CE_TRIMAT, align 4
  %502 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %503 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 4
  %505 = or i32 %504, %501
  store i32 %505, i32* %503, align 4
  %506 = call i32 @ptime_init(i32* null)
  %507 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %508 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %507, i32 0, i32 8
  store i32 %506, i32* %508, align 8
  %509 = load i32, i32* @PTM_PARSE_ISO8601, align 4
  store i32 %509, i32* %23, align 4
  %510 = load i8*, i8** %27, align 8
  %511 = load i8, i8* %510, align 1
  %512 = sext i8 %511 to i32
  %513 = icmp eq i32 %512, 36
  br i1 %513, label %514, label %516

514:                                              ; preds = %500
  %515 = load i32, i32* @PTM_PARSE_DWM, align 4
  store i32 %515, i32* %23, align 4
  br label %516

516:                                              ; preds = %514, %500
  %517 = load i32, i32* @PTM_PARSE_MATCHDOM, align 4
  %518 = load i32, i32* %23, align 4
  %519 = or i32 %518, %517
  store i32 %519, i32* %23, align 4
  %520 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %521 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %520, i32 0, i32 8
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* %23, align 4
  %524 = load i32, i32* @timenow, align 4
  %525 = call i32 @ptimeget_secs(i32 %524)
  %526 = load i8*, i8** %27, align 8
  %527 = getelementptr inbounds i8, i8* %526, i64 1
  %528 = call i32 @ptime_relparse(i32 %522, i32 %523, i32 %525, i8* %527)
  store i32 %528, i32* %24, align 4
  %529 = load i32, i32* %24, align 4
  %530 = icmp eq i32 %529, -2
  br i1 %530, label %531, label %534

531:                                              ; preds = %516
  %532 = load i8*, i8** %16, align 8
  %533 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8* %532)
  br label %541

534:                                              ; preds = %516
  %535 = load i32, i32* %24, align 4
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %534
  %538 = load i8*, i8** %16, align 8
  %539 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* %538)
  br label %540

540:                                              ; preds = %537, %534
  br label %541

541:                                              ; preds = %540, %531
  br label %542

542:                                              ; preds = %541, %486
  %543 = load i32, i32* %22, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %542
  store i8* null, i8** %14, align 8
  br label %558

546:                                              ; preds = %542
  %547 = load i8*, i8** %13, align 8
  %548 = getelementptr inbounds i8, i8* %547, i64 1
  %549 = call i8* @sob(i8* %548)
  store i8* %549, i8** %13, align 8
  store i8* %549, i8** %14, align 8
  %550 = load i8*, i8** %13, align 8
  %551 = call i8* @son(i8* %550)
  store i8* %551, i8** %13, align 8
  %552 = load i8*, i8** %13, align 8
  %553 = load i8, i8* %552, align 1
  %554 = icmp ne i8 %553, 0
  br i1 %554, label %556, label %555

555:                                              ; preds = %546
  store i32 1, i32* %22, align 4
  br label %556

556:                                              ; preds = %555, %546
  %557 = load i8*, i8** %13, align 8
  store i8 0, i8* %557, align 1
  br label %558

558:                                              ; preds = %556, %545
  br label %559

559:                                              ; preds = %658, %558
  %560 = load i8*, i8** %14, align 8
  %561 = icmp ne i8* %560, null
  br i1 %561, label %562, label %573

562:                                              ; preds = %559
  %563 = load i8*, i8** %14, align 8
  %564 = load i8, i8* %563, align 1
  %565 = sext i8 %564 to i32
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %573

567:                                              ; preds = %562
  %568 = load i8*, i8** %14, align 8
  %569 = load i8, i8* %568, align 1
  %570 = call i32 @isspacech(i8 signext %569)
  %571 = icmp ne i32 %570, 0
  %572 = xor i1 %571, true
  br label %573

573:                                              ; preds = %567, %562, %559
  %574 = phi i1 [ false, %562 ], [ false, %559 ], [ %572, %567 ]
  br i1 %574, label %575, label %661

575:                                              ; preds = %573
  %576 = load i8*, i8** %14, align 8
  %577 = load i8, i8* %576, align 1
  %578 = call i32 @tolowerch(i8 signext %577)
  switch i32 %578, label %652 [
    i32 98, label %579
    i32 99, label %585
    i32 100, label %591
    i32 103, label %597
    i32 106, label %603
    i32 110, label %607
    i32 112, label %613
    i32 114, label %619
    i32 116, label %625
    i32 117, label %631
    i32 119, label %637
    i32 120, label %638
    i32 121, label %642
    i32 122, label %646
    i32 45, label %650
    i32 102, label %651
    i32 109, label %651
  ]

579:                                              ; preds = %575
  %580 = load i32, i32* @CE_BINARY, align 4
  %581 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %582 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %581, i32 0, i32 3
  %583 = load i32, i32* %582, align 4
  %584 = or i32 %583, %580
  store i32 %584, i32* %582, align 4
  br label %657

585:                                              ; preds = %575
  %586 = load i32, i32* @CE_CREATE, align 4
  %587 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %588 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %587, i32 0, i32 3
  %589 = load i32, i32* %588, align 4
  %590 = or i32 %589, %586
  store i32 %590, i32* %588, align 4
  br label %657

591:                                              ; preds = %575
  %592 = load i32, i32* @CE_NODUMP, align 4
  %593 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %594 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %593, i32 0, i32 3
  %595 = load i32, i32* %594, align 4
  %596 = or i32 %595, %592
  store i32 %596, i32* %594, align 4
  br label %657

597:                                              ; preds = %575
  %598 = load i32, i32* @CE_GLOB, align 4
  %599 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %600 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %599, i32 0, i32 3
  %601 = load i32, i32* %600, align 4
  %602 = or i32 %601, %598
  store i32 %602, i32* %600, align 4
  br label %657

603:                                              ; preds = %575
  %604 = load i32, i32* @COMPRESS_BZIP2, align 4
  %605 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %606 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %605, i32 0, i32 7
  store i32 %604, i32* %606, align 4
  br label %657

607:                                              ; preds = %575
  %608 = load i32, i32* @CE_NOSIGNAL, align 4
  %609 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %610 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %609, i32 0, i32 3
  %611 = load i32, i32* %610, align 4
  %612 = or i32 %611, %608
  store i32 %612, i32* %610, align 4
  br label %657

613:                                              ; preds = %575
  %614 = load i32, i32* @CE_PLAIN0, align 4
  %615 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %616 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %615, i32 0, i32 3
  %617 = load i32, i32* %616, align 4
  %618 = or i32 %617, %614
  store i32 %618, i32* %616, align 4
  br label %657

619:                                              ; preds = %575
  %620 = load i32, i32* @CE_PID2CMD, align 4
  %621 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %622 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %621, i32 0, i32 3
  %623 = load i32, i32* %622, align 4
  %624 = or i32 %623, %620
  store i32 %624, i32* %622, align 4
  br label %657

625:                                              ; preds = %575
  %626 = load i32, i32* @CE_RFC5424, align 4
  %627 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %628 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %627, i32 0, i32 3
  %629 = load i32, i32* %628, align 4
  %630 = or i32 %629, %626
  store i32 %630, i32* %628, align 4
  br label %657

631:                                              ; preds = %575
  %632 = load i32, i32* @CE_SIGNALGROUP, align 4
  %633 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %634 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %633, i32 0, i32 3
  %635 = load i32, i32* %634, align 4
  %636 = or i32 %635, %632
  store i32 %636, i32* %634, align 4
  br label %657

637:                                              ; preds = %575
  br label %657

638:                                              ; preds = %575
  %639 = load i32, i32* @COMPRESS_XZ, align 4
  %640 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %641 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %640, i32 0, i32 7
  store i32 %639, i32* %641, align 4
  br label %657

642:                                              ; preds = %575
  %643 = load i32, i32* @COMPRESS_ZSTD, align 4
  %644 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %645 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %644, i32 0, i32 7
  store i32 %643, i32* %645, align 4
  br label %657

646:                                              ; preds = %575
  %647 = load i32, i32* @COMPRESS_GZIP, align 4
  %648 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %649 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %648, i32 0, i32 7
  store i32 %647, i32* %649, align 4
  br label %657

650:                                              ; preds = %575
  br label %657

651:                                              ; preds = %575, %575
  br label %652

652:                                              ; preds = %575, %651
  %653 = load i8*, i8** %14, align 8
  %654 = load i8, i8* %653, align 1
  %655 = sext i8 %654 to i32
  %656 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %655)
  br label %657

657:                                              ; preds = %652, %650, %646, %642, %638, %637, %631, %625, %619, %613, %607, %603, %597, %591, %585, %579
  br label %658

658:                                              ; preds = %657
  %659 = load i8*, i8** %14, align 8
  %660 = getelementptr inbounds i8, i8* %659, i32 1
  store i8* %660, i8** %14, align 8
  br label %559

661:                                              ; preds = %573
  %662 = load i32, i32* %22, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %665

664:                                              ; preds = %661
  store i8* null, i8** %14, align 8
  br label %677

665:                                              ; preds = %661
  %666 = load i8*, i8** %13, align 8
  %667 = getelementptr inbounds i8, i8* %666, i64 1
  %668 = call i8* @sob(i8* %667)
  store i8* %668, i8** %13, align 8
  store i8* %668, i8** %14, align 8
  %669 = load i8*, i8** %13, align 8
  %670 = call i8* @son(i8* %669)
  store i8* %670, i8** %13, align 8
  %671 = load i8*, i8** %13, align 8
  %672 = load i8, i8* %671, align 1
  %673 = icmp ne i8 %672, 0
  br i1 %673, label %675, label %674

674:                                              ; preds = %665
  store i32 1, i32* %22, align 4
  br label %675

675:                                              ; preds = %674, %665
  %676 = load i8*, i8** %13, align 8
  store i8 0, i8* %676, align 1
  br label %677

677:                                              ; preds = %675, %664
  %678 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %679 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %678, i32 0, i32 5
  store i8* null, i8** %679, align 8
  %680 = load i8*, i8** %14, align 8
  %681 = icmp ne i8* %680, null
  br i1 %681, label %682, label %708

682:                                              ; preds = %677
  %683 = load i8*, i8** %14, align 8
  %684 = load i8, i8* %683, align 1
  %685 = sext i8 %684 to i32
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %708

687:                                              ; preds = %682
  %688 = load i8*, i8** %14, align 8
  %689 = load i8, i8* %688, align 1
  %690 = sext i8 %689 to i32
  %691 = icmp eq i32 %690, 47
  br i1 %691, label %692, label %697

692:                                              ; preds = %687
  %693 = load i8*, i8** %14, align 8
  %694 = call i8* @strdup(i8* %693)
  %695 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %696 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %695, i32 0, i32 5
  store i8* %694, i8** %696, align 8
  br label %707

697:                                              ; preds = %687
  %698 = load i8*, i8** %14, align 8
  %699 = load i8, i8* %698, align 1
  %700 = call i64 @isalnum(i8 signext %699)
  %701 = icmp ne i64 %700, 0
  br i1 %701, label %702, label %703

702:                                              ; preds = %697
  br label %731

703:                                              ; preds = %697
  %704 = load i8*, i8** %16, align 8
  %705 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i8* %704)
  br label %706

706:                                              ; preds = %703
  br label %707

707:                                              ; preds = %706, %692
  br label %708

708:                                              ; preds = %707, %682, %677
  %709 = load i32, i32* %22, align 4
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %712

711:                                              ; preds = %708
  store i8* null, i8** %14, align 8
  br label %719

712:                                              ; preds = %708
  %713 = load i8*, i8** %13, align 8
  %714 = getelementptr inbounds i8, i8* %713, i64 1
  %715 = call i8* @sob(i8* %714)
  store i8* %715, i8** %13, align 8
  store i8* %715, i8** %14, align 8
  %716 = load i8*, i8** %13, align 8
  %717 = call i8* @son(i8* %716)
  store i8* %717, i8** %13, align 8
  %718 = load i8*, i8** %13, align 8
  store i8 0, i8* %718, align 1
  br label %719

719:                                              ; preds = %712, %711
  %720 = load i32, i32* @SIGHUP, align 4
  %721 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %722 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %721, i32 0, i32 6
  store i32 %720, i32* %722, align 8
  %723 = load i8*, i8** %14, align 8
  %724 = icmp ne i8* %723, null
  br i1 %724, label %725, label %750

725:                                              ; preds = %719
  %726 = load i8*, i8** %14, align 8
  %727 = load i8, i8* %726, align 1
  %728 = sext i8 %727 to i32
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %730, label %750

730:                                              ; preds = %725
  br label %731

731:                                              ; preds = %730, %702
  %732 = load i8*, i8** %14, align 8
  %733 = call i32 @parse_signal(i8* %732)
  %734 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %735 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %734, i32 0, i32 6
  store i32 %733, i32* %735, align 8
  %736 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %737 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %736, i32 0, i32 6
  %738 = load i32, i32* %737, align 8
  %739 = icmp slt i32 %738, 1
  br i1 %739, label %746, label %740

740:                                              ; preds = %731
  %741 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %742 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %741, i32 0, i32 6
  %743 = load i32, i32* %742, align 8
  %744 = load i32, i32* @sys_nsig, align 4
  %745 = icmp sge i32 %743, %744
  br i1 %745, label %746, label %749

746:                                              ; preds = %740, %731
  %747 = load i8*, i8** %16, align 8
  %748 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i8* %747)
  br label %749

749:                                              ; preds = %746, %740
  br label %750

750:                                              ; preds = %749, %725, %719
  %751 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %752 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %751, i32 0, i32 3
  %753 = load i32, i32* %752, align 4
  %754 = load i32, i32* @CE_NOSIGNAL, align 4
  %755 = and i32 %753, %754
  %756 = load i32, i32* @CE_NOSIGNAL, align 4
  %757 = icmp eq i32 %755, %756
  br i1 %757, label %758, label %776

758:                                              ; preds = %750
  %759 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %760 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %759, i32 0, i32 5
  %761 = load i8*, i8** %760, align 8
  %762 = icmp ne i8* %761, null
  br i1 %762, label %763, label %775

763:                                              ; preds = %758
  %764 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %765 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %764, i32 0, i32 5
  %766 = load i8*, i8** %765, align 8
  %767 = load i8*, i8** %16, align 8
  %768 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0), i8* %766, i8* %767)
  %769 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %770 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %769, i32 0, i32 5
  %771 = load i8*, i8** %770, align 8
  %772 = call i32 @free(i8* %771)
  %773 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %774 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %773, i32 0, i32 5
  store i8* null, i8** %774, align 8
  br label %775

775:                                              ; preds = %763, %758
  br label %807

776:                                              ; preds = %750
  %777 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %778 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %777, i32 0, i32 5
  %779 = load i8*, i8** %778, align 8
  %780 = icmp eq i8* %779, null
  br i1 %780, label %781, label %806

781:                                              ; preds = %776
  %782 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %783 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %782, i32 0, i32 3
  %784 = load i32, i32* %783, align 4
  %785 = load i32, i32* @CE_SIGNALGROUP, align 4
  %786 = and i32 %784, %785
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %797

788:                                              ; preds = %781
  %789 = load i8*, i8** %16, align 8
  %790 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i8* %789)
  %791 = load i32, i32* @CE_SIGNALGROUP, align 4
  %792 = xor i32 %791, -1
  %793 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %794 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %793, i32 0, i32 3
  %795 = load i32, i32* %794, align 4
  %796 = and i32 %795, %792
  store i32 %796, i32* %794, align 4
  br label %797

797:                                              ; preds = %788, %781
  %798 = load i64, i64* @needroot, align 8
  %799 = icmp ne i64 %798, 0
  br i1 %799, label %800, label %805

800:                                              ; preds = %797
  %801 = load i8*, i8** @path_syslogpid, align 8
  %802 = call i8* @strdup(i8* %801)
  %803 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %804 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %803, i32 0, i32 5
  store i8* %802, i8** %804, align 8
  br label %805

805:                                              ; preds = %800, %797
  br label %806

806:                                              ; preds = %805, %776
  br label %807

807:                                              ; preds = %806, %775
  %808 = load i32, i32* %25, align 4
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %811

810:                                              ; preds = %807
  br label %829

811:                                              ; preds = %807
  %812 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %813 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %812, i32 0, i32 3
  %814 = load i32, i32* %813, align 4
  %815 = load i32, i32* @CE_GLOB, align 4
  %816 = and i32 %814, %815
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %823

818:                                              ; preds = %811
  %819 = load %struct.cflist*, %struct.cflist** %8, align 8
  %820 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %821 = load i32, i32* @cf_nextp, align 4
  %822 = call i32 @STAILQ_INSERT_TAIL(%struct.cflist* %819, %struct.conf_entry* %820, i32 %821)
  br label %828

823:                                              ; preds = %811
  %824 = load %struct.cflist*, %struct.cflist** %7, align 8
  %825 = load %struct.conf_entry*, %struct.conf_entry** %18, align 8
  %826 = load i32, i32* @cf_nextp, align 4
  %827 = call i32 @STAILQ_INSERT_TAIL(%struct.cflist* %824, %struct.conf_entry* %825, i32 %826)
  br label %828

828:                                              ; preds = %823, %818
  br label %829

829:                                              ; preds = %828, %810
  br label %33

830:                                              ; preds = %33
  %831 = load i8*, i8** %16, align 8
  %832 = icmp ne i8* %831, null
  br i1 %832, label %833, label %836

833:                                              ; preds = %830
  %834 = load i8*, i8** %16, align 8
  %835 = call i32 @free(i8* %834)
  br label %836

836:                                              ; preds = %833, %830
  %837 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %837)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @missing_field(i8*, i8*) #2

declare dso_local i8* @sob(i8*) #2

declare dso_local i8* @son(i8*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @strcasecmp(i32, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @parse_doption(i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i64 @isglobstr(i8*) #2

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @warn(i8*, i32, i8*) #2

declare dso_local i32 @add_to_queue(i8*, %struct.ilist*) #2

declare dso_local i32 @globfree(%struct.TYPE_4__*) #2

declare dso_local %struct.conf_entry* @init_entry(i8*, i32*) #2

declare dso_local i32 @free_entry(%struct.conf_entry*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @isnumberstr(i8*) #2

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local %struct.group* @getgrnam(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*) #2

declare dso_local i64 @isdigitch(i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @ptime_init(i32*) #2

declare dso_local i32 @ptime_relparse(i32, i32, i32, i8*) #2

declare dso_local i32 @ptimeget_secs(i32) #2

declare dso_local i32 @isspacech(i8 signext) #2

declare dso_local i32 @tolowerch(i8 signext) #2

declare dso_local i64 @isalnum(i8 signext) #2

declare dso_local i32 @parse_signal(i8*) #2

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.cflist*, %struct.conf_entry*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
