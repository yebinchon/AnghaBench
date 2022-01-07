; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_nvm_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_nvm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_nvm_access = type { i64, i32, i32 }
%struct.i40e_asq_cmd_details = type { i32* }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_NVM_LCB = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"i40e_nvmupd_nvm_write mod 0x%x off 0x%x len 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"i40e_nvmupd_nvm_write status %d aq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*)* @i40e_nvmupd_nvm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_nvmupd_nvm_write(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_nvm_access*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_asq_cmd_details, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %17 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @i40e_nvmupd_get_transaction(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %21 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @i40e_nvmupd_get_module(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @I40E_NVM_LCB, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %28 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @i40e_nvmupd_get_preservation_flags(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = call i32 @memset(%struct.i40e_asq_cmd_details* %10, i32 0, i32 8)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %33 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %10, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %38 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %41 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @i40e_aq_update_nvm(%struct.i40e_hw* %35, i32 %36, i32 %39, i32 %43, i32* %44, i32 %45, i32 %46, %struct.i40e_asq_cmd_details* %10)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %4
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %52 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %55 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %58 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %51, i32 %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i64 %59)
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %62 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %65 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %61, i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %71 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @i40e_aq_rc_to_posix(i32 %69, i32 %73)
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %50, %4
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i32 @i40e_nvmupd_get_transaction(i32) #1

declare dso_local i32 @i40e_nvmupd_get_module(i32) #1

declare dso_local i32 @i40e_nvmupd_get_preservation_flags(i32) #1

declare dso_local i32 @memset(%struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i32 @i40e_aq_update_nvm(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @i40e_aq_rc_to_posix(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
