; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_nvm_erase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_nvm_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_nvm_access = type { i64, i32, i32 }
%struct.i40e_asq_cmd_details = type { i32* }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_NVM_LCB = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"i40e_nvmupd_nvm_erase mod 0x%x  off 0x%x len 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"i40e_nvmupd_nvm_erase status %d aq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*)* @i40e_nvmupd_nvm_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_nvmupd_nvm_erase(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_nvm_access*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_asq_cmd_details, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @i40e_nvmupd_get_transaction(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %18 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @i40e_nvmupd_get_module(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @I40E_NVM_LCB, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = call i32 @memset(%struct.i40e_asq_cmd_details* %8, i32 0, i32 8)
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %8, i32 0, i32 0
  store i32* %26, i32** %27, align 8
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %31 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @i40e_aq_erase_nvm(%struct.i40e_hw* %28, i32 %29, i32 %32, i32 %36, i32 %37, %struct.i40e_asq_cmd_details* %8)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %3
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %43 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %46 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %49 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %42, i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i64 %50)
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %53 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %56 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %52, i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %62 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @i40e_aq_rc_to_posix(i32 %60, i32 %64)
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %41, %3
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @i40e_nvmupd_get_transaction(i32) #1

declare dso_local i32 @i40e_nvmupd_get_module(i32) #1

declare dso_local i32 @memset(%struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i32 @i40e_aq_erase_nvm(%struct.i40e_hw*, i32, i32, i32, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @i40e_aq_rc_to_posix(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
