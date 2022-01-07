; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_show_push_info_item.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_show_push_info_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i8*, %struct.push_info* }
%struct.push_info = type { i32, i32, i64 }
%struct.show_info = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"up to date\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"fast-forwardable\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"local out of date\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"    %-*s forces to %-*s (%s)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"    %-*s pushes to %-*s (%s)\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"    %-*s forces to %s\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"    %-*s pushes to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list_item*, i8*)* @show_push_info_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_push_info_item(%struct.string_list_item* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.show_info*, align 8
  %6 = alloca %struct.push_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.string_list_item* %0, %struct.string_list_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.show_info*
  store %struct.show_info* %10, %struct.show_info** %5, align 8
  %11 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %12 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %11, i32 0, i32 1
  %13 = load %struct.push_info*, %struct.push_info** %12, align 8
  store %struct.push_info* %13, %struct.push_info** %6, align 8
  %14 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %15 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %17 = load %struct.push_info*, %struct.push_info** %6, align 8
  %18 = getelementptr inbounds %struct.push_info, %struct.push_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %32 [
    i32 133, label %20
    i32 132, label %22
    i32 128, label %25
    i32 131, label %27
    i32 129, label %29
    i32 130, label %31
  ]

20:                                               ; preds = %2
  %21 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %8, align 8
  br label %32

22:                                               ; preds = %2
  %23 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %8, align 8
  %24 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  br label %32

25:                                               ; preds = %2
  %26 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %26, i8** %8, align 8
  br label %32

27:                                               ; preds = %2
  %28 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %28, i8** %8, align 8
  br label %32

29:                                               ; preds = %2
  %30 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i8* %30, i8** %8, align 8
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %2, %31, %29, %27, %25, %22, %20
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = load %struct.push_info*, %struct.push_info** %6, align 8
  %37 = getelementptr inbounds %struct.push_info, %struct.push_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %42 = load %struct.show_info*, %struct.show_info** %5, align 8
  %43 = getelementptr inbounds %struct.show_info, %struct.show_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.show_info*, %struct.show_info** %5, align 8
  %47 = getelementptr inbounds %struct.show_info, %struct.show_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.push_info*, %struct.push_info** %6, align 8
  %50 = getelementptr inbounds %struct.push_info, %struct.push_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 (i8*, i32, i8*, i32, ...) @printf_ln(i8* %41, i32 %44, i8* %45, i32 %48, i32 %51, i8* %52)
  br label %68

54:                                               ; preds = %35
  %55 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %56 = load %struct.show_info*, %struct.show_info** %5, align 8
  %57 = getelementptr inbounds %struct.show_info, %struct.show_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.show_info*, %struct.show_info** %5, align 8
  %61 = getelementptr inbounds %struct.show_info, %struct.show_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.push_info*, %struct.push_info** %6, align 8
  %64 = getelementptr inbounds %struct.push_info, %struct.push_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 (i8*, i32, i8*, i32, ...) @printf_ln(i8* %55, i32 %58, i8* %59, i32 %62, i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %54, %40
  br label %95

69:                                               ; preds = %32
  %70 = load %struct.push_info*, %struct.push_info** %6, align 8
  %71 = getelementptr inbounds %struct.push_info, %struct.push_info* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %76 = load %struct.show_info*, %struct.show_info** %5, align 8
  %77 = getelementptr inbounds %struct.show_info, %struct.show_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.push_info*, %struct.push_info** %6, align 8
  %81 = getelementptr inbounds %struct.push_info, %struct.push_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i32, i8*, i32, ...) @printf_ln(i8* %75, i32 %78, i8* %79, i32 %82)
  br label %94

84:                                               ; preds = %69
  %85 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %86 = load %struct.show_info*, %struct.show_info** %5, align 8
  %87 = getelementptr inbounds %struct.show_info, %struct.show_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.push_info*, %struct.push_info** %6, align 8
  %91 = getelementptr inbounds %struct.push_info, %struct.push_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, i8*, i32, ...) @printf_ln(i8* %85, i32 %88, i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %84, %74
  br label %95

95:                                               ; preds = %94, %68
  ret i32 0
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printf_ln(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
