; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_clear_wait_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_clear_wait_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"NVMUPD: clearing wait on opcode 0x%04x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@I40E_NVMUPD_STATE_ERROR = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_INIT = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_WRITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_nvmupd_clear_wait_state(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %3 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %4 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %5 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @i40e_debug(%struct.i40e_hw* %3, i32 %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = call i32 @i40e_release_nvm(%struct.i40e_hw* %14)
  %16 = load i64, i64* @FALSE, align 8
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @I40E_NVMUPD_STATE_ERROR, align 4
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %44

31:                                               ; preds = %19
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %43 [
    i32 129, label %35
    i32 128, label %39
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* @I40E_NVMUPD_STATE_INIT, align 4
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %44

39:                                               ; preds = %31
  %40 = load i32, i32* @I40E_NVMUPD_STATE_WRITING, align 4
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %42 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %44

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %27, %43, %39, %35
  ret void
}

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
