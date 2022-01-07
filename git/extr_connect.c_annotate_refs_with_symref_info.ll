; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_annotate_refs_with_symref_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_annotate_refs_with_symref_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.ref = type { i32, i32, %struct.ref* }
%struct.string_list_item = type { i64 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@server_capabilities_v1 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"symref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*)* @annotate_refs_with_symref_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @annotate_refs_with_symref_info(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca %struct.string_list, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.string_list_item*, align 8
  store %struct.ref* %0, %struct.ref** %2, align 8
  %8 = bitcast %struct.string_list* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %9 = load i8*, i8** @server_capabilities_v1, align 8
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @parse_feature_value(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %25

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @parse_one_symref_info(%struct.string_list* %3, i8* %20, i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %4, align 8
  br label %10

25:                                               ; preds = %18, %10
  %26 = call i32 @string_list_sort(%struct.string_list* %3)
  br label %27

27:                                               ; preds = %46, %25
  %28 = load %struct.ref*, %struct.ref** %2, align 8
  %29 = icmp ne %struct.ref* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.ref*, %struct.ref** %2, align 8
  %32 = getelementptr inbounds %struct.ref, %struct.ref* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.string_list_item* @string_list_lookup(%struct.string_list* %3, i32 %33)
  store %struct.string_list_item* %34, %struct.string_list_item** %7, align 8
  %35 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %36 = icmp ne %struct.string_list_item* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %40 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @xstrdup(i8* %42)
  %44 = load %struct.ref*, %struct.ref** %2, align 8
  %45 = getelementptr inbounds %struct.ref, %struct.ref* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %38, %37
  %47 = load %struct.ref*, %struct.ref** %2, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 2
  %49 = load %struct.ref*, %struct.ref** %48, align 8
  store %struct.ref* %49, %struct.ref** %2, align 8
  br label %27

50:                                               ; preds = %27
  %51 = call i32 @string_list_clear(%struct.string_list* %3, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @parse_feature_value(i8*, i8*, i32*) #2

declare dso_local i32 @parse_one_symref_info(%struct.string_list*, i8*, i32) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local %struct.string_list_item* @string_list_lookup(%struct.string_list*, i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
