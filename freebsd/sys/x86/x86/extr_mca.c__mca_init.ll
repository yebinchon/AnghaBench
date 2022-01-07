; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c__mca_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c__mca_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32, i32 }

@cpu_id = common dso_local global i32 0, align 4
@mca_enabled = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@CPUID_MCE = common dso_local global i32 0, align 4
@CPUID_MCA = common dso_local global i32 0, align 4
@cmci_mask = common dso_local global i32 0, align 4
@MSR_MCG_CAP = common dso_local global i32 0, align 4
@MCG_CAP_CTL_P = common dso_local global i32 0, align 4
@MSR_MCG_CTL = common dso_local global i32 0, align 4
@MCG_CTL_ENABLE = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@amd10h_L1TP = common dso_local global i32 0, align 4
@MSR_MC0_CTL_MASK = common dso_local global i32 0, align 4
@amd_rascap = common dso_local global i32 0, align 4
@AMDRAS_SCALABLE_MCA = common dso_local global i32 0, align 4
@mca_msr_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mca_smca_addr_reg = common dso_local global i32 0, align 4
@mca_smca_misc_reg = common dso_local global i32 0, align 4
@mca_lock = common dso_local global i32 0, align 4
@MCG_CAP_COUNT = common dso_local global i32 0, align 4
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@MC_AMDNB_BANK = common dso_local global i32 0, align 4
@CR4_MCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @_mca_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mca_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @cpu_id, align 4
  %10 = call i32 @CPUID_TO_FAMILY(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @mca_enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @cpu_feature, align 4
  %15 = load i32, i32* @CPUID_MCE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  br label %160

19:                                               ; preds = %13
  %20 = load i32, i32* @cpu_feature, align 4
  %21 = load i32, i32* @CPUID_MCA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %155

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @cmci_mask, align 4
  %29 = call i32 @PCPU_SET(i32 %28, i32 0)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @MSR_MCG_CAP, align 4
  %32 = call i32 @rdmsr(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MCG_CAP_CTL_P, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @MSR_MCG_CTL, align 4
  %39 = load i32, i32* @MCG_CTL_ENABLE, align 4
  %40 = call i32 @wrmsr(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %30
  %42 = call i64 (...) @IS_BSP()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @mca_setup(i32 %48)
  br label %50

50:                                               ; preds = %47, %44, %41
  %51 = load i64, i64* @cpu_vendor_id, align 8
  %52 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i32, i32* @amd10h_L1TP, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @MSR_MC0_CTL_MASK, align 4
  %62 = call i32 @rdmsr(i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %64, 32
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* @MSR_MC0_CTL_MASK, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = or i64 %70, 32
  %72 = trunc i64 %71 to i32
  %73 = call i32 @wrmsr(i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  br label %75

75:                                               ; preds = %74, %57, %54, %50
  %76 = load i32, i32* @amd_rascap, align 4
  %77 = load i32, i32* @AMDRAS_SCALABLE_MCA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  store i32 (i32)* @mca_smca_ctl_reg, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 1), align 8
  store i32 (i32)* @mca_smca_status_reg, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 0), align 8
  %81 = load i32, i32* @mca_smca_addr_reg, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 3), align 4
  %82 = load i32, i32* @mca_smca_misc_reg, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 2), align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %2, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @mtx_lock_spin(i32* @mca_lock)
  br label %88

88:                                               ; preds = %86, %83
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %146, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @MCG_CAP_COUNT, align 4
  %93 = and i32 %91, %92
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %149

95:                                               ; preds = %89
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %96 = load i64, i64* @cpu_vendor_id, align 8
  %97 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 6
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* @cpu_id, align 4
  %107 = call i32 @CPUID_TO_MODEL(i32 %106)
  %108 = icmp slt i32 %107, 26
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 1, i32* %7, align 4
  br label %110

110:                                              ; preds = %109, %105, %102, %99
  br label %132

111:                                              ; preds = %95
  %112 = load i64, i64* @cpu_vendor_id, align 8
  %113 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @MC_AMDNB_BANK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = icmp sge i32 %120, 15
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 23
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = and i64 %127, -1025
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %122, %119, %115
  br label %131

131:                                              ; preds = %130, %111
  br label %132

132:                                              ; preds = %131, %110
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 1), align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 %136(i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @wrmsr(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %132
  %142 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 0), align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 %142(i32 %143)
  %145 = call i32 @wrmsr(i32 %144, i32 0)
  br label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %89

149:                                              ; preds = %89
  %150 = load i32, i32* %2, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 @mtx_unlock_spin(i32* @mca_lock)
  br label %154

154:                                              ; preds = %152, %149
  br label %155

155:                                              ; preds = %154, %19
  %156 = call i32 (...) @rcr4()
  %157 = load i32, i32* @CR4_MCE, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @load_cr4(i32 %158)
  br label %160

160:                                              ; preds = %155, %18
  ret void
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i64 @IS_BSP(...) #1

declare dso_local i32 @mca_setup(i32) #1

declare dso_local i32 @mca_smca_ctl_reg(i32) #1

declare dso_local i32 @mca_smca_status_reg(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @load_cr4(i32) #1

declare dso_local i32 @rcr4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
