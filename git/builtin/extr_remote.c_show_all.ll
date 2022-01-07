; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_show_all.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_show_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32, %struct.string_list_item* }
%struct.string_list_item = type { i8*, i64 }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@get_one_entry = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @show_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_all() #0 {
  %1 = alloca %struct.string_list, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list_item*, align 8
  %5 = bitcast %struct.string_list* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 16, i1 false)
  %6 = getelementptr inbounds %struct.string_list, %struct.string_list* %1, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load i32, i32* @get_one_entry, align 4
  %8 = call i32 @for_each_remote(i32 %7, %struct.string_list* %1)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %67, label %11

11:                                               ; preds = %0
  %12 = call i32 @string_list_sort(%struct.string_list* %1)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %63, %11
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds %struct.string_list, %struct.string_list* %1, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %1, i32 0, i32 2
  %20 = load %struct.string_list_item*, %struct.string_list_item** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %20, i64 %22
  store %struct.string_list_item* %23, %struct.string_list_item** %4, align 8
  %24 = load i64, i64* @verbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %28 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %31 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %36 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  br label %40

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i8* [ %38, %34 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %41)
  br label %62

43:                                               ; preds = %18
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %48 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %47, i64 -1
  %49 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %52 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* %50, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %63

57:                                               ; preds = %46, %43
  %58 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %59 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57, %40
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %13

66:                                               ; preds = %13
  br label %67

67:                                               ; preds = %66, %0
  %68 = call i32 @string_list_clear(%struct.string_list* %1, i32 1)
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @for_each_remote(i32, %struct.string_list*) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
