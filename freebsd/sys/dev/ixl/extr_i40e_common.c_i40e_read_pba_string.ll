; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_read_pba_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_read_pba_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_SR_PBA_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to read PBA flags or flag is invalid.\0A\00", align 1
@I40E_SR_PBA_BLOCK_PTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read PBA Block pointer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to read PBA Block size.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Buffer to small for PBA data.\0A\00", align 1
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to read PBA Block word %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_read_pba_string(%struct.i40e_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %15 = load i32, i32* @I40E_SR_PBA_FLAGS, align 4
  %16 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %14, i32 %15, i32* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @I40E_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 64250
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %3
  %24 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %105

26:                                               ; preds = %20
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %28 = load i32, i32* @I40E_SR_PBA_BLOCK_PTR, align 4
  %29 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %27, i32 %28, i32* %11)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @I40E_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %105

36:                                               ; preds = %26
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %37, i32 %38, i32* %10)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @I40E_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %105

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %51, 1
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %56, i32* %4, align 4
  br label %105

57:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %95, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %58
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %63, i32 %67, i32* %9)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @I40E_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %105

76:                                               ; preds = %62
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8 %80, i8* %85, align 1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %90, 2
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  store i8 %88, i8* %94, align 1
  br label %95

95:                                               ; preds = %76
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %58

98:                                               ; preds = %58
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = mul nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %72, %54, %43, %33, %23
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @i40e_read_nvm_word(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
