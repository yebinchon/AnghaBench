; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_finishidentcpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_finishidentcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_high = common dso_local global i32 0, align 4
@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_MON = common dso_local global i32 0, align 4
@cpu_mon_mwait_flags = common dso_local global i32 0, align 4
@CPUID5_MON_MIN_SIZE = common dso_local global i32 0, align 4
@cpu_mon_min_size = common dso_local global i32 0, align 4
@CPUID5_MON_MAX_SIZE = common dso_local global i32 0, align 4
@cpu_mon_max_size = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@CPU_VENDOR_CENTAUR = common dso_local global i64 0, align 8
@cpu_exthigh = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@amd_feature = common dso_local global i32 0, align 4
@amd_feature2 = common dso_local global i32 0, align 4
@amd_rascap = common dso_local global i32 0, align 4
@amd_pminfo = common dso_local global i32 0, align 4
@cpu_maxphyaddr = common dso_local global i32 0, align 4
@amd_extended_feature_extensions = common dso_local global i32 0, align 4
@cpu_procinfo2 = common dso_local global i32 0, align 4
@CPUID_PAE = common dso_local global i32 0, align 4
@CCR3 = common dso_local global i32 0, align 4
@CCR3_MAPEN0 = common dso_local global i32 0, align 4
@CCR4 = common dso_local global i32 0, align 4
@CCR4_CPUID = common dso_local global i32 0, align 4
@CPU_486 = common dso_local global i64 0, align 8
@CPU_486DLC = common dso_local global i64 0, align 8
@CPU_BLUE = common dso_local global i64 0, align 8
@CPU_CY486DX = common dso_local global i64 0, align 8
@CPU_M1 = common dso_local global i64 0, align 8
@CPU_M1SC = common dso_local global i64 0, align 8
@CPU_M2 = common dso_local global i64 0, align 8
@CPU_VENDOR_CYRIX = common dso_local global i64 0, align 8
@CPU_VENDOR_IBM = common dso_local global i64 0, align 8
@CPU_VENDOR_NSC = common dso_local global i64 0, align 8
@CPU_VENDOR_TRANSMETA = common dso_local global i64 0, align 8
@IDENTBLUE_IBMCPU = common dso_local global i64 0, align 8
@cpu = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@cpu_vendor = common dso_local global i8* null, align 8
@cyrix_did = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finishidentcpu() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = call i32 (...) @identify_cpu_fixup_bsp()
  %3 = load i32, i32* @cpu_high, align 4
  %4 = icmp sge i32 %3, 5
  br i1 %4, label %5, label %23

5:                                                ; preds = %0
  %6 = load i32, i32* @cpu_feature2, align 4
  %7 = load i32, i32* @CPUID2_MON, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %12 = call i32 @do_cpuid(i32 5, i32* %11)
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* @cpu_mon_mwait_flags, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = load i32, i32* @CPUID5_MON_MIN_SIZE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* @cpu_mon_min_size, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CPUID5_MON_MAX_SIZE, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* @cpu_mon_max_size, align 4
  br label %23

23:                                               ; preds = %10, %5, %0
  %24 = call i32 (...) @identify_cpu2()
  %25 = load i64, i64* @cpu_vendor_id, align 8
  %26 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @cpu_vendor_id, align 8
  %30 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @cpu_vendor_id, align 8
  %34 = load i64, i64* @CPU_VENDOR_CENTAUR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %28, %23
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %38 = call i32 @do_cpuid(i32 -2147483648, i32* %37)
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  store i32 %40, i32* @cpu_exthigh, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* @cpu_exthigh, align 4
  %43 = icmp uge i32 %42, -2147483647
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %46 = call i32 @do_cpuid(i32 -2147483647, i32* %45)
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @cpu_feature, align 4
  %50 = and i32 %49, 25424895
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  store i32 %52, i32* @amd_feature, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* @amd_feature2, align 4
  br label %55

55:                                               ; preds = %44, %41
  %56 = load i32, i32* @cpu_exthigh, align 4
  %57 = icmp uge i32 %56, -2147483641
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %60 = call i32 @do_cpuid(i32 -2147483641, i32* %59)
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @amd_rascap, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* @amd_pminfo, align 4
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32, i32* @cpu_exthigh, align 4
  %67 = icmp uge i32 %66, -2147483640
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %70 = call i32 @do_cpuid(i32 -2147483640, i32* %69)
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = and i32 %72, 255
  store i32 %73, i32* @cpu_maxphyaddr, align 4
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* @amd_extended_feature_extensions, align 4
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* @cpu_procinfo2, align 4
  br label %85

78:                                               ; preds = %65
  %79 = load i32, i32* @cpu_feature, align 4
  %80 = load i32, i32* @CPUID_PAE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 36, i32 32
  store i32 %84, i32* @cpu_maxphyaddr, align 4
  br label %85

85:                                               ; preds = %78, %68
  ret void
}

declare dso_local i32 @identify_cpu_fixup_bsp(...) #1

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @identify_cpu2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
