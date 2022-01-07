; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_add.c_update_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_add.c_update_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.diff_options = type { i32 }
%struct.update_callback_data = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"unexpected diff status %c\00", align 1
@the_index = common dso_local global i32 0, align 4
@ADD_CACHE_IGNORE_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"updating files failed\00", align 1
@ADD_CACHE_IGNORE_REMOVAL = common dso_local global i32 0, align 4
@ADD_CACHE_PRETEND = common dso_local global i32 0, align 4
@ADD_CACHE_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"remove '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_queue_struct*, %struct.diff_options*, i8*)* @update_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_callback(%struct.diff_queue_struct* %0, %struct.diff_options* %1, i8* %2) #0 {
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.update_callback_data*, align 8
  %9 = alloca %struct.diff_filepair*, align 8
  %10 = alloca i8*, align 8
  store %struct.diff_queue_struct* %0, %struct.diff_queue_struct** %4, align 8
  store %struct.diff_options* %1, %struct.diff_options** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.update_callback_data*
  store %struct.update_callback_data* %12, %struct.update_callback_data** %8, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %97, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %16 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %100

19:                                               ; preds = %13
  %20 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %21 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %20, i32 0, i32 1
  %22 = load %struct.diff_filepair**, %struct.diff_filepair*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %22, i64 %24
  %26 = load %struct.diff_filepair*, %struct.diff_filepair** %25, align 8
  store %struct.diff_filepair* %26, %struct.diff_filepair** %9, align 8
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %28 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  %32 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %33 = load %struct.update_callback_data*, %struct.update_callback_data** %8, align 8
  %34 = call i32 @fix_unmerged_status(%struct.diff_filepair* %32, %struct.update_callback_data* %33)
  switch i32 %34, label %35 [
    i32 129, label %41
    i32 128, label %41
    i32 130, label %64
  ]

35:                                               ; preds = %19
  %36 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %38 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @die(i8* %36, i32 %39)
  br label %41

41:                                               ; preds = %19, %19, %35
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.update_callback_data*, %struct.update_callback_data** %8, align 8
  %44 = getelementptr inbounds %struct.update_callback_data, %struct.update_callback_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @add_file_to_index(i32* @the_index, i8* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load %struct.update_callback_data*, %struct.update_callback_data** %8, align 8
  %50 = getelementptr inbounds %struct.update_callback_data, %struct.update_callback_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ADD_CACHE_IGNORE_ERRORS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @die(i8* %56)
  br label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.update_callback_data*, %struct.update_callback_data** %8, align 8
  %60 = getelementptr inbounds %struct.update_callback_data, %struct.update_callback_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %41
  br label %96

64:                                               ; preds = %19
  %65 = load %struct.update_callback_data*, %struct.update_callback_data** %8, align 8
  %66 = getelementptr inbounds %struct.update_callback_data, %struct.update_callback_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ADD_CACHE_IGNORE_REMOVAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %96

72:                                               ; preds = %64
  %73 = load %struct.update_callback_data*, %struct.update_callback_data** %8, align 8
  %74 = getelementptr inbounds %struct.update_callback_data, %struct.update_callback_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ADD_CACHE_PRETEND, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @remove_file_from_index(i32* @the_index, i8* %80)
  br label %82

82:                                               ; preds = %79, %72
  %83 = load %struct.update_callback_data*, %struct.update_callback_data** %8, align 8
  %84 = getelementptr inbounds %struct.update_callback_data, %struct.update_callback_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ADD_CACHE_PRETEND, align 4
  %87 = load i32, i32* @ADD_CACHE_VERBOSE, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @printf(i8* %92, i8* %93)
  br label %95

95:                                               ; preds = %91, %82
  br label %96

96:                                               ; preds = %95, %71, %63
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %13

100:                                              ; preds = %13
  ret void
}

declare dso_local i32 @fix_unmerged_status(%struct.diff_filepair*, %struct.update_callback_data*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @add_file_to_index(i32*, i8*, i32) #1

declare dso_local i32 @remove_file_from_index(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
