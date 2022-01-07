; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_index.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"--cached\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"--staged\00", align 1
@builtin_diff_usage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"read_cache_preload\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read_cache\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, i32, i8**)* @builtin_diff_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_diff_index(%struct.rev_info* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %28, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 1, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load i8**, i8*** %7, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %13
  store i32 1, i32* %8, align 4
  br label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @builtin_diff_usage, align 4
  %27 = call i32 @usage(i32 %26)
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %54, label %39

39:                                               ; preds = %33
  %40 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %46 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %51 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %44, %39, %33
  %55 = load i32, i32* @builtin_diff_usage, align 4
  %56 = call i32 @usage(i32 %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = call i32 (...) @setup_work_tree()
  %62 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %63 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i64 @read_cache_preload(i32* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %80

69:                                               ; preds = %60
  br label %76

70:                                               ; preds = %57
  %71 = call i64 (...) @read_cache()
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %80

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %69
  %77 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @run_diff_index(%struct.rev_info* %77, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %73, %67
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @setup_work_tree(...) #1

declare dso_local i64 @read_cache_preload(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @read_cache(...) #1

declare dso_local i32 @run_diff_index(%struct.rev_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
