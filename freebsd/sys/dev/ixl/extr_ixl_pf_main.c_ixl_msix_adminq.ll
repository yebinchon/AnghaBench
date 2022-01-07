; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_msix_adminq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_msix_adminq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.TYPE_2__, i32, i32, i32, %struct.i40e_hw }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@I40E_PFINT_ICR0 = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ADMINQ_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_ADMINQ_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_MAL_DETECT_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK = common dso_local global i32 0, align 4
@IXL_PF_STATE_MDD_PENDING = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_GRST_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_GRST_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Reset Requested!\0A\00", align 1
@I40E_GLGEN_RSTAT = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT_RESET_TYPE_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Reset type: \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CORER\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"GLOBR\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"EMPR\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"POR\0A\00", align 1
@IXL_PF_STATE_ADAPTER_RESETTING = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ECC_ERR_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"ECC Error detected!\0A\00", align 1
@I40E_PFINT_ICR0_PCI_EXCEPTION_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"PCI Exception detected!\0A\00", align 1
@I40E_PFINT_ICR0_PE_CRITERR_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Critical Protocol Engine Error detected!\0A\00", align 1
@IXL_ICR0_CRIT_ERR_MASK = common dso_local global i32 0, align 4
@IXL_PF_STATE_PF_RESET_REQ = common dso_local global i32 0, align 4
@IXL_PF_STATE_PF_CRIT_ERR = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_HMC_ERR_MASK = common dso_local global i32 0, align 4
@I40E_PFHMC_ERRORINFO = common dso_local global i32 0, align 4
@I40E_PFHMC_ERRORINFO_ERROR_DETECTED_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"HMC Error detected!\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"INFO 0x%08x\0A\00", align 1
@I40E_PFHMC_ERRORDATA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"DATA 0x%08x\0A\00", align 1
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_VFLR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_VFLR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_msix_adminq(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.ixl_pf*
  store %struct.ixl_pf* %12, %struct.ixl_pf** %4, align 8
  %13 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %14 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %13, i32 0, i32 4
  store %struct.i40e_hw* %14, %struct.i40e_hw** %5, align 8
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %16 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DDPRINTF(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %22 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %26 = load i32, i32* @I40E_PFINT_ICR0, align 4
  %27 = call i32 @rd32(%struct.i40e_hw* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %29 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %30 = call i32 @rd32(%struct.i40e_hw* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @I40E_PFINT_ICR0_ADMINQ_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @I40E_PFINT_ICR0_ENA_ADMINQ_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35, %1
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @I40E_PFINT_ICR0_MAL_DETECT_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, i32* @I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %52 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %51, i32 0, i32 1
  %53 = load i32, i32* @IXL_PF_STATE_MDD_PENDING, align 4
  %54 = call i32 @atomic_set_32(i32* %52, i32 %53)
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %46, %41
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @I40E_PFINT_ICR0_GRST_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  %62 = load i32, i32* @I40E_PFINT_ICR0_ENA_GRST_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %69 = load i32, i32* @I40E_GLGEN_RSTAT, align 4
  %70 = call i32 @rd32(%struct.i40e_hw* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @I40E_GLGEN_RSTAT_RESET_TYPE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT, align 4
  %75 = ashr i32 %73, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %9, align 4
  switch i32 %78, label %85 [
    i32 130, label %79
    i32 128, label %81
    i32 129, label %83
  ]

79:                                               ; preds = %61
  %80 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %87

81:                                               ; preds = %61
  %82 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %87

83:                                               ; preds = %61
  %84 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %87

85:                                               ; preds = %61
  %86 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %83, %81, %79
  %88 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %89 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %88, i32 0, i32 1
  %90 = load i32, i32* @IXL_PF_STATE_ADAPTER_RESETTING, align 4
  %91 = call i32 @atomic_set_int(i32* %89, i32 %90)
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %87, %56
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @I40E_PFINT_ICR0_ECC_ERR_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @I40E_PFINT_ICR0_PCI_EXCEPTION_MASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @I40E_PFINT_ICR0_PE_CRITERR_MASK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @IXL_ICR0_CRIT_ERR_MASK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load i32, i32* @IXL_ICR0_CRIT_ERR_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %128 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %127, i32 0, i32 1
  %129 = load i32, i32* @IXL_PF_STATE_PF_RESET_REQ, align 4
  %130 = load i32, i32* @IXL_PF_STATE_PF_CRIT_ERR, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @atomic_set_32(i32* %128, i32 %131)
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %122, %117
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @I40E_PFINT_ICR0_HMC_ERR_MASK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %134
  %140 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %141 = load i32, i32* @I40E_PFHMC_ERRORINFO, align 4
  %142 = call i32 @rd32(%struct.i40e_hw* %140, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @I40E_PFHMC_ERRORINFO_ERROR_DETECTED_MASK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %139
  %148 = load i32, i32* %6, align 4
  %149 = call i32 (i32, i8*, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i32, i8*, ...) @device_printf(i32 %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %151)
  %153 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %154 = load i32, i32* @I40E_PFHMC_ERRORDATA, align 4
  %155 = call i32 @rd32(%struct.i40e_hw* %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %157)
  %159 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %160 = load i32, i32* @I40E_PFHMC_ERRORINFO, align 4
  %161 = call i32 @wr32(%struct.i40e_hw* %159, i32 %160, i32 0)
  br label %162

162:                                              ; preds = %147, %139
  br label %163

163:                                              ; preds = %162, %134
  %164 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %165 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @wr32(%struct.i40e_hw* %164, i32 %165, i32 %166)
  %168 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %169 = call i32 @ixl_enable_intr0(%struct.i40e_hw* %168)
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %173, i32* %2, align 4
  br label %176

174:                                              ; preds = %163
  %175 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @DDPRINTF(i32, i8*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @atomic_set_32(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @ixl_enable_intr0(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
