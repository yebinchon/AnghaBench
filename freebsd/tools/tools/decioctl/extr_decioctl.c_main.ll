; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/decioctl/extr_decioctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/decioctl/extr_decioctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"  command :  dir  group num  len name\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid integer: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0x%08lx: \00", align 1
@IOC_DIRMASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"VOID \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"OUT  \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"IN   \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"INOUT\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%01lx ???\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" '%c' \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" %3lu %4lu\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @usage(i8** %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %18

18:                                               ; preds = %94, %16
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %97

22:                                               ; preds = %18
  store i64 0, i64* @errno, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strtoul(i8* %27, i8** %8, i32 0)
  store i64 %28, i64* %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i64, i64* @errno, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33, %22
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i8**, i8*** %5, align 8
  %45 = call i32 @usage(i8** %44)
  br label %46

46:                                               ; preds = %36, %33
  %47 = load i64, i64* %6, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @IOC_DIRMASK, align 8
  %51 = and i64 %49, %50
  switch i64 %51, label %60 [
    i64 128, label %52
    i64 129, label %54
    i64 131, label %56
    i64 130, label %58
  ]

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %66

54:                                               ; preds = %46
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %66

56:                                               ; preds = %46
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %66

58:                                               ; preds = %46
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %66

60:                                               ; preds = %46
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @IOC_DIRMASK, align 8
  %63 = and i64 %61, %62
  %64 = lshr i64 %63, 29
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %60, %58, %56, %54, %52
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @IOCGROUP(i64 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @isprint(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %74)
  br label %79

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i64, i64* %6, align 8
  %81 = and i64 %80, 255
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @IOCPARM_LEN(i64 %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 %81, i32 %83)
  %85 = load i64, i64* %6, align 8
  %86 = call i8* @sysdecode_ioctlname(i64 %85)
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %79
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %18

97:                                               ; preds = %18
  ret i32 0
}

declare dso_local i32 @usage(i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @IOCGROUP(i64) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @IOCPARM_LEN(i64) #1

declare dso_local i8* @sysdecode_ioctlname(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
