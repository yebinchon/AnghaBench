; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_read_objs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_read_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i32, i8**, i32 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.ar_obj = type { i8*, i64, i32, i64, i64, i32, i32, i32, i32, i32* }

@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"archive_read_new failed\00", align 1
@DEF_BLKSZ = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Retrying...\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"basename failed\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"strdup failed\00", align 1
@objs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i8*, i32)* @read_objs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_objs(%struct.bsdar* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bsdar*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca %struct.ar_obj*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bsdar* %0, %struct.bsdar** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %18, %struct.archive** %7, align 8
  %19 = icmp eq %struct.archive* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %22 = load i32, i32* @EX_SOFTWARE, align 4
  %23 = call i32 (%struct.bsdar*, i32, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %21, i32 %22, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.archive*, %struct.archive** %7, align 8
  %26 = call i32 @archive_read_support_format_ar(%struct.archive* %25)
  %27 = load %struct.archive*, %struct.archive** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @DEF_BLKSZ, align 4
  %30 = call i32 @archive_read_open_filename(%struct.archive* %27, i8* %28, i32 %29)
  %31 = call i32 @AC(i32 %30)
  br label %32

32:                                               ; preds = %193, %158, %134, %83, %70, %24
  %33 = load %struct.archive*, %struct.archive** %7, align 8
  %34 = call i32 @archive_read_next_header(%struct.archive* %33, %struct.archive_entry** %8)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %40 = load i32, i32* @EX_DATAERR, align 4
  %41 = load %struct.archive*, %struct.archive** %7, align 8
  %42 = call i32 @archive_errno(%struct.archive* %41)
  %43 = load %struct.archive*, %struct.archive** %7, align 8
  %44 = call i32 @archive_error_string(%struct.archive* %43)
  %45 = call i32 (%struct.bsdar*, i32, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %39, i32 %40, i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38, %32
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @ARCHIVE_EOF, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %224

51:                                               ; preds = %46
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @ARCHIVE_WARN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @ARCHIVE_RETRY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55, %51
  %60 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %61 = load %struct.archive*, %struct.archive** %7, align 8
  %62 = call i32 @archive_errno(%struct.archive* %61)
  %63 = load %struct.archive*, %struct.archive** %7, align 8
  %64 = call i32 @archive_error_string(%struct.archive* %63)
  %65 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %60, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %59, %55
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @ARCHIVE_RETRY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %72 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %71, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %32

73:                                               ; preds = %66
  %74 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %75 = call i8* @archive_entry_pathname(%struct.archive_entry* %74)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %10, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %73
  br label %32

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %136

87:                                               ; preds = %84
  %88 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %89 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %136

92:                                               ; preds = %87
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %128, %92
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %96 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %93
  %100 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %101 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8** %105, i8*** %13, align 8
  %106 = load i8**, i8*** %13, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %128

110:                                              ; preds = %99
  %111 = load i8**, i8*** %13, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @basename(i8* %112)
  store i8* %113, i8** %11, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %117 = load i32, i32* @EX_SOFTWARE, align 4
  %118 = load i32, i32* @errno, align 4
  %119 = call i32 (%struct.bsdar*, i32, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i8*, i8** %11, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i64 @strcmp(i8* %121, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %128

126:                                              ; preds = %120
  %127 = load i8**, i8*** %13, align 8
  store i8* null, i8** %127, align 8
  store i32 1, i32* %17, align 4
  br label %131

128:                                              ; preds = %125, %109
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %93

131:                                              ; preds = %126, %93
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  br label %32

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %135, %87, %84
  %137 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %138 = call i64 @archive_entry_size(%struct.archive_entry* %137)
  store i64 %138, i64* %14, align 8
  %139 = load i64, i64* %14, align 8
  %140 = icmp ugt i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %136
  %142 = load i64, i64* %14, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i8* @malloc(i32 %143)
  store i8* %144, i8** %12, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %148 = load i32, i32* @EX_SOFTWARE, align 4
  %149 = load i32, i32* @errno, align 4
  %150 = call i32 (%struct.bsdar*, i32, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.archive*, %struct.archive** %7, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = load i64, i64* %14, align 8
  %155 = call i64 @archive_read_data(%struct.archive* %152, i8* %153, i64 %154)
  %156 = load i64, i64* %14, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %151
  %159 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %160 = load %struct.archive*, %struct.archive** %7, align 8
  %161 = call i32 @archive_errno(%struct.archive* %160)
  %162 = load %struct.archive*, %struct.archive** %7, align 8
  %163 = call i32 @archive_error_string(%struct.archive* %162)
  %164 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %159, i32 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 @free(i8* %165)
  br label %32

167:                                              ; preds = %151
  br label %169

168:                                              ; preds = %136
  store i8* null, i8** %12, align 8
  br label %169

169:                                              ; preds = %168, %167
  %170 = call i8* @malloc(i32 64)
  %171 = bitcast i8* %170 to %struct.ar_obj*
  store %struct.ar_obj* %171, %struct.ar_obj** %9, align 8
  %172 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %173 = icmp eq %struct.ar_obj* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %176 = load i32, i32* @EX_SOFTWARE, align 4
  %177 = load i32, i32* @errno, align 4
  %178 = call i32 (%struct.bsdar*, i32, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %175, i32 %176, i32 %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %179

179:                                              ; preds = %174, %169
  %180 = load i8*, i8** %12, align 8
  %181 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %182 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = call i32* @strdup(i8* %183)
  %185 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %186 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %185, i32 0, i32 9
  store i32* %184, i32** %186, align 8
  %187 = icmp eq i32* %184, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  %189 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %190 = load i32, i32* @EX_SOFTWARE, align 4
  %191 = load i32, i32* @errno, align 4
  %192 = call i32 (%struct.bsdar*, i32, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %189, i32 %190, i32 %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %193

193:                                              ; preds = %188, %179
  %194 = load i64, i64* %14, align 8
  %195 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %196 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %198 = call i32 @archive_entry_uid(%struct.archive_entry* %197)
  %199 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %200 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %199, i32 0, i32 8
  store i32 %198, i32* %200, align 4
  %201 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %202 = call i32 @archive_entry_gid(%struct.archive_entry* %201)
  %203 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %204 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %203, i32 0, i32 7
  store i32 %202, i32* %204, align 8
  %205 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %206 = call i32 @archive_entry_mode(%struct.archive_entry* %205)
  %207 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %208 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 4
  %209 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %210 = call i32 @archive_entry_mtime(%struct.archive_entry* %209)
  %211 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %212 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 8
  %213 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %214 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %213, i32 0, i32 4
  store i64 0, i64* %214, align 8
  %215 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %216 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %215, i32 0, i32 3
  store i64 0, i64* %216, align 8
  %217 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %218 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %217, i32 0, i32 2
  store i32 -1, i32* %218, align 8
  %219 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %220 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %219, i32 0, i32 2
  %221 = load %struct.ar_obj*, %struct.ar_obj** %9, align 8
  %222 = load i32, i32* @objs, align 4
  %223 = call i32 @TAILQ_INSERT_TAIL(i32* %220, %struct.ar_obj* %221, i32 %222)
  br label %32

224:                                              ; preds = %50
  %225 = load %struct.archive*, %struct.archive** %7, align 8
  %226 = call i32 @archive_read_close(%struct.archive* %225)
  %227 = call i32 @AC(i32 %226)
  %228 = load %struct.archive*, %struct.archive** %7, align 8
  %229 = call i32 @archive_read_free(%struct.archive* %228)
  %230 = call i32 @AC(i32 %229)
  ret void
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i32, i8*, ...) #1

declare dso_local i32 @archive_read_support_format_ar(%struct.archive*) #1

declare dso_local i32 @AC(i32) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @bsdar_warnc(%struct.bsdar*, i32, i8*, ...) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @archive_read_data(%struct.archive*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ar_obj*, i32) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
