; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_check-attr.c_output_attr.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_check-attr.c_output_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@nul_term_line = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"%s%c%s%c%s%c\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c": %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_check*, i8*)* @output_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_attr(%struct.attr_check* %0, i8* %1) #0 {
  %3 = alloca %struct.attr_check*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.attr_check* %0, %struct.attr_check** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %9 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %72, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %17 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @ATTR_TRUE(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %40

28:                                               ; preds = %15
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @ATTR_FALSE(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %39

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @ATTR_UNSET(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %38

38:                                               ; preds = %37, %33
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i64, i64* @nul_term_line, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %46 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @git_attr_name(i32 %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %44, i8* null, i8* %53, i32 0, i8* %54, i32 0)
  br label %71

56:                                               ; preds = %40
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @quote_c_style(i8* %57, i32* null, i32 %58, i32 0)
  %60 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %61 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @git_attr_name(i32 %67)
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %56, %43
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %11

75:                                               ; preds = %11
  ret void
}

declare dso_local i64 @ATTR_TRUE(i8*) #1

declare dso_local i64 @ATTR_FALSE(i8*) #1

declare dso_local i64 @ATTR_UNSET(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @git_attr_name(i32) #1

declare dso_local i32 @quote_c_style(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
