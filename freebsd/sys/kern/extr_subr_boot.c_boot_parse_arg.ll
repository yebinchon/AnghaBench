; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_boot.c_boot_parse_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_boot.c_boot_parse_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RB_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"comconsole_speed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@kargs = common dso_local global i8* null, align 8
@opts = common dso_local global i8* null, align 8
@sw = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @boot_parse_arg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 45
  br i1 %8, label %9, label %69

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %67, %9
  %11 = load i8*, i8** %2, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %67 [
    i32 97, label %21
    i32 67, label %24
    i32 100, label %27
    i32 68, label %30
    i32 109, label %33
    i32 103, label %36
    i32 104, label %39
    i32 112, label %42
    i32 80, label %45
    i32 114, label %49
    i32 115, label %52
    i32 83, label %55
    i32 118, label %64
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 138
  store i32 %23, i32* %4, align 4
  br label %67

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, 137
  store i32 %26, i32* %4, align 4
  br label %67

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, 134
  store i32 %29, i32* %4, align 4
  br label %67

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, 133
  store i32 %32, i32* %4, align 4
  br label %67

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, 132
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %15
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, 135
  store i32 %38, i32* %4, align 4
  br label %67

39:                                               ; preds = %15
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, 130
  store i32 %41, i32* %4, align 4
  br label %67

42:                                               ; preds = %15
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, 131
  store i32 %44, i32* %4, align 4
  br label %67

45:                                               ; preds = %15
  %46 = load i32, i32* @RB_PROBE, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %67

49:                                               ; preds = %15
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, 136
  store i32 %51, i32* %4, align 4
  br label %67

52:                                               ; preds = %15
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, 129
  store i32 %54, i32* %4, align 4
  br label %67

55:                                               ; preds = %15
  %56 = load i8*, i8** %2, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = call i32 @SETENV(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = load i8*, i8** %2, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %2, align 8
  br label %67

64:                                               ; preds = %15
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, 128
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %15, %64, %55, %52, %49, %45, %42, %39, %36, %33, %30, %27, %24, %21
  br label %10

68:                                               ; preds = %10
  br label %81

69:                                               ; preds = %1
  %70 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %70, i8** %3, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @SETENV(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %80

76:                                               ; preds = %69
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** %2, align 8
  %79 = call i32 @SETENV(i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %68
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @SETENV(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
