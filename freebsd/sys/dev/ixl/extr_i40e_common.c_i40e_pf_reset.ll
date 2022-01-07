; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_pf_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_pf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_GLGEN_RSTCTL = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTCTL_GRSTDEL_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT_DEVSTATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Global reset polling failed to complete.\0A\00", align 1
@I40E_ERR_RESET_FAILED = common dso_local global i32 0, align 4
@I40E_PF_RESET_WAIT_COUNT = common dso_local global i32 0, align 4
@I40E_GLNVM_ULD = common dso_local global i32 0, align 4
@I40E_GLNVM_ULD_CONF_CORE_DONE_MASK = common dso_local global i32 0, align 4
@I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Core and Global modules ready %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"wait for FW Reset complete timedout\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"I40E_GLNVM_ULD = 0x%x\0A\00", align 1
@I40E_PFGEN_CTRL = common dso_local global i32 0, align 4
@I40E_PFGEN_CTRL_PFSWR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Core reset upcoming. Skipping PF reset request.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"I40E_GLGEN_RSTAT = 0x%x\0A\00", align 1
@I40E_ERR_NOT_READY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"PF reset polling failed to complete.\0A\00", align 1
@I40E_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_pf_reset(%struct.i40e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %10 = load i32, i32* @I40E_GLGEN_RSTCTL, align 4
  %11 = call i32 @rd32(%struct.i40e_hw* %9, i32 %10)
  %12 = load i32, i32* @I40E_GLGEN_RSTCTL_GRSTDEL_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %16, 20
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %24 = load i32, i32* @I40E_GLGEN_RSTAT, align 4
  %25 = call i32 @rd32(%struct.i40e_hw* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @I40E_GLGEN_RSTAT_DEVSTATE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %36

31:                                               ; preds = %22
  %32 = call i32 @i40e_msec_delay(i32 100)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %18

36:                                               ; preds = %30, %18
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @I40E_GLGEN_RSTAT_DEVSTATE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @I40E_ERR_RESET_FAILED, align 4
  store i32 %43, i32* %2, align 4
  br label %140

44:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @I40E_PF_RESET_WAIT_COUNT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %51 = load i32, i32* @I40E_GLNVM_ULD, align 4
  %52 = call i32 @rd32(%struct.i40e_hw* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @I40E_GLNVM_ULD_CONF_CORE_DONE_MASK, align 4
  %54 = load i32, i32* @I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @I40E_GLNVM_ULD_CONF_CORE_DONE_MASK, align 4
  %60 = load i32, i32* @I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK, align 4
  %61 = or i32 %59, %60
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %71

66:                                               ; preds = %49
  %67 = call i32 @i40e_msec_delay(i32 10)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %45

71:                                               ; preds = %63, %45
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @I40E_GLNVM_ULD_CONF_CORE_DONE_MASK, align 4
  %74 = load i32, i32* @I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @I40E_ERR_RESET_FAILED, align 4
  store i32 %82, i32* %2, align 4
  br label %140

83:                                               ; preds = %71
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %136, label %86

86:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %88 = load i32, i32* @I40E_PFGEN_CTRL, align 4
  %89 = call i32 @rd32(%struct.i40e_hw* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %91 = load i32, i32* @I40E_PFGEN_CTRL, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @I40E_PFGEN_CTRL_PFSWR_MASK, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @wr32(%struct.i40e_hw* %90, i32 %91, i32 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %124, %86
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @I40E_PF_RESET_WAIT_COUNT, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %102 = load i32, i32* @I40E_PFGEN_CTRL, align 4
  %103 = call i32 @rd32(%struct.i40e_hw* %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @I40E_PFGEN_CTRL_PFSWR_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  br label %127

109:                                              ; preds = %100
  %110 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %111 = load i32, i32* @I40E_GLGEN_RSTAT, align 4
  %112 = call i32 @rd32(%struct.i40e_hw* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @I40E_GLGEN_RSTAT_DEVSTATE_MASK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @I40E_ERR_NOT_READY, align 4
  store i32 %121, i32* %2, align 4
  br label %140

122:                                              ; preds = %109
  %123 = call i32 @i40e_msec_delay(i32 1)
  br label %124

124:                                              ; preds = %122
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %96

127:                                              ; preds = %108, %96
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @I40E_PFGEN_CTRL_PFSWR_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* @I40E_ERR_RESET_FAILED, align 4
  store i32 %134, i32* %2, align 4
  br label %140

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %83
  %137 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %138 = call i32 @i40e_clear_pxe_mode(%struct.i40e_hw* %137)
  %139 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %132, %117, %78, %41
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_clear_pxe_mode(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
