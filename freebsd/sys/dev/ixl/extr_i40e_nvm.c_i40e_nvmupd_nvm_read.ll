; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_nvm_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_nvm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_nvm_access = type { i64, i32, i32 }
%struct.i40e_asq_cmd_details = type { i32* }

@I40E_NVM_LCB = common dso_local global i64 0, align 8
@I40E_NVM_SA = common dso_local global i64 0, align 8
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"i40e_nvmupd_nvm_read mod 0x%x  off 0x%x  len 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"i40e_nvmupd_nvm_read status %d aq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i64*, i32*)* @i40e_nvmupd_nvm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_nvm_access*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i40e_asq_cmd_details, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @i40e_nvmupd_get_transaction(i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @i40e_nvmupd_get_module(i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @I40E_NVM_LCB, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @I40E_NVM_SA, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %4
  %30 = phi i1 [ true, %4 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = call i32 @memset(%struct.i40e_asq_cmd_details* %9, i32 0, i32 8)
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %9, i32 0, i32 0
  store i32* %34, i32** %35, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %39 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %42 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64*, i64** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @i40e_aq_read_nvm(%struct.i40e_hw* %36, i64 %37, i32 %40, i32 %44, i64* %45, i32 %46, %struct.i40e_asq_cmd_details* %9)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %29
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %52 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %53 = load i64, i64* %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %56 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %59 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %51, i32 %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i64 %60)
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %63 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %66 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %62, i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %72 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @i40e_aq_rc_to_posix(i32 %70, i32 %74)
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %50, %29
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local i64 @i40e_nvmupd_get_transaction(i32) #1

declare dso_local i64 @i40e_nvmupd_get_module(i32) #1

declare dso_local i32 @memset(%struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i32 @i40e_aq_read_nvm(%struct.i40e_hw*, i64, i32, i32, i64*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @i40e_aq_rc_to_posix(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
