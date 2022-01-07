; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_hyperv.c_hyperv_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_hyperv.c_hyperv_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_HV = common dso_local global i64 0, align 8
@CPUID_LEAF_HV_MAXLEAF = common dso_local global i32 0, align 4
@CPUID_LEAF_HV_LIMITS = common dso_local global i32 0, align 4
@CPUID_LEAF_HV_INTERFACE = common dso_local global i32 0, align 4
@CPUID_HV_IFACE_HYPERV = common dso_local global i32 0, align 4
@CPUID_LEAF_HV_FEATURES = common dso_local global i32 0, align 4
@CPUID_HV_MSR_HYPERCALL = common dso_local global i32 0, align 4
@hyperv_features = common dso_local global i32 0, align 4
@hyperv_pm_features = common dso_local global i32 0, align 4
@hyperv_features3 = common dso_local global i32 0, align 4
@CPUID_LEAF_HV_IDENTITY = common dso_local global i32 0, align 4
@hyperv_ver_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Hyper-V Version: %d.%d.%d [SP%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"  Features=0x%b\0A\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"\10\01VPRUNTIME\02TMREFCNT\03SYNIC\04SYNTM\05APIC\06HYPERCALL\07VPINDEX\08RESET\09STATS\0AREFTSC\0BIDLE\0CTMFREQ\0DDEBUG\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  PM Features=0x%b [C%u]\0A\00", align 1
@CPUPM_HV_CSTATE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"\10\05C3HPET\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  Features3=0x%b\0A\00", align 1
@.str.6 = private unnamed_addr constant [93 x i8] c"\10\01MWAIT\02DEBUG\03PERFMON\04PCPUDPE\05XMMHC\06IDLE\07SLEEP\08NUMA\09TMFREQ\0ASYNCMC\0BCRASH\0CDEBUGMSR\0DNPIEP\0EHVDIS\00", align 1
@CPUID_LEAF_HV_RECOMMENDS = common dso_local global i32 0, align 4
@hyperv_recommends = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"  Recommends: %08x %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"  Limits: Vcpu:%d Lcpu:%d Int:%d\0A\00", align 1
@CPUID_LEAF_HV_HWFEATURES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"  HW Features: %08x, AMD: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hyperv_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hyperv_identify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  %4 = load i64, i64* @vm_guest, align 8
  %5 = load i64, i64* @VM_GUEST_HV, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %115

8:                                                ; preds = %0
  %9 = load i32, i32* @CPUID_LEAF_HV_MAXLEAF, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %11 = call i32 @do_cpuid(i32 %9, i32* %10)
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %13 = load i32, i32* %12, align 16
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CPUID_LEAF_HV_LIMITS, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %115

18:                                               ; preds = %8
  %19 = load i32, i32* @CPUID_LEAF_HV_INTERFACE, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %21 = call i32 @do_cpuid(i32 %19, i32* %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = load i32, i32* @CPUID_HV_IFACE_HYPERV, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %115

27:                                               ; preds = %18
  %28 = load i32, i32* @CPUID_LEAF_HV_FEATURES, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %30 = call i32 @do_cpuid(i32 %28, i32* %29)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = load i32, i32* @CPUID_HV_MSR_HYPERCALL, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %115

37:                                               ; preds = %27
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  store i32 %39, i32* @hyperv_features, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* @hyperv_pm_features, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @hyperv_features3, align 4
  %44 = load i32, i32* @CPUID_LEAF_HV_IDENTITY, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %46 = call i32 @do_cpuid(i32 %44, i32* %45)
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 16
  store i32 %49, i32* @hyperv_ver_major, align 4
  %50 = load i32, i32* @hyperv_ver_major, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 65535
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %55, i32 %57)
  %59 = load i32, i32* @hyperv_features, align 4
  %60 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @hyperv_pm_features, align 4
  %62 = load i32, i32* @CPUPM_HV_CSTATE_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load i32, i32* @hyperv_pm_features, align 4
  %66 = call i32 @CPUPM_HV_CSTATE(i32 %65)
  %67 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @hyperv_features3, align 4
  %69 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %68, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* @CPUID_LEAF_HV_RECOMMENDS, align 4
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %72 = call i32 @do_cpuid(i32 %70, i32* %71)
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %74 = load i32, i32* %73, align 16
  store i32 %74, i32* @hyperv_recommends, align 4
  %75 = load i64, i64* @bootverbose, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %37
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %77, %37
  %84 = load i32, i32* @CPUID_LEAF_HV_LIMITS, align 4
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %86 = call i32 @do_cpuid(i32 %84, i32* %85)
  %87 = load i64, i64* @bootverbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %91 = load i32, i32* %90, align 16
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %91, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %89, %83
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @CPUID_LEAF_HV_HWFEATURES, align 4
  %100 = icmp uge i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32, i32* @CPUID_LEAF_HV_HWFEATURES, align 4
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %104 = call i32 @do_cpuid(i32 %102, i32* %103)
  %105 = load i64, i64* @bootverbose, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %107, %101
  br label %114

114:                                              ; preds = %113, %97
  store i32 1, i32* %1, align 4
  br label %115

115:                                              ; preds = %114, %36, %26, %17, %7
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @CPUPM_HV_CSTATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
