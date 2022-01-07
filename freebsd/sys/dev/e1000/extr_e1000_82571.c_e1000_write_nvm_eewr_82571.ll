; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_write_nvm_eewr_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_write_nvm_eewr_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"e1000_write_nvm_eewr_82571\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@E1000_NVM_RW_REG_DATA = common dso_local global i64 0, align 8
@E1000_NVM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@E1000_NVM_RW_REG_START = common dso_local global i64 0, align 8
@E1000_NVM_POLL_WRITE = common dso_local global i32 0, align 4
@E1000_EEWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_write_nvm_eewr_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_nvm_eewr_82571(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_nvm_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  store %struct.e1000_nvm_info* %15, %struct.e1000_nvm_info** %10, align 8
  store i64 0, i64* %12, align 8
  %16 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %16, i64* %13, align 8
  %17 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %20 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %26 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp sgt i64 %24, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %23, %4
  %35 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* @E1000_ERR_NVM, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %81

38:                                               ; preds = %31
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %76, %38
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %39
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @E1000_NVM_RW_REG_DATA, align 8
  %49 = shl i64 %47, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* @E1000_NVM_RW_ADDR_SHIFT, align 8
  %54 = shl i64 %52, %53
  %55 = or i64 %49, %54
  %56 = load i64, i64* @E1000_NVM_RW_REG_START, align 8
  %57 = or i64 %55, %56
  store i64 %57, i64* %12, align 8
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %59 = load i32, i32* @E1000_NVM_POLL_WRITE, align 4
  %60 = call i64 @e1000_poll_eerd_eewr_done(%struct.e1000_hw* %58, i32 %59)
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %79

64:                                               ; preds = %43
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %66 = load i32, i32* @E1000_EEWR, align 4
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %65, i32 %66, i64 %67)
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %70 = load i32, i32* @E1000_NVM_POLL_WRITE, align 4
  %71 = call i64 @e1000_poll_eerd_eewr_done(%struct.e1000_hw* %69, i32 %70)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %79

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %11, align 8
  br label %39

79:                                               ; preds = %74, %63, %39
  %80 = load i64, i64* %13, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %79, %34
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_poll_eerd_eewr_done(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
