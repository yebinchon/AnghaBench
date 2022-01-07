; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_pdfork.c_test_pdfork.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_pdfork.c_test_pdfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i64 }

@PASSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pdfork\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pdgetpid succeeded\00", align 1
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"pdgetpid failed, but errno != EBADF\00", align 1
@FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_pdfork() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @PASSED, align 4
  store i32 %8, i32* %2, align 4
  %9 = call i64 @pdfork(i32* %3, i32 0)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %35

14:                                               ; preds = %0
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pdgetpid(i32 %18, i64* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @FAILX(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %31

24:                                               ; preds = %17
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EBADF, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @FAIL(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @fstat(i32 %36, %struct.stat* %1)
  %38 = call i32 @REQUIRE(i32 %37)
  %39 = call i64 @time(i32* null)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, -1
  %42 = zext i1 %41 to i32
  %43 = call i32 @CHECK(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @CHECK(i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %50, %52
  %54 = icmp slt i64 %53, 2
  %55 = zext i1 %54 to i32
  %56 = call i32 @CHECK(i32 %55)
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @CHECK(i32 %62)
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %65, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @CHECK(i32 %69)
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %72, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @CHECK(i32 %76)
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @pdgetpid(i32 %78, i64* %5)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @CHECK(i32 %82)
  %84 = load i64, i64* %5, align 8
  %85 = icmp sgt i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @CHECK(i32 %86)
  br label %88

88:                                               ; preds = %93, %35
  %89 = load i64, i64* %5, align 8
  %90 = call i64 @waitpid(i64 %89, i32* %7, i32 0)
  %91 = load i64, i64* %5, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %88

94:                                               ; preds = %88
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @PASSED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = call i64 @WIFEXITED(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @WEXITSTATUS(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %107

105:                                              ; preds = %98, %94
  %106 = load i32, i32* @FAILED, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @pdfork(i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pdgetpid(i32, i64*) #1

declare dso_local i32 @FAILX(i8*) #1

declare dso_local i32 @FAIL(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
