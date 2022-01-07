; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_get_pba_block_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_get_pba_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"e1000_get_pba_block_size\00", align 1
@NVM_PBA_OFFSET_0 = common dso_local global i64 0, align 8
@NVM_PBA_OFFSET_1 = common dso_local global i64 0, align 8
@E1000_ERR_PARAM = common dso_local global i64 0, align 8
@NVM_PBA_PTR_GUARD = common dso_local global i64 0, align 8
@E1000_ERR_NVM_PBA_SECTION = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_pba_block_size(%struct.e1000_hw* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x i64], align 16
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i64*, i64** %7, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %18 = load i64, i64* @NVM_PBA_OFFSET_0, align 8
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %20 = call i64 @e1000_read_nvm(%struct.e1000_hw* %17, i64 %18, i32 2, i64* %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %5, align 8
  br label %99

25:                                               ; preds = %16
  br label %45

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @NVM_PBA_OFFSET_1, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* @NVM_PBA_OFFSET_0, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %34, i64* %35, align 16
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* @NVM_PBA_OFFSET_1, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %39, i64* %40, align 8
  br label %44

41:                                               ; preds = %26
  %42 = load i64, i64* @E1000_ERR_PARAM, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %99

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %25
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %47 = load i64, i64* %46, align 16
  %48 = load i64, i64* @NVM_PBA_PTR_GUARD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %45
  %51 = load i64*, i64** %7, align 8
  %52 = icmp eq i64* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 0
  %58 = call i64 @e1000_read_nvm(%struct.e1000_hw* %54, i64 %57, i32 1, i64* %12)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %5, align 8
  br label %99

63:                                               ; preds = %53
  br label %80

64:                                               ; preds = %50
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i64*, i64** %7, align 8
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 0
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %12, align 8
  br label %79

76:                                               ; preds = %64
  %77 = load i64, i64* @E1000_ERR_PARAM, align 8
  %78 = sub nsw i64 0, %77
  store i64 %78, i64* %5, align 8
  br label %99

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i64, i64* %12, align 8
  %82 = icmp eq i64 %81, 65535
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %12, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %80
  %87 = load i64, i64* @E1000_ERR_NVM_PBA_SECTION, align 8
  %88 = sub nsw i64 0, %87
  store i64 %88, i64* %5, align 8
  br label %99

89:                                               ; preds = %83
  br label %91

90:                                               ; preds = %45
  store i64 0, i64* %12, align 8
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i64*, i64** %9, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %12, align 8
  %96 = load i64*, i64** %9, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %97, %86, %76, %61, %41, %23
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
