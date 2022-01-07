; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_write_nvm_srwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_write_nvm_srwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"e1000_write_nvm_srwr\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@E1000_NVM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@E1000_NVM_RW_REG_DATA = common dso_local global i64 0, align 8
@E1000_NVM_RW_REG_START = common dso_local global i64 0, align 8
@E1000_SRWR = common dso_local global i32 0, align 4
@E1000_NVM_RW_REG_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Shadow RAM write EEWR timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_write_nvm_srwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_write_nvm_srwr(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.e1000_nvm_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  store %struct.e1000_nvm_info* %16, %struct.e1000_nvm_info** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 100000, i64* %13, align 8
  %17 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %17, i32* %14, align 4
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %21 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %27 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %28, %29
  %31 = icmp sgt i64 %25, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %24, %4
  %36 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @E1000_ERR_NVM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %14, align 4
  br label %92

39:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %88, %39
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %91

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @E1000_NVM_RW_ADDR_SHIFT, align 8
  %49 = shl i64 %47, %48
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @E1000_NVM_RW_REG_DATA, align 8
  %55 = shl i64 %53, %54
  %56 = or i64 %49, %55
  %57 = load i64, i64* @E1000_NVM_RW_REG_START, align 8
  %58 = or i64 %56, %57
  store i64 %58, i64* %12, align 8
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %60 = load i32, i32* @E1000_SRWR, align 4
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %59, i32 %60, i64 %61)
  store i64 0, i64* %11, align 8
  br label %63

63:                                               ; preds = %78, %44
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* @E1000_NVM_RW_REG_DONE, align 4
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %70 = load i32, i32* @E1000_SRWR, align 4
  %71 = call i32 @E1000_READ_REG(%struct.e1000_hw* %69, i32 %70)
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %75, i32* %14, align 4
  br label %81

76:                                               ; preds = %67
  %77 = call i32 @usec_delay(i32 5)
  br label %78

78:                                               ; preds = %76
  %79 = load i64, i64* %11, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %63

81:                                               ; preds = %74, %63
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @E1000_SUCCESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %91

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %10, align 8
  br label %40

91:                                               ; preds = %85, %40
  br label %92

92:                                               ; preds = %91, %35
  %93 = load i32, i32* %14, align 4
  ret i32 %93
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
