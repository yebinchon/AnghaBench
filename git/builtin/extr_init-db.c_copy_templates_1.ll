; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_init-db.c_copy_templates_1.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_init-db.c_copy_templates_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.dirent = type { i8* }
%struct.stat = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot stat '%s'\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot stat template '%s'\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot opendir '%s'\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot readlink '%s'\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot symlink '%s' '%s'\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot copy '%s' to '%s'\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ignoring template %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.strbuf*, i32*)* @copy_templates_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_templates_1(%struct.strbuf* %0, %struct.strbuf* %1, i32* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.strbuf, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @safe_create_dir(i32 %23, i32 1)
  br label %25

25:                                               ; preds = %189, %115, %43, %3
  %26 = load i32*, i32** %6, align 8
  %27 = call %struct.dirent* @readdir(i32* %26)
  store %struct.dirent* %27, %struct.dirent** %9, align 8
  %28 = icmp ne %struct.dirent* %27, null
  br i1 %28, label %29, label %190

29:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  %30 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @strbuf_setlen(%struct.strbuf* %30, i64 %31)
  %33 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @strbuf_setlen(%struct.strbuf* %33, i64 %34)
  %36 = load %struct.dirent*, %struct.dirent** %9, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %25

44:                                               ; preds = %29
  %45 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %46 = load %struct.dirent*, %struct.dirent** %9, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strbuf_addstr(%struct.strbuf* %45, i8* %48)
  %50 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %51 = load %struct.dirent*, %struct.dirent** %9, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strbuf_addstr(%struct.strbuf* %50, i8* %53)
  %55 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @lstat(i32 %57, %struct.stat* %10)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %44
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i32, ...) @die_errno(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %60
  br label %72

71:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @lstat(i32 %75, %struct.stat* %11)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, ...) @die_errno(i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %78, %72
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @S_ISDIR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %84
  %90 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32* @opendir(i32 %92)
  store i32* %93, i32** %13, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i32, i32, ...) @die_errno(i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %96, %89
  %103 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %104 = call i32 @strbuf_addch(%struct.strbuf* %103, i8 signext 47)
  %105 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %106 = call i32 @strbuf_addch(%struct.strbuf* %105, i8 signext 47)
  %107 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %108 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %109 = load i32*, i32** %13, align 8
  call void @copy_templates_1(%struct.strbuf* %107, %struct.strbuf* %108, i32* %109)
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @closedir(i32* %110)
  br label %189

112:                                              ; preds = %84
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %25

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @S_ISLNK(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %154

121:                                              ; preds = %116
  %122 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %123 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %124 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @strbuf_readlink(%struct.strbuf* %14, i32 %125, i32 %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %121
  %131 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %132 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %133 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i32, ...) @die_errno(i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %130, %121
  %137 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %140 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @symlink(i32 %138, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %146 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %149 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i32, ...) @die_errno(i32 %145, i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %144, %136
  %153 = call i32 @strbuf_release(%struct.strbuf* %14)
  br label %187

154:                                              ; preds = %116
  %155 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @S_ISREG(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %154
  %160 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %161 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %164 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @copy_file(i32 %162, i32 %165, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %159
  %171 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %172 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %173 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %176 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i32, ...) @die_errno(i32 %171, i32 %174, i32 %177)
  br label %179

179:                                              ; preds = %170, %159
  br label %186

180:                                              ; preds = %154
  %181 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %182 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %183 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @error(i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %180, %179
  br label %187

187:                                              ; preds = %186, %152
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188, %102
  br label %25

190:                                              ; preds = %25
  ret void
}

declare dso_local i32 @safe_create_dir(i32, i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @die_errno(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i64 @S_ISLNK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strbuf_readlink(%struct.strbuf*, i32, i32) #1

declare dso_local i64 @symlink(i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @copy_file(i32, i32, i32) #1

declare dso_local i32 @error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
