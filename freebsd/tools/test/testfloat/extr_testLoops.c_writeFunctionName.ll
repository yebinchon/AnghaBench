; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testLoops.c_writeFunctionName.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testLoops.c_writeFunctionName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@functionName = common dso_local global i8* null, align 8
@roundingModeName = common dso_local global i8* null, align 8
@roundingPrecisionName = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c", precision \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c", rounding \00", align 1
@tininessModeName = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c", tininess \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" rounding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writeFunctionName(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i8*, i8** @functionName, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @fputs(i8* %3, i32* %4)
  %6 = load i8*, i8** @roundingModeName, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load i8*, i8** @roundingPrecisionName, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load i8*, i8** @roundingPrecisionName, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @fputs(i8* %14, i32* %15)
  br label %17

17:                                               ; preds = %11, %8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load i8*, i8** @roundingModeName, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @fputs(i8* %20, i32* %21)
  %23 = load i8*, i8** @tininessModeName, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  %28 = load i8*, i8** @tininessModeName, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @fputs(i8* %28, i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %31)
  br label %33

33:                                               ; preds = %25, %17
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
