; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_test_if_untracked_cache_is_supported.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_test_if_untracked_cache_is_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stat = type { i32 }
%struct.stat_data = type { i32 }

@mtime_dir = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"mtime-test-XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not make temporary directory\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Testing mtime in '%s' \00", align 1
@remove_test_directory = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"newfile\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"directory stat info does not change after adding a new file\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"new-dir\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"directory stat info does not change after adding a new directory\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"directory stat info changes after updating a file\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"new-dir/new\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"directory stat info changes after adding a file inside subdirectory\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"directory stat info does not change after deleting a file\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"directory stat info does not change after deleting a directory\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"failed to delete directory %s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_if_untracked_cache_is_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_if_untracked_cache_is_supported() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca %struct.stat_data, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 @strbuf_addstr(%struct.TYPE_4__* @mtime_dir, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtime_dir, i32 0, i32 0), align 4
  %8 = call i32 @mkdtemp(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = call i8* (...) @xgetcwd()
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* @stderr, align 4
  %15 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @fprintf(i32 %14, i8* %15, i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load i32, i32* @remove_test_directory, align 4
  %21 = call i32 @atexit(i32 %20)
  %22 = call i32 @xstat_mtime_dir(%struct.stat* %1)
  %23 = call i32 @fill_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fputc(i8 signext 46, i32 %24)
  %26 = call i32 (...) @avoid_racy()
  %27 = call i32 @create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %27, i32* %3, align 4
  %28 = call i32 @xstat_mtime_dir(%struct.stat* %1)
  %29 = call i64 @match_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %12
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fputc(i8 signext 10, i32 %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %38 = call i32 @fprintf_ln(i32 %36, i8* %37)
  br label %131

39:                                               ; preds = %12
  %40 = call i32 @fill_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fputc(i8 signext 46, i32 %41)
  %43 = call i32 (...) @avoid_racy()
  %44 = call i32 @xmkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %45 = call i32 @xstat_mtime_dir(%struct.stat* %1)
  %46 = call i64 @match_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fputc(i8 signext 10, i32 %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %55 = call i32 @fprintf_ln(i32 %53, i8* %54)
  br label %131

56:                                               ; preds = %39
  %57 = call i32 @fill_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fputc(i8 signext 46, i32 %58)
  %60 = call i32 (...) @avoid_racy()
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @write_or_die(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @close(i32 %63)
  %65 = call i32 @xstat_mtime_dir(%struct.stat* %1)
  %66 = call i64 @match_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 @fputc(i8 signext 10, i32 %69)
  %71 = load i32, i32* @stderr, align 4
  %72 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %73 = call i32 @fprintf_ln(i32 %71, i8* %72)
  br label %131

74:                                               ; preds = %56
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @fputc(i8 signext 46, i32 %75)
  %77 = call i32 (...) @avoid_racy()
  %78 = call i32 @create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %79 = call i32 @close(i32 %78)
  %80 = call i32 @xstat_mtime_dir(%struct.stat* %1)
  %81 = call i64 @match_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 @fputc(i8 signext 10, i32 %84)
  %86 = load i32, i32* @stderr, align 4
  %87 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0))
  %88 = call i32 @fprintf_ln(i32 %86, i8* %87)
  br label %131

89:                                               ; preds = %74
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 @fputc(i8 signext 46, i32 %90)
  %92 = call i32 (...) @avoid_racy()
  %93 = call i32 @xunlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %94 = call i32 @xstat_mtime_dir(%struct.stat* %1)
  %95 = call i64 @match_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 @fputc(i8 signext 10, i32 %98)
  %100 = load i32, i32* @stderr, align 4
  %101 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  %102 = call i32 @fprintf_ln(i32 %100, i8* %101)
  br label %131

103:                                              ; preds = %89
  %104 = call i32 @fill_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @fputc(i8 signext 46, i32 %105)
  %107 = call i32 (...) @avoid_racy()
  %108 = call i32 @xunlink(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %109 = call i32 @xrmdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %110 = call i32 @xstat_mtime_dir(%struct.stat* %1)
  %111 = call i64 @match_stat_data(%struct.stat_data* %2, %struct.stat* %1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 @fputc(i8 signext 10, i32 %114)
  %116 = load i32, i32* @stderr, align 4
  %117 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0))
  %118 = call i32 @fprintf_ln(i32 %116, i8* %117)
  br label %131

119:                                              ; preds = %103
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtime_dir, i32 0, i32 0), align 4
  %121 = call i64 @rmdir(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtime_dir, i32 0, i32 0), align 4
  %126 = call i32 (i8*, ...) @die_errno(i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i32, i32* @stderr, align 4
  %129 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %130 = call i32 @fprintf_ln(i32 %128, i8* %129)
  store i32 1, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %113, %97, %83, %68, %48, %31
  %132 = call i32 @strbuf_release(%struct.TYPE_4__* @mtime_dir)
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @strbuf_addstr(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @mkdtemp(i32) #1

declare dso_local i32 @die_errno(i8*, ...) #1

declare dso_local i8* @xgetcwd(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @xstat_mtime_dir(%struct.stat*) #1

declare dso_local i32 @fill_stat_data(%struct.stat_data*, %struct.stat*) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @avoid_racy(...) #1

declare dso_local i32 @create_file(i8*) #1

declare dso_local i64 @match_stat_data(%struct.stat_data*, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf_ln(i32, i8*) #1

declare dso_local i32 @xmkdir(i8*) #1

declare dso_local i32 @write_or_die(i32, i8*, i32) #1

declare dso_local i32 @xunlink(i8*) #1

declare dso_local i32 @xrmdir(i8*) #1

declare dso_local i64 @rmdir(i32) #1

declare dso_local i32 @strbuf_release(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
