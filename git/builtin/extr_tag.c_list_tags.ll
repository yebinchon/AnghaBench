; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_tag.c_list_tags.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_tag.c_list_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_filter = type { i32, i32 }
%struct.ref_sorting = type { i32 }
%struct.ref_format = type { i8* }
%struct.ref_array = type { i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"%s %%(contents:lines=%d)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%(align:15)%(refname:lstrip=2)%(end)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%(refname:lstrip=2)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to parse format string\00", align 1
@FILTER_REFS_TAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_filter*, %struct.ref_sorting*, %struct.ref_format*)* @list_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_tags(%struct.ref_filter* %0, %struct.ref_sorting* %1, %struct.ref_format* %2) #0 {
  %4 = alloca %struct.ref_filter*, align 8
  %5 = alloca %struct.ref_sorting*, align 8
  %6 = alloca %struct.ref_format*, align 8
  %7 = alloca %struct.ref_array, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ref_filter* %0, %struct.ref_filter** %4, align 8
  store %struct.ref_sorting* %1, %struct.ref_sorting** %5, align 8
  store %struct.ref_format* %2, %struct.ref_format** %6, align 8
  store i8* null, i8** %8, align 8
  %10 = call i32 @memset(%struct.ref_array* %7, i32 0, i32 16)
  %11 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %12 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %17 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %20 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %25 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %30 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @xstrfmt(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %35 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %39

36:                                               ; preds = %23
  %37 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %38 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  br label %39

39:                                               ; preds = %36, %28
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %42 = call i64 @verify_ref_format(%struct.ref_format* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @die(i32 %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %49 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %51 = load i32, i32* @FILTER_REFS_TAGS, align 4
  %52 = call i32 @filter_refs(%struct.ref_array* %7, %struct.ref_filter* %50, i32 %51)
  %53 = load %struct.ref_sorting*, %struct.ref_sorting** %5, align 8
  %54 = call i32 @ref_array_sort(%struct.ref_sorting* %53, %struct.ref_array* %7)
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %69, %47
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %7, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %68 = call i32 @show_ref_array_item(i32 %66, %struct.ref_format* %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %55

72:                                               ; preds = %55
  %73 = call i32 @ref_array_clear(%struct.ref_array* %7)
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @free(i8* %74)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ref_array*, i32, i32) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i32) #1

declare dso_local i64 @verify_ref_format(%struct.ref_format*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @filter_refs(%struct.ref_array*, %struct.ref_filter*, i32) #1

declare dso_local i32 @ref_array_sort(%struct.ref_sorting*, %struct.ref_array*) #1

declare dso_local i32 @show_ref_array_item(i32, %struct.ref_format*) #1

declare dso_local i32 @ref_array_clear(%struct.ref_array*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
