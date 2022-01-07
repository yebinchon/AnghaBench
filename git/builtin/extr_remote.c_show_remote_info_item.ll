; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_show_remote_info_item.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_show_remote_info_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i8* }
%struct.show_info = type { i8*, %struct.ref_states* }
%struct.ref_states = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [43 x i8] c" new (next fetch will store in remotes/%s)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" tracked\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c" stale (use 'git remote prune' to remove)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" ???\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"    %-*s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list_item*, i8*)* @show_remote_info_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_remote_info_item(%struct.string_list_item* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.show_info*, align 8
  %6 = alloca %struct.ref_states*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.string_list_item* %0, %struct.string_list_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.show_info*
  store %struct.show_info* %11, %struct.show_info** %5, align 8
  %12 = load %struct.show_info*, %struct.show_info** %5, align 8
  %13 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 1
  %14 = load %struct.ref_states*, %struct.ref_states** %13, align 8
  store %struct.ref_states* %14, %struct.ref_states** %6, align 8
  %15 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %16 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %19 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %23 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %24 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %23, i32 0, i32 3
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @string_list_has_string(i32* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %8, align 8
  %30 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %31 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  br label %55

35:                                               ; preds = %22
  %36 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %37 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %36, i32 0, i32 1
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @string_list_has_string(i32* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %42, i8** %9, align 8
  br label %54

43:                                               ; preds = %35
  %44 = load %struct.ref_states*, %struct.ref_states** %6, align 8
  %45 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %44, i32 0, i32 0
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @string_list_has_string(i32* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i8* %50, i8** %9, align 8
  br label %53

51:                                               ; preds = %43
  %52 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.show_info*, %struct.show_info** %5, align 8
  %57 = getelementptr inbounds %struct.show_info, %struct.show_info* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %58, i8* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (i8*, ...) @printf(i8* %61, i8* %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %68

65:                                               ; preds = %2
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %55
  ret i32 0
}

declare dso_local i64 @string_list_has_string(i32*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
