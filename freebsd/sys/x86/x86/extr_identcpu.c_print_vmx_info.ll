; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_vmx_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_vmx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"\0A  VT-x: \00", align 1
@MSR_IA32_FEATURE_CONTROL = common dso_local global i32 0, align 4
@IA32_FEATURE_CONTROL_VMX_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"(disabled in BIOS) \00", align 1
@MSR_VMX_BASIC = common dso_local global i32 0, align 4
@MSR_VMX_PINBASED_CTLS = common dso_local global i32 0, align 4
@MSR_VMX_TRUE_PINBASED_CTLS = common dso_local global i32 0, align 4
@MSR_VMX_PROCBASED_CTLS = common dso_local global i32 0, align 4
@MSR_VMX_TRUE_PROCBASED_CTLS = common dso_local global i32 0, align 4
@PROCBASED_SECONDARY_CONTROLS = common dso_local global i32 0, align 4
@MSR_VMX_PROCBASED_CTLS2 = common dso_local global i32 0, align 4
@MSR_VMX_EXIT_CTLS = common dso_local global i32 0, align 4
@MSR_VMX_TRUE_EXIT_CTLS = common dso_local global i32 0, align 4
@MSR_VMX_ENTRY_CTLS = common dso_local global i32 0, align 4
@MSR_VMX_TRUE_ENTRY_CTLS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@VM_EXIT_SAVE_PAT = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_PAT = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_PAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%sPAT\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PROCBASED_HLT_EXITING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%sHLT\00", align 1
@PROCBASED_MTF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%sMTF\00", align 1
@PROCBASED_PAUSE_EXITING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%sPAUSE\00", align 1
@PROCBASED2_ENABLE_EPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"%sEPT\00", align 1
@PROCBASED2_UNRESTRICTED_GUEST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"%sUG\00", align 1
@PROCBASED2_ENABLE_VPID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"%sVPID\00", align 1
@PROCBASED_USE_TPR_SHADOW = common dso_local global i32 0, align 4
@PROCBASED2_VIRTUALIZE_APIC_ACCESSES = common dso_local global i32 0, align 4
@PROCBASED2_VIRTUALIZE_X2APIC_MODE = common dso_local global i32 0, align 4
@PROCBASED2_APIC_REGISTER_VIRTUALIZATION = common dso_local global i32 0, align 4
@PROCBASED2_VIRTUAL_INTERRUPT_DELIVERY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"%sVID\00", align 1
@PINBASED_POSTED_INTERRUPT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c",PostIntr\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Basic Features=0x%b\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"\10\1132PA\12SMM\17INS/OUTS\18TRUE\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\0A        Pin-Based Controls=0x%b\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"\10\01ExtINT\04NMI\06VNMI\07PreTmr\08PostIntr\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"\0A        Primary Processor Controls=0x%b\00", align 1
@.str.18 = private unnamed_addr constant [125 x i8] c"\10\03INTWIN\04TSCOff\08HLT\0AINVLPG\0BMWAIT\0CRDPMC\0DRDTSC\10CR3-LD\11CR3-ST\14CR8-LD\15CR8-ST\16TPR\17NMIWIN\18MOV-DR\19IO\1AIOmap\1CMTF\1DMSRmap\1EMONITOR\1FPAUSE\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"\0A        Secondary Processor Controls=0x%b\00", align 1
@.str.20 = private unnamed_addr constant [108 x i8] c"\10\01APIC\02EPT\03DT\04RDTSCP\05x2APIC\06VPID\07WBINVD\08UG\09APIC-reg\0AVID\0BPAUSE-loop\0CRDRAND\0DINVPCID\0EVMFUNC\0FVMCS\10EPT#VE\11XSAVES\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"\0A        Exit Controls=0x%b\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"\10\03DR\0DPERF\10AckInt\13PAT-SV\14PAT-LD\15EFER-SV\16EFER-LD\17PTMR-SV\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"\0A        Entry Controls=0x%b\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"\10\03DR\0EPERF\0FPAT\10EFER\00", align 1
@MSR_VMX_EPT_VPID_CAP = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [27 x i8] c"\0A        EPT Features=0x%b\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"\10\01XO\07PW4\09UC\0FWB\112M\121G\15INVEPT\16AD\1Asingle\1Ball\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"\0A        VPID Features=0x%b\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"\10\01INVVPID\09individual\0Asingle\0Ball\0Csingle-globals\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_vmx_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_vmx_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @MSR_IA32_FEATURE_CONTROL, align 4
  %12 = call i32 @rdmsr(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @IA32_FEATURE_CONTROL_VMX_EN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %0
  %20 = load i32, i32* @MSR_VMX_BASIC, align 4
  %21 = call i32 @rdmsr(i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @MSR_VMX_PINBASED_CTLS, align 4
  %24 = load i32, i32* @MSR_VMX_TRUE_PINBASED_CTLS, align 4
  %25 = call i32 @vmx_settable(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @MSR_VMX_PROCBASED_CTLS, align 4
  %28 = load i32, i32* @MSR_VMX_TRUE_PROCBASED_CTLS, align 4
  %29 = call i32 @vmx_settable(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PROCBASED_SECONDARY_CONTROLS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @MSR_VMX_PROCBASED_CTLS2, align 4
  %37 = load i32, i32* @MSR_VMX_PROCBASED_CTLS2, align 4
  %38 = call i32 @vmx_settable(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %40

39:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @MSR_VMX_EXIT_CTLS, align 4
  %43 = load i32, i32* @MSR_VMX_TRUE_EXIT_CTLS, align 4
  %44 = call i32 @vmx_settable(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @MSR_VMX_ENTRY_CTLS, align 4
  %47 = load i32, i32* @MSR_VMX_TRUE_ENTRY_CTLS, align 4
  %48 = call i32 @vmx_settable(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @bootverbose, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %177, label %51

51:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @VM_EXIT_SAVE_PAT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @VM_EXIT_LOAD_PAT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @VM_ENTRY_LOAD_PAT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %66, %61, %56, %51
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @PROCBASED_HLT_EXITING, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @PROCBASED_MTF, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  store i32 1, i32* %9, align 4
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @PROCBASED_PAUSE_EXITING, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %103)
  store i32 1, i32* %9, align 4
  br label %105

105:                                              ; preds = %99, %94
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @PROCBASED2_ENABLE_EPT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %114)
  store i32 1, i32* %9, align 4
  br label %116

116:                                              ; preds = %110, %105
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @PROCBASED2_UNRESTRICTED_GUEST, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %125)
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @PROCBASED2_ENABLE_VPID, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %136)
  store i32 1, i32* %9, align 4
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @PROCBASED_USE_TPR_SHADOW, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %138
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @PROCBASED2_VIRTUALIZE_APIC_ACCESSES, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @PROCBASED2_VIRTUALIZE_X2APIC_MODE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @PROCBASED2_APIC_REGISTER_VIRTUALIZATION, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @PROCBASED2_VIRTUAL_INTERRUPT_DELIVERY, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %167)
  store i32 1, i32* %9, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @PINBASED_POSTED_INTERRUPT, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %163
  br label %176

176:                                              ; preds = %175, %158, %153, %148, %143, %138
  br label %219

177:                                              ; preds = %40
  %178 = load i32, i32* %1, align 4
  %179 = ashr i32 %178, 32
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %5, align 4
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %180, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %182 = load i32, i32* %6, align 4
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 %184, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.18, i64 0, i64 0))
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @PROCBASED_SECONDARY_CONTROLS, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %177
  %191 = load i32, i32* %8, align 4
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i32 %191, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.20, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %177
  %194 = load i32, i32* %5, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %194, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0))
  %196 = load i32, i32* %5, align 4
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %196, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @PROCBASED_SECONDARY_CONTROLS, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %193
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @PROCBASED2_ENABLE_EPT, align 4
  %205 = load i32, i32* @PROCBASED2_ENABLE_VPID, align 4
  %206 = or i32 %204, %205
  %207 = and i32 %203, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %202
  %210 = load i32, i32* @MSR_VMX_EPT_VPID_CAP, align 4
  %211 = call i32 @rdmsr(i32 %210)
  store i32 %211, i32* %2, align 4
  %212 = load i32, i32* %2, align 4
  store i32 %212, i32* %5, align 4
  %213 = load i32, i32* %5, align 4
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 %213, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0))
  %215 = load i32, i32* %2, align 4
  %216 = ashr i32 %215, 32
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 %217, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0))
  br label %219

219:                                              ; preds = %176, %209, %202, %193
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @vmx_settable(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
