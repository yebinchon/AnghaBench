; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_check_and_set_terms.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_check_and_set_terms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bisect_terms = type { i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"terms\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Invalid command: you're currently in a %s/%s bisect\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bisect_terms*, i8*)* @check_and_set_terms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_and_set_terms(%struct.bisect_terms* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bisect_terms*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.bisect_terms* %0, %struct.bisect_terms** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 (...) @git_path_bisect_terms()
  %8 = call i32 @is_empty_or_missing_file(i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 (i8*, i8*, i8*, i8*, ...) @one_of(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %22 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %20, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %29 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %27, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %36 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %39 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @error(i32 %34, i8* %37, i8* %40)
  store i32 %41, i32* %3, align 4
  br label %75

42:                                               ; preds = %26, %19, %16
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 (i8*, i8*, i8*, i8*, ...) @one_of(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %51 = call i32 @set_terms(%struct.bisect_terms* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %52 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %53 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %56 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @write_terms(i8* %54, i8* %57)
  store i32 %58, i32* %3, align 4
  br label %75

59:                                               ; preds = %45
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 (i8*, i8*, i8*, i8*, ...) @one_of(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* null)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %65 = call i32 @set_terms(%struct.bisect_terms* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %66 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %67 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %70 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @write_terms(i8* %68, i8* %71)
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %42
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %63, %49, %33, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @is_empty_or_missing_file(i32) #1

declare dso_local i32 @git_path_bisect_terms(...) #1

declare dso_local i64 @one_of(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @set_terms(%struct.bisect_terms*, i8*, i8*) #1

declare dso_local i32 @write_terms(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
