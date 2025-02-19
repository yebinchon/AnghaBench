; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_update_nvm_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_update_nvm_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"i40e_update_nvm_checksum\00", align 1
@I40E_SR_SW_CHECKSUM_WORD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_update_nvm_checksum(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %6 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %9 = call i32 @i40e_calc_nvm_checksum(%struct.i40e_hw* %8, i32* %4)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @CPU_TO_LE16(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @I40E_SUCCESS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %17 = load i32, i32* @I40E_SR_SW_CHECKSUM_WORD, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i32 @i40e_write_nvm_aq(%struct.i40e_hw* %16, i32 0, i32 %17, i32 1, i32* %5, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_calc_nvm_checksum(%struct.i40e_hw*, i32*) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_write_nvm_aq(%struct.i40e_hw*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
