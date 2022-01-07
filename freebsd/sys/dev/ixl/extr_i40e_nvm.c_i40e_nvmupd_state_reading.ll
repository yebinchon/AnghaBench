; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_state_reading.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_state_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_nvm_access = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"i40e_nvmupd_state_reading\00", align 1
@I40E_NVMUPD_STATE_INIT = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"NVMUPD: bad cmd %s in reading state.\0A\00", align 1
@i40e_nvm_update_state_str = common dso_local global i32* null, align 8
@I40E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*)* @i40e_nvmupd_state_reading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_nvmupd_state_reading(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_nvm_access*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %14 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @i40e_nvmupd_validate_command(%struct.i40e_hw* %13, %struct.i40e_nvm_access* %14, i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %35 [
    i32 128, label %18
    i32 130, label %18
    i32 129, label %24
  ]

18:                                               ; preds = %4, %4
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %20 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw* %19, %struct.i40e_nvm_access* %20, i32* %21, i32* %22)
  store i32 %23, i32* %9, align 4
  br label %48

24:                                               ; preds = %4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %26 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw* %25, %struct.i40e_nvm_access* %26, i32* %27, i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %31 = call i32 @i40e_release_nvm(%struct.i40e_hw* %30)
  %32 = load i32, i32* @I40E_NVMUPD_STATE_INIT, align 4
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %48

35:                                               ; preds = %4
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %37 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %38 = load i32*, i32** @i40e_nvm_update_state_str, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i40e_debug(%struct.i40e_hw* %36, i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @I40E_NOT_SUPPORTED, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @ESRCH, align 4
  %46 = sub nsw i32 0, %45
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %35, %24, %18
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_nvmupd_validate_command(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*) #1

declare dso_local i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
