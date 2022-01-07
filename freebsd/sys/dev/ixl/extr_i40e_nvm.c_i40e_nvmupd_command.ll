; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_nvm_access = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"i40e_nvmupd_command\00", align 1
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [103 x i8] c"%s state %d nvm_release_on_hold %d opc 0x%04x cmd 0x%08x config 0x%08x offset 0x%08x data_size 0x%08x\0A\00", align 1
@i40e_nvm_update_state_str = common dso_local global i32* null, align 8
@I40E_NVMUPD_INVALID = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"i40e_nvmupd_validate_command returns %d errno %d\0A\00", align 1
@I40E_NVMUPD_STATUS = common dso_local global i32 0, align 4
@I40E_ERR_BUF_TOO_SHORT = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_ERROR = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Clearing I40E_NVMUPD_STATE_ERROR state without reading\0A\00", align 1
@I40E_ERR_NOT_READY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"NVMUPD: no such state %d\0A\00", align 1
@I40E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_nvmupd_command(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_nvm_access*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %15 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @i40e_nvmupd_validate_command(%struct.i40e_hw* %14, %struct.i40e_nvm_access* %15, i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %19 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %20 = load i32*, i32** @i40e_nvm_update_state_str, align 8
  %21 = load i32, i32* %11, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %29 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %32 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %35 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %38 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %41 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %44 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %18, i32 %19, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @I40E_NVMUPD_INVALID, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %4
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %55 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %54, i32 %55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %50, %4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @I40E_NVMUPD_STATUS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %103

64:                                               ; preds = %60
  %65 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %66 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @I40E_ERR_BUF_TOO_SHORT, align 4
  store i32 %73, i32* %5, align 4
  br label %172

74:                                               ; preds = %64
  %75 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %76 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %81 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 4
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %88 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %74
  %93 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %94 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @I40E_NVMUPD_STATE_ERROR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %100 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %99, i32 0, i32 0
  store i32 132, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %92
  %102 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %102, i32* %5, align 4
  br label %172

103:                                              ; preds = %60
  %104 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %105 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @I40E_NVMUPD_STATE_ERROR, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %111 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %112 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %110, i32 %111, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %114 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %113, i32 0, i32 0
  store i32 132, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %117 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = call i32 @i40e_acquire_spinlock(i32* %118)
  %120 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %121 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %155 [
    i32 132, label %123
    i32 130, label %129
    i32 128, label %135
    i32 131, label %141
    i32 129, label %141
  ]

123:                                              ; preds = %115
  %124 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %125 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @i40e_nvmupd_state_init(%struct.i40e_hw* %124, %struct.i40e_nvm_access* %125, i32* %126, i32* %127)
  store i32 %128, i32* %10, align 4
  br label %166

129:                                              ; preds = %115
  %130 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %131 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @i40e_nvmupd_state_reading(%struct.i40e_hw* %130, %struct.i40e_nvm_access* %131, i32* %132, i32* %133)
  store i32 %134, i32* %10, align 4
  br label %166

135:                                              ; preds = %115
  %136 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %137 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @i40e_nvmupd_state_writing(%struct.i40e_hw* %136, %struct.i40e_nvm_access* %137, i32* %138, i32* %139)
  store i32 %140, i32* %10, align 4
  br label %166

141:                                              ; preds = %115, %115
  %142 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %7, align 8
  %143 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 65535
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %148 = call i32 @i40e_nvmupd_clear_wait_state(%struct.i40e_hw* %147)
  %149 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %149, i32* %10, align 4
  br label %166

150:                                              ; preds = %141
  %151 = load i32, i32* @I40E_ERR_NOT_READY, align 4
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @EBUSY, align 4
  %153 = sub nsw i32 0, %152
  %154 = load i32*, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  br label %166

155:                                              ; preds = %115
  %156 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %157 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %158 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %159 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %156, i32 %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @I40E_NOT_SUPPORTED, align 4
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* @ESRCH, align 4
  %164 = sub nsw i32 0, %163
  %165 = load i32*, i32** %9, align 8
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %155, %150, %146, %135, %129, %123
  %167 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %168 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = call i32 @i40e_release_spinlock(i32* %169)
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %166, %101, %69
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_nvmupd_validate_command(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, ...) #1

declare dso_local i32 @i40e_acquire_spinlock(i32*) #1

declare dso_local i32 @i40e_nvmupd_state_init(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_state_reading(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_state_writing(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_clear_wait_state(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_release_spinlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
