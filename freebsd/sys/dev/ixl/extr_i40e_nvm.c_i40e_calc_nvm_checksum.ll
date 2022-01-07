; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_calc_nvm_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_calc_nvm_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_virt_mem = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"i40e_calc_nvm_checksum\00", align 1
@I40E_SR_SECTOR_SIZE_IN_WORDS = common dso_local global i32 0, align 4
@I40E_SR_VPD_PTR = common dso_local global i32 0, align 4
@I40E_ERR_NVM_CHECKSUM = common dso_local global i32 0, align 4
@I40E_SR_PCIE_ALT_AUTO_LOAD_PTR = common dso_local global i32 0, align 4
@I40E_SR_SW_CHECKSUM_WORD = common dso_local global i32 0, align 4
@I40E_SR_VPD_MODULE_MAX_SIZE = common dso_local global i32 0, align 4
@I40E_SR_PCIE_ALT_MODULE_MAX_SIZE = common dso_local global i32 0, align 4
@I40E_SR_SW_CHECKSUM_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_calc_nvm_checksum(%struct.i40e_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_virt_mem, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %16 = load i32, i32* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @i40e_allocate_virt_mem(%struct.i40e_hw* %15, %struct.i40e_virt_mem* %6, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %118

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.i40e_virt_mem, %struct.i40e_virt_mem* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %10, align 8
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %29 = load i32, i32* @I40E_SR_VPD_PTR, align 4
  %30 = call i32 @__i40e_read_nvm_word(%struct.i40e_hw* %28, i32 %29, i32* %9)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @I40E_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @I40E_ERR_NVM_CHECKSUM, align 4
  store i32 %35, i32* %5, align 4
  br label %118

36:                                               ; preds = %24
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %38 = load i32, i32* @I40E_SR_PCIE_ALT_AUTO_LOAD_PTR, align 4
  %39 = call i32 @__i40e_read_nvm_word(%struct.i40e_hw* %37, i32 %38, i32* %7)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @I40E_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @I40E_ERR_NVM_CHECKSUM, align 4
  store i32 %44, i32* %5, align 4
  br label %118

45:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %109, %45
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %49 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %112

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 4
  %56 = srem i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i32, i32* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @__i40e_read_nvm_buffer(%struct.i40e_hw* %60, i32 %61, i32* %12, i32* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @I40E_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @I40E_ERR_NVM_CHECKSUM, align 4
  store i32 %68, i32* %5, align 4
  br label %118

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @I40E_SR_SW_CHECKSUM_WORD, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %109

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @I40E_SR_VPD_MODULE_MAX_SIZE, align 4
  %83 = sdiv i32 %82, 2
  %84 = add nsw i32 %81, %83
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %109

87:                                               ; preds = %79, %75
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @I40E_SR_PCIE_ALT_MODULE_MAX_SIZE, align 4
  %95 = sdiv i32 %94, 2
  %96 = add nsw i32 %93, %95
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %109

99:                                               ; preds = %91, %87
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 4
  %103 = srem i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %99, %98, %86, %74
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %46

112:                                              ; preds = %46
  %113 = load i64, i64* @I40E_SR_SW_CHECKSUM_BASE, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32*, i32** %4, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %67, %43, %34, %23
  %119 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %120 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %119, %struct.i40e_virt_mem* %6)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_allocate_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*, i32) #1

declare dso_local i32 @__i40e_read_nvm_word(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @__i40e_read_nvm_buffer(%struct.i40e_hw*, i32, i32*, i32*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
