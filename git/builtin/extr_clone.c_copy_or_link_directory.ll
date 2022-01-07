; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_copy_or_link_directory.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_copy_or_link_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.dir_iterator = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DIR_ITERATOR_PEDANTIC = common dso_local global i32 0, align 4
@DIR_ITERATOR_FOLLOW_SYMLINKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to start iterator over '%s'\00", align 1
@ITER_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"info/alternates\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to unlink '%s'\00", align 1
@option_no_hardlinks = common dso_local global i32 0, align 4
@option_local = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to create link '%s'\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to copy file to '%s'\00", align 1
@ITER_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to iterate over '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.strbuf*, i8*)* @copy_or_link_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_or_link_directory(%struct.strbuf* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dir_iterator*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mkdir_if_missing(i32 %14, i32 511)
  %16 = load i32, i32* @DIR_ITERATOR_PEDANTIC, align 4
  %17 = load i32, i32* @DIR_ITERATOR_FOLLOW_SYMLINKS, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.dir_iterator* @dir_iterator_begin(i32 %21, i32 %22)
  store %struct.dir_iterator* %23, %struct.dir_iterator** %9, align 8
  %24 = load %struct.dir_iterator*, %struct.dir_iterator** %9, align 8
  %25 = icmp ne %struct.dir_iterator* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @die_errno(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %3
  %33 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %34 = call i32 @strbuf_addch(%struct.strbuf* %33, i8 signext 47)
  %35 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %39 = call i32 @strbuf_addch(%struct.strbuf* %38, i8 signext 47)
  %40 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %141, %115, %82, %71, %32
  %44 = load %struct.dir_iterator*, %struct.dir_iterator** %9, align 8
  %45 = call i32 @dir_iterator_advance(%struct.dir_iterator* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @ITER_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %142

48:                                               ; preds = %43
  %49 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @strbuf_setlen(%struct.strbuf* %49, i32 %50)
  %52 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %53 = load %struct.dir_iterator*, %struct.dir_iterator** %9, align 8
  %54 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strbuf_addstr(%struct.strbuf* %52, i32 %55)
  %57 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @strbuf_setlen(%struct.strbuf* %57, i32 %58)
  %60 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %61 = load %struct.dir_iterator*, %struct.dir_iterator** %9, align 8
  %62 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strbuf_addstr(%struct.strbuf* %60, i32 %63)
  %65 = load %struct.dir_iterator*, %struct.dir_iterator** %9, align 8
  %66 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @S_ISDIR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %48
  %72 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mkdir_if_missing(i32 %74, i32 511)
  br label %43

76:                                               ; preds = %48
  %77 = load %struct.dir_iterator*, %struct.dir_iterator** %9, align 8
  %78 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fspathcmp(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @copy_alternates(%struct.strbuf* %83, i8* %84)
  br label %43

86:                                               ; preds = %76
  %87 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @unlink(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @ENOENT, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @die_errno(i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %96, %92, %86
  %103 = load i32, i32* @option_no_hardlinks, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %102
  %106 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @real_path(i32 %108)
  %110 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %111 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @link(i32 %109, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %105
  br label %43

116:                                              ; preds = %105
  %117 = load i64, i64* @option_local, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %122 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @die_errno(i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %119, %116
  store i32 1, i32* @option_no_hardlinks, align 4
  br label %126

126:                                              ; preds = %125, %102
  %127 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %128 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %131 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @copy_file_with_time(i32 %129, i32 %132, i32 438)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %126
  %136 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %137 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %138 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @die_errno(i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %135, %126
  br label %43

142:                                              ; preds = %43
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @ITER_DONE, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @strbuf_setlen(%struct.strbuf* %147, i32 %148)
  %150 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %151 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %152 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @die(i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %146, %142
  ret void
}

declare dso_local i32 @mkdir_if_missing(i32, i32) #1

declare dso_local %struct.dir_iterator* @dir_iterator_begin(i32, i32) #1

declare dso_local i32 @die_errno(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @dir_iterator_advance(%struct.dir_iterator*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @fspathcmp(i32, i8*) #1

declare dso_local i32 @copy_alternates(%struct.strbuf*, i8*) #1

declare dso_local i64 @unlink(i32) #1

declare dso_local i32 @link(i32, i32) #1

declare dso_local i32 @real_path(i32) #1

declare dso_local i64 @copy_file_with_time(i32, i32, i32) #1

declare dso_local i32 @die(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
