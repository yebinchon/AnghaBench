; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_read.c_read_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_read.c_read_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i8*, i32, i8**, i32 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.stat = type { i64 }
%struct.tm = type { i32 }

@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"archive_read_new failed\00", align 1
@DEF_BLKSZ = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Retrying...\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"/SYM64/\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"basename failed\00", align 1
@AR_V = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"%s %6d/%-6d %8ju \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%b %e %H:%M %Y\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\0A<%s>\0A\0A\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"stat %s failed\00", align 1
@AR_CC = common dso_local global i32 0, align 4
@AR_U = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"x - %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Absolute path '%s'\00", align 1
@ARCHIVE_EXTRACT_SECURE_SYMLINKS = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_SECURE_NODOTDOT = common dso_local global i32 0, align 4
@AR_O = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i8)* @read_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_archive(%struct.bsdar* %0, i8 signext %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca [25 x i8], align 16
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store i8 %1, i8* %4, align 1
  %22 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %22, %struct.archive** %5, align 8
  %23 = icmp eq %struct.archive* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %26 = load i32, i32* @EX_SOFTWARE, align 4
  %27 = call i32 @bsdar_errc(%struct.bsdar* %25, i32 %26, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.archive*, %struct.archive** %5, align 8
  %30 = call i32 @archive_read_support_format_ar(%struct.archive* %29)
  %31 = load %struct.archive*, %struct.archive** %5, align 8
  %32 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %33 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @DEF_BLKSZ, align 4
  %36 = call i32 @archive_read_open_filename(%struct.archive* %31, i8* %34, i32 %35)
  %37 = call i32 @AC(i32 %36)
  br label %38

38:                                               ; preds = %327, %293, %274, %260, %246, %140, %92, %72, %28
  %39 = load %struct.archive*, %struct.archive** %5, align 8
  %40 = call i32 @archive_read_next_header(%struct.archive* %39, %struct.archive_entry** %6)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* @ARCHIVE_WARN, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* @ARCHIVE_RETRY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* @ARCHIVE_FATAL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48, %44, %38
  %53 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %54 = load %struct.archive*, %struct.archive** %5, align 8
  %55 = call i32 @archive_errno(%struct.archive* %54)
  %56 = load %struct.archive*, %struct.archive** %5, align 8
  %57 = call i8* @archive_error_string(%struct.archive* %56)
  %58 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %53, i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %52, %48
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* @ARCHIVE_EOF, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* @ARCHIVE_FATAL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59
  br label %328

68:                                               ; preds = %63
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* @ARCHIVE_RETRY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %74 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %73, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %38

75:                                               ; preds = %68
  %76 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %77 = call i8* @archive_entry_pathname(%struct.archive_entry* %76)
  store i8* %77, i8** %10, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %328

80:                                               ; preds = %75
  %81 = load i8*, i8** %10, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %10, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %10, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %84, %80
  br label %38

93:                                               ; preds = %88
  %94 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %95 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %142

98:                                               ; preds = %93
  store i8 0, i8* %18, align 1
  store i32 0, i32* %21, align 4
  br label %99

99:                                               ; preds = %134, %98
  %100 = load i32, i32* %21, align 4
  %101 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %102 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %99
  %106 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %107 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %106, i32 0, i32 2
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %21, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8** %111, i8*** %16, align 8
  %112 = load i8**, i8*** %16, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %134

116:                                              ; preds = %105
  %117 = load i8**, i8*** %16, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @basename(i8* %118)
  store i8* %119, i8** %9, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %123 = load i32, i32* @EX_SOFTWARE, align 4
  %124 = load i64, i64* @errno, align 8
  %125 = call i32 @bsdar_errc(%struct.bsdar* %122, i32 %123, i64 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i64 @strcmp(i8* %127, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %134

132:                                              ; preds = %126
  %133 = load i8**, i8*** %16, align 8
  store i8* null, i8** %133, align 8
  store i8 1, i8* %18, align 1
  br label %137

134:                                              ; preds = %131, %115
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %21, align 4
  br label %99

137:                                              ; preds = %132, %99
  %138 = load i8, i8* %18, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %38

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %93
  %143 = load i8, i8* %4, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 116
  br i1 %145, label %146, label %218

146:                                              ; preds = %142
  %147 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %148 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @AR_V, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %183

153:                                              ; preds = %146
  %154 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %155 = call i32 @archive_entry_mode(%struct.archive_entry* %154)
  store i32 %155, i32* %11, align 4
  %156 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %157 = call i32 @archive_entry_uid(%struct.archive_entry* %156)
  store i32 %157, i32* %14, align 4
  %158 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %159 = call i32 @archive_entry_gid(%struct.archive_entry* %158)
  store i32 %159, i32* %15, align 4
  %160 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %161 = call i64 @archive_entry_size(%struct.archive_entry* %160)
  store i64 %161, i64* %12, align 8
  %162 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %163 = call i64 @archive_entry_mtime(%struct.archive_entry* %162)
  store i64 %163, i64* %13, align 8
  %164 = load i32, i32* %11, align 4
  %165 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %166 = call i32 @strmode(i32 %164, i8* %165)
  %167 = load i32, i32* @stdout, align 4
  %168 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i64, i64* %12, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %169, i32 %170, i32 %171, i32 %173)
  %175 = call %struct.tm* @localtime(i64* %13)
  store %struct.tm* %175, %struct.tm** %8, align 8
  %176 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %177 = load %struct.tm*, %struct.tm** %8, align 8
  %178 = call i32 @strftime(i8* %176, i32 25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %struct.tm* %177)
  %179 = load i32, i32* @stdout, align 4
  %180 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %181 = load i8*, i8** %10, align 8
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %180, i8* %181)
  br label %187

183:                                              ; preds = %146
  %184 = load i32, i32* @stdout, align 4
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %183, %153
  %188 = load %struct.archive*, %struct.archive** %5, align 8
  %189 = call i32 @archive_read_data_skip(%struct.archive* %188)
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* @ARCHIVE_WARN, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %201, label %193

193:                                              ; preds = %187
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* @ARCHIVE_RETRY, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* @ARCHIVE_FATAL, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %197, %193, %187
  %202 = load i32, i32* @stdout, align 4
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %204 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %205 = load %struct.archive*, %struct.archive** %5, align 8
  %206 = call i32 @archive_errno(%struct.archive* %205)
  %207 = load %struct.archive*, %struct.archive** %5, align 8
  %208 = call i8* @archive_error_string(%struct.archive* %207)
  %209 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %204, i32 %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %201, %197
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* @ARCHIVE_FATAL, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  br label %328

215:                                              ; preds = %210
  %216 = load i32, i32* @stdout, align 4
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %327

218:                                              ; preds = %142
  %219 = load i8, i8* %4, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 112
  br i1 %221, label %222, label %238

222:                                              ; preds = %218
  %223 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %224 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @AR_V, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %222
  %230 = load i32, i32* @stdout, align 4
  %231 = load i8*, i8** %10, align 8
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %231)
  %233 = load i32, i32* @stdout, align 4
  %234 = call i32 @fflush(i32 %233)
  br label %235

235:                                              ; preds = %229, %222
  %236 = load %struct.archive*, %struct.archive** %5, align 8
  %237 = call i32 @archive_read_data_into_fd(%struct.archive* %236, i32 1)
  store i32 %237, i32* %20, align 4
  br label %316

238:                                              ; preds = %218
  %239 = load i8*, i8** %10, align 8
  %240 = call i64 @stat(i8* %239, %struct.stat* %7)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %238
  %243 = load i64, i64* @errno, align 8
  %244 = load i64, i64* @ENOENT, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %242
  %247 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %248 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %249 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %247, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %250)
  br label %38

252:                                              ; preds = %242
  br label %276

253:                                              ; preds = %238
  %254 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %255 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @AR_CC, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  br label %38

261:                                              ; preds = %253
  %262 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %263 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @AR_U, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %261
  %269 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %270 = call i64 @archive_entry_mtime(%struct.archive_entry* %269)
  %271 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp sle i64 %270, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  br label %38

275:                                              ; preds = %268, %261
  br label %276

276:                                              ; preds = %275, %252
  %277 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %278 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @AR_V, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %276
  %284 = load i32, i32* @stdout, align 4
  %285 = load i8*, i8** %10, align 8
  %286 = call i32 (i32, i8*, ...) @fprintf(i32 %284, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %285)
  br label %287

287:                                              ; preds = %283, %276
  %288 = load i8*, i8** %10, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 0
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 47
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %295 = load i8*, i8** %10, align 8
  %296 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %294, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %295)
  br label %38

297:                                              ; preds = %287
  %298 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_SYMLINKS, align 4
  %299 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NODOTDOT, align 4
  %300 = or i32 %298, %299
  store i32 %300, i32* %19, align 4
  %301 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %302 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @AR_O, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %297
  %308 = load i32, i32* @ARCHIVE_EXTRACT_TIME, align 4
  %309 = load i32, i32* %19, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %19, align 4
  br label %311

311:                                              ; preds = %307, %297
  %312 = load %struct.archive*, %struct.archive** %5, align 8
  %313 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %314 = load i32, i32* %19, align 4
  %315 = call i32 @archive_read_extract(%struct.archive* %312, %struct.archive_entry* %313, i32 %314)
  store i32 %315, i32* %20, align 4
  br label %316

316:                                              ; preds = %311, %235
  %317 = load i32, i32* %20, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %316
  %320 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %321 = load %struct.archive*, %struct.archive** %5, align 8
  %322 = call i32 @archive_errno(%struct.archive* %321)
  %323 = load %struct.archive*, %struct.archive** %5, align 8
  %324 = call i8* @archive_error_string(%struct.archive* %323)
  %325 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %320, i32 %322, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %324)
  br label %326

326:                                              ; preds = %319, %316
  br label %327

327:                                              ; preds = %326, %215
  br label %38

328:                                              ; preds = %214, %79, %67
  %329 = load %struct.archive*, %struct.archive** %5, align 8
  %330 = call i32 @archive_read_close(%struct.archive* %329)
  %331 = call i32 @AC(i32 %330)
  %332 = load %struct.archive*, %struct.archive** %5, align 8
  %333 = call i32 @archive_read_free(%struct.archive* %332)
  %334 = call i32 @AC(i32 %333)
  ret void
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i64, i8*) #1

declare dso_local i32 @archive_read_support_format_ar(%struct.archive*) #1

declare dso_local i32 @AC(i32) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @bsdar_warnc(%struct.bsdar*, i32, i8*, ...) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @strmode(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @archive_read_data_skip(%struct.archive*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @archive_read_data_into_fd(%struct.archive*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @archive_read_extract(%struct.archive*, %struct.archive_entry*, i32) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
