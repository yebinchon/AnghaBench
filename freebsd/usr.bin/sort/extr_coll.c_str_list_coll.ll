; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_str_list_coll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_str_list_coll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.bwstring = type { i32 }
%struct.sort_list_item = type { %struct.bwstring*, i32 }
%struct.keys_array = type { i32 }

@debug_sort = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"; s1=<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c", s2=<\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"; cmp1=%d\00", align 1
@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"; cmp2=%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str_list_coll(%struct.bwstring* %0, %struct.sort_list_item** %1) #0 {
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca %struct.sort_list_item**, align 8
  %5 = alloca %struct.keys_array*, align 8
  %6 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %3, align 8
  store %struct.sort_list_item** %1, %struct.sort_list_item*** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call %struct.keys_array* (...) @keys_array_alloc()
  store %struct.keys_array* %7, %struct.keys_array** %5, align 8
  %8 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %9 = load %struct.keys_array*, %struct.keys_array** %5, align 8
  %10 = call i32 @preproc(%struct.bwstring* %8, %struct.keys_array* %9)
  %11 = load %struct.sort_list_item**, %struct.sort_list_item*** %4, align 8
  %12 = load %struct.sort_list_item*, %struct.sort_list_item** %11, align 8
  %13 = call i32 @sort_list_item_make_key(%struct.sort_list_item* %12)
  %14 = load i64, i64* @debug_sort, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @stdout, align 4
  %18 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %19 = call i32 @bwsprintf(i32 %17, %struct.bwstring* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @stdout, align 4
  %21 = load %struct.sort_list_item**, %struct.sort_list_item*** %4, align 8
  %22 = load %struct.sort_list_item*, %struct.sort_list_item** %21, align 8
  %23 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %22, i32 0, i32 0
  %24 = load %struct.bwstring*, %struct.bwstring** %23, align 8
  %25 = call i32 @bwsprintf(i32 %20, %struct.bwstring* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %16, %2
  %27 = load %struct.keys_array*, %struct.keys_array** %5, align 8
  %28 = load %struct.sort_list_item**, %struct.sort_list_item*** %4, align 8
  %29 = load %struct.sort_list_item*, %struct.sort_list_item** %28, align 8
  %30 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %29, i32 0, i32 1
  %31 = call i32 @key_coll(%struct.keys_array* %27, i32* %30, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i64, i64* @debug_sort, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %39 = load %struct.keys_array*, %struct.keys_array** %5, align 8
  %40 = call i32 @clean_keys_array(%struct.bwstring* %38, %struct.keys_array* %39)
  %41 = load %struct.keys_array*, %struct.keys_array** %5, align 8
  %42 = call i32 @sort_free(%struct.keys_array* %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %37
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 1), align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %53 = load %struct.sort_list_item**, %struct.sort_list_item*** %4, align 8
  %54 = load %struct.sort_list_item*, %struct.sort_list_item** %53, align 8
  %55 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %54, i32 0, i32 0
  %56 = load %struct.bwstring*, %struct.bwstring** %55, align 8
  %57 = call i32 @top_level_str_coll(%struct.bwstring* %52, %struct.bwstring* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* @debug_sort, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %51
  br label %64

64:                                               ; preds = %63, %48, %45, %37
  %65 = load i64, i64* @debug_sort, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.keys_array* @keys_array_alloc(...) #1

declare dso_local i32 @preproc(%struct.bwstring*, %struct.keys_array*) #1

declare dso_local i32 @sort_list_item_make_key(%struct.sort_list_item*) #1

declare dso_local i32 @bwsprintf(i32, %struct.bwstring*, i8*, i8*) #1

declare dso_local i32 @key_coll(%struct.keys_array*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @clean_keys_array(%struct.bwstring*, %struct.keys_array*) #1

declare dso_local i32 @sort_free(%struct.keys_array*) #1

declare dso_local i32 @top_level_str_coll(%struct.bwstring*, %struct.bwstring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
