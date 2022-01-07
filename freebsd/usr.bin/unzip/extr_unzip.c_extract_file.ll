; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.timespec = type { i64, i64 }
%struct.stat = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@u_opt = common dso_local global i64 0, align 8
@f_opt = common dso_local global i64 0, align 8
@o_opt = common dso_local global i64 0, align 8
@n_opt = common dso_local global i64 0, align 8
@UTIME_NOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"symlink('%s')\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c" extracting: %s -> %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot set mode for '%s'\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"utimensat('%s')\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"open('%s')\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" extracting: %s\00", align 1
@tty = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"  \08\08\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" (text)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"futimens('%s')\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"close('%s')\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.archive_entry*, i8**)* @extract_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_file(%struct.archive* %0, %struct.archive_entry* %1, i8** %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca [2 x %struct.timespec], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  store i8** %2, i8*** %6, align 8
  %15 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %16 = call i32 @archive_entry_mode(%struct.archive_entry* %15)
  %17 = and i32 %16, 511
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 420, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %23 = call i64 @archive_entry_mtime(%struct.archive_entry* %22)
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %26 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %25)
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %91, %21
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @lstat(i8* %30, %struct.stat* %9)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %100

33:                                               ; preds = %28
  %34 = load i64, i64* @u_opt, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @f_opt, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @S_ISLNK(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %44, %39
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %52, %54
  br i1 %55, label %70, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63, %49
  br label %206

71:                                               ; preds = %63, %56, %44
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @unlink(i8* %73)
  br label %99

75:                                               ; preds = %36
  %76 = load i64, i64* @o_opt, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i8**, i8*** %6, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @unlink(i8* %80)
  br label %98

82:                                               ; preds = %75
  %83 = load i64, i64* @n_opt, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %206

86:                                               ; preds = %82
  %87 = load i8**, i8*** %6, align 8
  %88 = call i32 @handle_existing_file(i8** %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %28

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %206

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %78
  br label %99

99:                                               ; preds = %98, %71
  br label %105

100:                                              ; preds = %28
  %101 = load i64, i64* @f_opt, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %206

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %99
  %106 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %106, i32 0, i32 0
  store i64 0, i64* %107, align 16
  %108 = load i64, i64* @UTIME_NOW, align 8
  %109 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %110 = getelementptr inbounds %struct.timespec, %struct.timespec* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 1
  %112 = bitcast %struct.timespec* %111 to i8*
  %113 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %112, i8* align 8 %113, i64 16, i1 false)
  %114 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %115 = call i8* @archive_entry_symlink(%struct.archive_entry* %114)
  store i8* %115, i8** %14, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %155

118:                                              ; preds = %105
  %119 = load i8*, i8** %14, align 8
  %120 = load i8**, i8*** %6, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @symlink(i8* %119, i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i8**, i8*** %6, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %124, %118
  %129 = load i8**, i8*** %6, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %130, i8* %131)
  %133 = load i8**, i8*** %6, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i64 @lchmod(i8* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load i8**, i8*** %6, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %138, %128
  %143 = load i32, i32* @AT_FDCWD, align 4
  %144 = load i8**, i8*** %6, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %147 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %148 = call i64 @utimensat(i32 %143, i8* %145, %struct.timespec* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = load i8**, i8*** %6, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %150, %142
  br label %206

155:                                              ; preds = %105
  %156 = load i8**, i8*** %6, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* @O_RDWR, align 4
  %159 = load i32, i32* @O_CREAT, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @O_TRUNC, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @open(i8* %157, i32 %162, i32 %163)
  store i32 %164, i32* %11, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %155
  %167 = load i8**, i8*** %6, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %166, %155
  %171 = load i8**, i8*** %6, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %172)
  %174 = load %struct.archive*, %struct.archive** %4, align 8
  %175 = load i8**, i8*** %6, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @extract2fd(%struct.archive* %174, i8* %176, i32 %177)
  store i32 %178, i32* %13, align 4
  %179 = load i64, i64* @tty, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %170
  %182 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %170
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %183
  %189 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %190 = load i32, i32* %11, align 4
  %191 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %192 = call i64 @futimens(i32 %190, %struct.timespec* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i8**, i8*** %6, align 8
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %194, %188
  %199 = load i32, i32* %11, align 4
  %200 = call i64 @close(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i8**, i8*** %6, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %70, %85, %95, %103, %154, %202, %198
  ret void
}

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @handle_existing_file(i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i64 @lchmod(i8*, i32) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i64 @utimensat(i32, i8*, %struct.timespec*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @extract2fd(%struct.archive*, i8*, i32) #1

declare dso_local i64 @futimens(i32, %struct.timespec*) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
