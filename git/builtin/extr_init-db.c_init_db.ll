; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_init-db.c_init_db.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_init-db.c_init_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@INIT_DB_EXIST_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s already exists\00", align 1
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@git_init_db_config = common dso_local global i32 0, align 4
@init_is_bare_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"0%o\00", align 1
@PERM_GROUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@OLD_PERM_GROUP = common dso_local global i32 0, align 4
@PERM_EVERYBODY = common dso_local global i32 0, align 4
@OLD_PERM_EVERYBODY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid value for shared_repository\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"core.sharedrepository\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"receive.denyNonFastforwards\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@INIT_DB_QUIET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"Reinitialized existing shared Git repository in %s%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Reinitialized existing Git repository in %s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Initialized empty shared Git repository in %s%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Initialized empty Git repository in %s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_db(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca [10 x i8], align 1
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @INIT_DB_EXIST_OK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @real_pathdup(i8* %18, i32 1)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @stat(i8* %26, %struct.stat* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @die(i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %29, %25, %22
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @stat(i8* %37, %struct.stat* %12)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @die(i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %36, %33
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @real_path(i8* %45)
  %47 = call i32 @set_git_dir(i32 %46)
  %48 = call i8* (...) @get_git_dir()
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @separate_git_dir(i8* %49, i8* %50)
  br label %57

52:                                               ; preds = %4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @real_path(i8* %53)
  %55 = call i32 @set_git_dir(i32 %54)
  %56 = call i8* (...) @get_git_dir()
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %52, %44
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @git_init_db_config, align 4
  %61 = call i32 @git_config(i32 %60, i32* null)
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @safe_create_dir(i8* %62, i32 0)
  %64 = call i32 (...) @is_bare_repository()
  store i32 %64, i32* @init_is_bare_repository, align 4
  %65 = call i32 (...) @check_repository_format()
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @create_default_files(i8* %66, i8* %67)
  store i32 %68, i32* %9, align 4
  %69 = call i32 (...) @create_object_directory()
  %70 = call i32 (...) @get_shared_repository()
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %57
  %73 = call i32 (...) @get_shared_repository()
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %77 = call i32 (...) @get_shared_repository()
  %78 = sub nsw i32 0, %77
  %79 = call i32 @xsnprintf(i8* %76, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %100

80:                                               ; preds = %72
  %81 = call i32 (...) @get_shared_repository()
  %82 = load i32, i32* @PERM_GROUP, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %86 = load i32, i32* @OLD_PERM_GROUP, align 4
  %87 = call i32 @xsnprintf(i8* %85, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %99

88:                                               ; preds = %80
  %89 = call i32 (...) @get_shared_repository()
  %90 = load i32, i32* @PERM_EVERYBODY, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %94 = load i32, i32* @OLD_PERM_EVERYBODY, align 4
  %95 = call i32 @xsnprintf(i8* %93, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %98

96:                                               ; preds = %88
  %97 = call i32 @BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %75
  %101 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %102 = call i32 @git_config_set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = call i32 @git_config_set(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %57
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @INIT_DB_QUIET, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %167, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @strlen(i8* %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %109
  %115 = call i32 (...) @get_shared_repository()
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  br label %121

119:                                              ; preds = %114
  %120 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i8* [ %118, %117 ], [ %120, %119 ]
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 47
  br label %135

135:                                              ; preds = %126, %121
  %136 = phi i1 [ false, %121 ], [ %134, %126 ]
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %139 = call i32 @printf(i8* %122, i8* %123, i8* %138)
  br label %166

140:                                              ; preds = %109
  %141 = call i32 (...) @get_shared_repository()
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %147

145:                                              ; preds = %140
  %146 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i8* [ %144, %143 ], [ %146, %145 ]
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 47
  br label %161

161:                                              ; preds = %152, %147
  %162 = phi i1 [ false, %147 ], [ %160, %152 ]
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %165 = call i32 @printf(i8* %148, i8* %149, i8* %164)
  br label %166

166:                                              ; preds = %161, %135
  br label %167

167:                                              ; preds = %166, %104
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @free(i8* %168)
  ret i32 0
}

declare dso_local i8* @real_pathdup(i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @set_git_dir(i32) #1

declare dso_local i32 @real_path(i8*) #1

declare dso_local i8* @get_git_dir(...) #1

declare dso_local i32 @separate_git_dir(i8*, i8*) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @safe_create_dir(i8*, i32) #1

declare dso_local i32 @is_bare_repository(...) #1

declare dso_local i32 @check_repository_format(...) #1

declare dso_local i32 @create_default_files(i8*, i8*) #1

declare dso_local i32 @create_object_directory(...) #1

declare dso_local i32 @get_shared_repository(...) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @git_config_set(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
