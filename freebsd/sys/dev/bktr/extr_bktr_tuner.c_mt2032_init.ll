; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_mt2032_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_mt2032_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"%s: MT2032: Companycode=%02x%02x Part=%02x Revision=%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: MT2032 not found or unknown type\0A\00", align 1
@MT2032_XOGC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt2032_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [22 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TDA9887_init(i32 %9, i32 0)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 21
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @MT2032_GetRegister(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %27

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [22 x i32], [22 x i32]* %4, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %11

27:                                               ; preds = %18, %11
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 21
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %84

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i8* @bktr_name(i32 %32)
  %34 = getelementptr inbounds [22 x i32], [22 x i32]* %4, i64 0, i64 17
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [22 x i32], [22 x i32]* %4, i64 0, i64 18
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [22 x i32], [22 x i32]* %4, i64 0, i64 19
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [22 x i32], [22 x i32]* %4, i64 0, i64 20
  %41 = load i32, i32* %40, align 16
  %42 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35, i32 %37, i32 %39, i32 %41)
  %43 = getelementptr inbounds [22 x i32], [22 x i32]* %4, i64 0, i64 19
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 4
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i32, i32* %3, align 4
  %48 = call i8* @bktr_name(i32 %47)
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %2, align 4
  br label %84

50:                                               ; preds = %31
  %51 = call i32 @MT2032_SetRegister(i32 2, i32 255)
  %52 = call i32 @MT2032_SetRegister(i32 3, i32 15)
  %53 = call i32 @MT2032_SetRegister(i32 4, i32 31)
  %54 = call i32 @MT2032_SetRegister(i32 6, i32 228)
  %55 = call i32 @MT2032_SetRegister(i32 7, i32 143)
  %56 = call i32 @MT2032_SetRegister(i32 8, i32 195)
  %57 = call i32 @MT2032_SetRegister(i32 9, i32 78)
  %58 = call i32 @MT2032_SetRegister(i32 10, i32 236)
  %59 = call i32 @MT2032_SetRegister(i32 13, i32 50)
  store i32 7, i32* %5, align 4
  br label %60

60:                                               ; preds = %77, %50
  %61 = call i32 @DELAY(i32 10000)
  %62 = call i32 @MT2032_GetRegister(i32 14)
  %63 = and i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %80

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 4, i32* %5, align 4
  br label %80

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 136, %74
  %76 = call i32 @MT2032_SetRegister(i32 7, i32 %75)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %60, label %80

80:                                               ; preds = %77, %72, %66
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @TDA9887_init(i32 %81, i32 1)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* @MT2032_XOGC, align 4
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %46, %30
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @TDA9887_init(i32, i32) #1

declare dso_local i32 @MT2032_GetRegister(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @bktr_name(i32) #1

declare dso_local i32 @MT2032_SetRegister(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
