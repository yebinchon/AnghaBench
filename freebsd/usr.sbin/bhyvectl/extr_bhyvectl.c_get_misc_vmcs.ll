; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_get_misc_vmcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_get_misc_vmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@get_cr0_mask = common dso_local global i64 0, align 8
@get_all = common dso_local global i64 0, align 8
@VMCS_CR0_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cr0_mask[%d]\09\090x%016lx\0A\00", align 1
@get_cr0_shadow = common dso_local global i64 0, align 8
@VMCS_CR0_SHADOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cr0_shadow[%d]\09\090x%016lx\0A\00", align 1
@get_cr4_mask = common dso_local global i64 0, align 8
@VMCS_CR4_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cr4_mask[%d]\09\090x%016lx\0A\00", align 1
@get_cr4_shadow = common dso_local global i64 0, align 8
@VMCS_CR4_SHADOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"cr4_shadow[%d]\09\090x%016lx\0A\00", align 1
@get_cr3_targets = common dso_local global i64 0, align 8
@VMCS_CR3_TARGET_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"cr3_target_count[%d]\090x%016lx\0A\00", align 1
@VMCS_CR3_TARGET0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"cr3_target0[%d]\09\090x%016lx\0A\00", align 1
@VMCS_CR3_TARGET1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"cr3_target1[%d]\09\090x%016lx\0A\00", align 1
@VMCS_CR3_TARGET2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"cr3_target2[%d]\09\090x%016lx\0A\00", align 1
@VMCS_CR3_TARGET3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"cr3_target3[%d]\09\090x%016lx\0A\00", align 1
@get_pinbased_ctls = common dso_local global i64 0, align 8
@VMCS_PIN_BASED_CTLS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"pinbased_ctls[%d]\090x%016lx\0A\00", align 1
@get_procbased_ctls = common dso_local global i64 0, align 8
@VMCS_PRI_PROC_BASED_CTLS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"procbased_ctls[%d]\090x%016lx\0A\00", align 1
@get_procbased_ctls2 = common dso_local global i64 0, align 8
@VMCS_SEC_PROC_BASED_CTLS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"procbased_ctls2[%d]\090x%016lx\0A\00", align 1
@get_vmcs_gla = common dso_local global i64 0, align 8
@VMCS_GUEST_LINEAR_ADDRESS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"gla[%d]\09\090x%016lx\0A\00", align 1
@get_vmcs_gpa = common dso_local global i64 0, align 8
@VMCS_GUEST_PHYSICAL_ADDRESS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"gpa[%d]\09\090x%016lx\0A\00", align 1
@get_vmcs_entry_interruption_info = common dso_local global i64 0, align 8
@VMCS_ENTRY_INTR_INFO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"entry_interruption_info[%d]\090x%016lx\0A\00", align 1
@get_tpr_threshold = common dso_local global i64 0, align 8
@VMCS_TPR_THRESHOLD = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"tpr_threshold[%d]\090x%016lx\0A\00", align 1
@get_inst_err = common dso_local global i64 0, align 8
@VMCS_INSTRUCTION_ERROR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"instruction_error[%d]\090x%016lx\0A\00", align 1
@get_exit_ctls = common dso_local global i64 0, align 8
@VMCS_EXIT_CTLS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"exit_ctls[%d]\09\090x%016lx\0A\00", align 1
@get_entry_ctls = common dso_local global i64 0, align 8
@VMCS_ENTRY_CTLS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [26 x i8] c"entry_ctls[%d]\09\090x%016lx\0A\00", align 1
@get_host_pat = common dso_local global i64 0, align 8
@VMCS_HOST_IA32_PAT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"host_pat[%d]\09\090x%016lx\0A\00", align 1
@get_host_cr0 = common dso_local global i64 0, align 8
@VMCS_HOST_CR0 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"host_cr0[%d]\09\090x%016lx\0A\00", align 1
@get_host_cr3 = common dso_local global i64 0, align 8
@VMCS_HOST_CR3 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"host_cr3[%d]\09\090x%016lx\0A\00", align 1
@get_host_cr4 = common dso_local global i64 0, align 8
@VMCS_HOST_CR4 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [24 x i8] c"host_cr4[%d]\09\090x%016lx\0A\00", align 1
@get_host_rip = common dso_local global i64 0, align 8
@VMCS_HOST_RIP = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"host_rip[%d]\09\090x%016lx\0A\00", align 1
@get_host_rsp = common dso_local global i64 0, align 8
@VMCS_HOST_RSP = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [24 x i8] c"host_rsp[%d]\09\090x%016lx\0A\00", align 1
@get_vmcs_link = common dso_local global i64 0, align 8
@VMCS_LINK_POINTER = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [27 x i8] c"vmcs_pointer[%d]\090x%016lx\0A\00", align 1
@get_vmcs_exit_interruption_info = common dso_local global i64 0, align 8
@VMCS_EXIT_INTR_INFO = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [42 x i8] c"vmcs_exit_interruption_info[%d]\090x%016lx\0A\00", align 1
@get_vmcs_exit_interruption_error = common dso_local global i64 0, align 8
@VMCS_EXIT_INTR_ERRCODE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [43 x i8] c"vmcs_exit_interruption_error[%d]\090x%016lx\0A\00", align 1
@get_vmcs_interruptibility = common dso_local global i64 0, align 8
@VMCS_GUEST_INTERRUPTIBILITY = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [42 x i8] c"vmcs_guest_interruptibility[%d]\090x%016lx\0A\00", align 1
@get_vmcs_exit_inst_length = common dso_local global i64 0, align 8
@VMCS_EXIT_INSTRUCTION_LENGTH = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [34 x i8] c"vmcs_exit_inst_length[%d]\090x%08x\0A\00", align 1
@get_vmcs_exit_qualification = common dso_local global i64 0, align 8
@VMCS_EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [38 x i8] c"vmcs_exit_qualification[%d]\090x%016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32)* @get_misc_vmcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_misc_vmcs(%struct.vmctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* @get_cr0_mask, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @get_all, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28, %25
  %32 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @VMCS_CR0_MASK, align 4
  %35 = call i32 @vm_get_vmcs_field(%struct.vmctx* %32, i32 %33, i32 %34, i32* %15)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42, %28, %2
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* @get_cr0_shadow, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @get_all, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49, %46
  %53 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @VMCS_CR0_SHADOW, align 4
  %56 = call i32 @vm_get_vmcs_field(%struct.vmctx* %53, i32 %54, i32 %55, i32* %16)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %63, %49, %43
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @get_cr4_mask, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* @get_all, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70, %67
  %74 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @VMCS_CR4_MASK, align 4
  %77 = call i32 @vm_get_vmcs_field(%struct.vmctx* %74, i32 %75, i32 %76, i32* %17)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %73
  br label %85

85:                                               ; preds = %84, %70, %64
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* @get_cr4_shadow, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* @get_all, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91, %88
  %95 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @VMCS_CR4_SHADOW, align 4
  %98 = call i32 @vm_get_vmcs_field(%struct.vmctx* %95, i32 %96, i32 %97, i32* %18)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %94
  br label %106

106:                                              ; preds = %105, %91, %85
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %171, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* @get_cr3_targets, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* @get_all, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %171

115:                                              ; preds = %112, %109
  %116 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @VMCS_CR3_TARGET_COUNT, align 4
  %119 = call i32 @vm_get_vmcs_field(%struct.vmctx* %116, i32 %117, i32 %118, i32* %19)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %115
  %127 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @VMCS_CR3_TARGET0, align 4
  %130 = call i32 @vm_get_vmcs_field(%struct.vmctx* %127, i32 %128, i32 %129, i32* %20)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %126
  %138 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @VMCS_CR3_TARGET1, align 4
  %141 = call i32 @vm_get_vmcs_field(%struct.vmctx* %138, i32 %139, i32 %140, i32* %20)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %20, align 4
  %147 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %137
  %149 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @VMCS_CR3_TARGET2, align 4
  %152 = call i32 @vm_get_vmcs_field(%struct.vmctx* %149, i32 %150, i32 %151, i32* %20)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* %20, align 4
  %158 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %148
  %160 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @VMCS_CR3_TARGET3, align 4
  %163 = call i32 @vm_get_vmcs_field(%struct.vmctx* %160, i32 %161, i32 %162, i32* %20)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %20, align 4
  %169 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %159
  br label %171

171:                                              ; preds = %170, %112, %106
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %192, label %174

174:                                              ; preds = %171
  %175 = load i64, i64* @get_pinbased_ctls, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load i64, i64* @get_all, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %177, %174
  %181 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @VMCS_PIN_BASED_CTLS, align 4
  %184 = call i32 @vm_get_vmcs_field(%struct.vmctx* %181, i32 %182, i32 %183, i32* %5)
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %187, %180
  br label %192

192:                                              ; preds = %191, %177, %171
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %213, label %195

195:                                              ; preds = %192
  %196 = load i64, i64* @get_procbased_ctls, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i64, i64* @get_all, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %198, %195
  %202 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @VMCS_PRI_PROC_BASED_CTLS, align 4
  %205 = call i32 @vm_get_vmcs_field(%struct.vmctx* %202, i32 %203, i32 %204, i32* %5)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %201
  br label %213

213:                                              ; preds = %212, %198, %192
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %234, label %216

216:                                              ; preds = %213
  %217 = load i64, i64* @get_procbased_ctls2, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i64, i64* @get_all, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %219, %216
  %223 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @VMCS_SEC_PROC_BASED_CTLS, align 4
  %226 = call i32 @vm_get_vmcs_field(%struct.vmctx* %223, i32 %224, i32 %225, i32* %5)
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* %5, align 4
  %232 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %229, %222
  br label %234

234:                                              ; preds = %233, %219, %213
  %235 = load i32, i32* %14, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %255, label %237

237:                                              ; preds = %234
  %238 = load i64, i64* @get_vmcs_gla, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = load i64, i64* @get_all, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %240, %237
  %244 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* @VMCS_GUEST_LINEAR_ADDRESS, align 4
  %247 = call i32 @vm_get_vmcs_field(%struct.vmctx* %244, i32 %245, i32 %246, i32* %13)
  store i32 %247, i32* %14, align 4
  %248 = load i32, i32* %14, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* %13, align 4
  %253 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %250, %243
  br label %255

255:                                              ; preds = %254, %240, %234
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %276, label %258

258:                                              ; preds = %255
  %259 = load i64, i64* @get_vmcs_gpa, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  %262 = load i64, i64* @get_all, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %276

264:                                              ; preds = %261, %258
  %265 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @VMCS_GUEST_PHYSICAL_ADDRESS, align 4
  %268 = call i32 @vm_get_vmcs_field(%struct.vmctx* %265, i32 %266, i32 %267, i32* %13)
  store i32 %268, i32* %14, align 4
  %269 = load i32, i32* %14, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %264
  %272 = load i32, i32* %4, align 4
  %273 = load i32, i32* %13, align 4
  %274 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %271, %264
  br label %276

276:                                              ; preds = %275, %261, %255
  %277 = load i32, i32* %14, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %297, label %279

279:                                              ; preds = %276
  %280 = load i64, i64* @get_vmcs_entry_interruption_info, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %279
  %283 = load i64, i64* @get_all, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %282, %279
  %286 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* @VMCS_ENTRY_INTR_INFO, align 4
  %289 = call i32 @vm_get_vmcs_field(%struct.vmctx* %286, i32 %287, i32 %288, i32* %13)
  store i32 %289, i32* %14, align 4
  %290 = load i32, i32* %14, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %285
  %293 = load i32, i32* %4, align 4
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %285
  br label %297

297:                                              ; preds = %296, %282, %276
  %298 = load i32, i32* %14, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %318, label %300

300:                                              ; preds = %297
  %301 = load i64, i64* @get_tpr_threshold, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i64, i64* @get_all, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %303, %300
  %307 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* @VMCS_TPR_THRESHOLD, align 4
  %310 = call i32 @vm_get_vmcs_field(%struct.vmctx* %307, i32 %308, i32 %309, i32* %21)
  store i32 %310, i32* %14, align 4
  %311 = load i32, i32* %14, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %306
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* %21, align 4
  %316 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %313, %306
  br label %318

318:                                              ; preds = %317, %303, %297
  %319 = load i32, i32* %14, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %339, label %321

321:                                              ; preds = %318
  %322 = load i64, i64* @get_inst_err, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = load i64, i64* @get_all, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %324, %321
  %328 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %329 = load i32, i32* %4, align 4
  %330 = load i32, i32* @VMCS_INSTRUCTION_ERROR, align 4
  %331 = call i32 @vm_get_vmcs_field(%struct.vmctx* %328, i32 %329, i32 %330, i32* %22)
  store i32 %331, i32* %14, align 4
  %332 = load i32, i32* %14, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %327
  %335 = load i32, i32* %4, align 4
  %336 = load i32, i32* %22, align 4
  %337 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %335, i32 %336)
  br label %338

338:                                              ; preds = %334, %327
  br label %339

339:                                              ; preds = %338, %324, %318
  %340 = load i32, i32* %14, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %360, label %342

342:                                              ; preds = %339
  %343 = load i64, i64* @get_exit_ctls, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  %346 = load i64, i64* @get_all, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %360

348:                                              ; preds = %345, %342
  %349 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %350 = load i32, i32* %4, align 4
  %351 = load i32, i32* @VMCS_EXIT_CTLS, align 4
  %352 = call i32 @vm_get_vmcs_field(%struct.vmctx* %349, i32 %350, i32 %351, i32* %5)
  store i32 %352, i32* %14, align 4
  %353 = load i32, i32* %14, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %348
  %356 = load i32, i32* %4, align 4
  %357 = load i32, i32* %5, align 4
  %358 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %356, i32 %357)
  br label %359

359:                                              ; preds = %355, %348
  br label %360

360:                                              ; preds = %359, %345, %339
  %361 = load i32, i32* %14, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %381, label %363

363:                                              ; preds = %360
  %364 = load i64, i64* @get_entry_ctls, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %363
  %367 = load i64, i64* @get_all, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %381

369:                                              ; preds = %366, %363
  %370 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %371 = load i32, i32* %4, align 4
  %372 = load i32, i32* @VMCS_ENTRY_CTLS, align 4
  %373 = call i32 @vm_get_vmcs_field(%struct.vmctx* %370, i32 %371, i32 %372, i32* %5)
  store i32 %373, i32* %14, align 4
  %374 = load i32, i32* %14, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %369
  %377 = load i32, i32* %4, align 4
  %378 = load i32, i32* %5, align 4
  %379 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %377, i32 %378)
  br label %380

380:                                              ; preds = %376, %369
  br label %381

381:                                              ; preds = %380, %366, %360
  %382 = load i32, i32* %14, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %402, label %384

384:                                              ; preds = %381
  %385 = load i64, i64* @get_host_pat, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %390, label %387

387:                                              ; preds = %384
  %388 = load i64, i64* @get_all, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %402

390:                                              ; preds = %387, %384
  %391 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %392 = load i32, i32* %4, align 4
  %393 = load i32, i32* @VMCS_HOST_IA32_PAT, align 4
  %394 = call i32 @vm_get_vmcs_field(%struct.vmctx* %391, i32 %392, i32 %393, i32* %11)
  store i32 %394, i32* %14, align 4
  %395 = load i32, i32* %14, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %390
  %398 = load i32, i32* %4, align 4
  %399 = load i32, i32* %11, align 4
  %400 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %398, i32 %399)
  br label %401

401:                                              ; preds = %397, %390
  br label %402

402:                                              ; preds = %401, %387, %381
  %403 = load i32, i32* %14, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %423, label %405

405:                                              ; preds = %402
  %406 = load i64, i64* @get_host_cr0, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %405
  %409 = load i64, i64* @get_all, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %423

411:                                              ; preds = %408, %405
  %412 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %413 = load i32, i32* %4, align 4
  %414 = load i32, i32* @VMCS_HOST_CR0, align 4
  %415 = call i32 @vm_get_vmcs_field(%struct.vmctx* %412, i32 %413, i32 %414, i32* %6)
  store i32 %415, i32* %14, align 4
  %416 = load i32, i32* %14, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %411
  %419 = load i32, i32* %4, align 4
  %420 = load i32, i32* %6, align 4
  %421 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %419, i32 %420)
  br label %422

422:                                              ; preds = %418, %411
  br label %423

423:                                              ; preds = %422, %408, %402
  %424 = load i32, i32* %14, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %444, label %426

426:                                              ; preds = %423
  %427 = load i64, i64* @get_host_cr3, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %426
  %430 = load i64, i64* @get_all, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %444

432:                                              ; preds = %429, %426
  %433 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %434 = load i32, i32* %4, align 4
  %435 = load i32, i32* @VMCS_HOST_CR3, align 4
  %436 = call i32 @vm_get_vmcs_field(%struct.vmctx* %433, i32 %434, i32 %435, i32* %7)
  store i32 %436, i32* %14, align 4
  %437 = load i32, i32* %14, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %432
  %440 = load i32, i32* %4, align 4
  %441 = load i32, i32* %7, align 4
  %442 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %440, i32 %441)
  br label %443

443:                                              ; preds = %439, %432
  br label %444

444:                                              ; preds = %443, %429, %423
  %445 = load i32, i32* %14, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %465, label %447

447:                                              ; preds = %444
  %448 = load i64, i64* @get_host_cr4, align 8
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %453, label %450

450:                                              ; preds = %447
  %451 = load i64, i64* @get_all, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %465

453:                                              ; preds = %450, %447
  %454 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %455 = load i32, i32* %4, align 4
  %456 = load i32, i32* @VMCS_HOST_CR4, align 4
  %457 = call i32 @vm_get_vmcs_field(%struct.vmctx* %454, i32 %455, i32 %456, i32* %8)
  store i32 %457, i32* %14, align 4
  %458 = load i32, i32* %14, align 4
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %453
  %461 = load i32, i32* %4, align 4
  %462 = load i32, i32* %8, align 4
  %463 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 %461, i32 %462)
  br label %464

464:                                              ; preds = %460, %453
  br label %465

465:                                              ; preds = %464, %450, %444
  %466 = load i32, i32* %14, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %486, label %468

468:                                              ; preds = %465
  %469 = load i64, i64* @get_host_rip, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %468
  %472 = load i64, i64* @get_all, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %486

474:                                              ; preds = %471, %468
  %475 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %476 = load i32, i32* %4, align 4
  %477 = load i32, i32* @VMCS_HOST_RIP, align 4
  %478 = call i32 @vm_get_vmcs_field(%struct.vmctx* %475, i32 %476, i32 %477, i32* %10)
  store i32 %478, i32* %14, align 4
  %479 = load i32, i32* %14, align 4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %474
  %482 = load i32, i32* %4, align 4
  %483 = load i32, i32* %10, align 4
  %484 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 %482, i32 %483)
  br label %485

485:                                              ; preds = %481, %474
  br label %486

486:                                              ; preds = %485, %471, %465
  %487 = load i32, i32* %14, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %507, label %489

489:                                              ; preds = %486
  %490 = load i64, i64* @get_host_rsp, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %495, label %492

492:                                              ; preds = %489
  %493 = load i64, i64* @get_all, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %507

495:                                              ; preds = %492, %489
  %496 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %497 = load i32, i32* %4, align 4
  %498 = load i32, i32* @VMCS_HOST_RSP, align 4
  %499 = call i32 @vm_get_vmcs_field(%struct.vmctx* %496, i32 %497, i32 %498, i32* %9)
  store i32 %499, i32* %14, align 4
  %500 = load i32, i32* %14, align 4
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %495
  %503 = load i32, i32* %4, align 4
  %504 = load i32, i32* %9, align 4
  %505 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32 %503, i32 %504)
  br label %506

506:                                              ; preds = %502, %495
  br label %507

507:                                              ; preds = %506, %492, %486
  %508 = load i32, i32* %14, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %528, label %510

510:                                              ; preds = %507
  %511 = load i64, i64* @get_vmcs_link, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %516, label %513

513:                                              ; preds = %510
  %514 = load i64, i64* @get_all, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %528

516:                                              ; preds = %513, %510
  %517 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %518 = load i32, i32* %4, align 4
  %519 = load i32, i32* @VMCS_LINK_POINTER, align 4
  %520 = call i32 @vm_get_vmcs_field(%struct.vmctx* %517, i32 %518, i32 %519, i32* %12)
  store i32 %520, i32* %14, align 4
  %521 = load i32, i32* %14, align 4
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %527

523:                                              ; preds = %516
  %524 = load i32, i32* %4, align 4
  %525 = load i32, i32* %12, align 4
  %526 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 %524, i32 %525)
  br label %527

527:                                              ; preds = %523, %516
  br label %528

528:                                              ; preds = %527, %513, %507
  %529 = load i32, i32* %14, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %549, label %531

531:                                              ; preds = %528
  %532 = load i64, i64* @get_vmcs_exit_interruption_info, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %537, label %534

534:                                              ; preds = %531
  %535 = load i64, i64* @get_all, align 8
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %549

537:                                              ; preds = %534, %531
  %538 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %539 = load i32, i32* %4, align 4
  %540 = load i32, i32* @VMCS_EXIT_INTR_INFO, align 4
  %541 = call i32 @vm_get_vmcs_field(%struct.vmctx* %538, i32 %539, i32 %540, i32* %13)
  store i32 %541, i32* %14, align 4
  %542 = load i32, i32* %14, align 4
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %548

544:                                              ; preds = %537
  %545 = load i32, i32* %4, align 4
  %546 = load i32, i32* %13, align 4
  %547 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i32 %545, i32 %546)
  br label %548

548:                                              ; preds = %544, %537
  br label %549

549:                                              ; preds = %548, %534, %528
  %550 = load i32, i32* %14, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %570, label %552

552:                                              ; preds = %549
  %553 = load i64, i64* @get_vmcs_exit_interruption_error, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %558, label %555

555:                                              ; preds = %552
  %556 = load i64, i64* @get_all, align 8
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %570

558:                                              ; preds = %555, %552
  %559 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %560 = load i32, i32* %4, align 4
  %561 = load i32, i32* @VMCS_EXIT_INTR_ERRCODE, align 4
  %562 = call i32 @vm_get_vmcs_field(%struct.vmctx* %559, i32 %560, i32 %561, i32* %13)
  store i32 %562, i32* %14, align 4
  %563 = load i32, i32* %14, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %569

565:                                              ; preds = %558
  %566 = load i32, i32* %4, align 4
  %567 = load i32, i32* %13, align 4
  %568 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 %566, i32 %567)
  br label %569

569:                                              ; preds = %565, %558
  br label %570

570:                                              ; preds = %569, %555, %549
  %571 = load i32, i32* %14, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %591, label %573

573:                                              ; preds = %570
  %574 = load i64, i64* @get_vmcs_interruptibility, align 8
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %579, label %576

576:                                              ; preds = %573
  %577 = load i64, i64* @get_all, align 8
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %591

579:                                              ; preds = %576, %573
  %580 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %581 = load i32, i32* %4, align 4
  %582 = load i32, i32* @VMCS_GUEST_INTERRUPTIBILITY, align 4
  %583 = call i32 @vm_get_vmcs_field(%struct.vmctx* %580, i32 %581, i32 %582, i32* %13)
  store i32 %583, i32* %14, align 4
  %584 = load i32, i32* %14, align 4
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %590

586:                                              ; preds = %579
  %587 = load i32, i32* %4, align 4
  %588 = load i32, i32* %13, align 4
  %589 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i32 %587, i32 %588)
  br label %590

590:                                              ; preds = %586, %579
  br label %591

591:                                              ; preds = %590, %576, %570
  %592 = load i32, i32* %14, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %612, label %594

594:                                              ; preds = %591
  %595 = load i64, i64* @get_vmcs_exit_inst_length, align 8
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %600, label %597

597:                                              ; preds = %594
  %598 = load i64, i64* @get_all, align 8
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %612

600:                                              ; preds = %597, %594
  %601 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %602 = load i32, i32* %4, align 4
  %603 = load i32, i32* @VMCS_EXIT_INSTRUCTION_LENGTH, align 4
  %604 = call i32 @vm_get_vmcs_field(%struct.vmctx* %601, i32 %602, i32 %603, i32* %13)
  store i32 %604, i32* %14, align 4
  %605 = load i32, i32* %14, align 4
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %611

607:                                              ; preds = %600
  %608 = load i32, i32* %4, align 4
  %609 = load i32, i32* %13, align 4
  %610 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i32 %608, i32 %609)
  br label %611

611:                                              ; preds = %607, %600
  br label %612

612:                                              ; preds = %611, %597, %591
  %613 = load i32, i32* %14, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %633, label %615

615:                                              ; preds = %612
  %616 = load i64, i64* @get_vmcs_exit_qualification, align 8
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %621, label %618

618:                                              ; preds = %615
  %619 = load i64, i64* @get_all, align 8
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %633

621:                                              ; preds = %618, %615
  %622 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %623 = load i32, i32* %4, align 4
  %624 = load i32, i32* @VMCS_EXIT_QUALIFICATION, align 4
  %625 = call i32 @vm_get_vmcs_field(%struct.vmctx* %622, i32 %623, i32 %624, i32* %13)
  store i32 %625, i32* %14, align 4
  %626 = load i32, i32* %14, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %632

628:                                              ; preds = %621
  %629 = load i32, i32* %4, align 4
  %630 = load i32, i32* %13, align 4
  %631 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i32 %629, i32 %630)
  br label %632

632:                                              ; preds = %628, %621
  br label %633

633:                                              ; preds = %632, %618, %612
  %634 = load i32, i32* %14, align 4
  ret i32 %634
}

declare dso_local i32 @vm_get_vmcs_field(%struct.vmctx*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
