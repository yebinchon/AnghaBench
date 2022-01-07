; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_validate_nvm_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_validate_nvm_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"i40e_validate_nvm_checksum\00", align 1
@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@I40E_SR_SW_CHECKSUM_WORD = common dso_local global i32 0, align 4
@I40E_ERR_NVM_CHECKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_validate_nvm_checksum(%struct.i40e_hw* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %12 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %13 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %20 = call i32 @i40e_calc_nvm_checksum(%struct.i40e_hw* %19, i64* %8)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %22 = load i32, i32* @I40E_SR_SW_CHECKSUM_WORD, align 4
  %23 = call i32 @__i40e_read_nvm_word(%struct.i40e_hw* %21, i32 %22, i64* %7)
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %25 = call i32 @i40e_release_nvm(%struct.i40e_hw* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %18
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @I40E_ERR_NVM_CHECKSUM, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64*, i64** %5, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = load i64*, i64** %5, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %28, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_calc_nvm_checksum(%struct.i40e_hw*, i64*) #1

declare dso_local i32 @__i40e_read_nvm_word(%struct.i40e_hw*, i32, i64*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
