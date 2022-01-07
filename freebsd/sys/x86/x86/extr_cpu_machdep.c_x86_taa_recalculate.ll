; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_x86_taa_recalculate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_x86_taa_recalculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x86_taa_recalculate.taa_saved_mds_disable = internal global i32 0, align 4
@cpu_stdext_feature = common dso_local global i32 0, align 4
@CPUID_STDEXT_HLE = common dso_local global i32 0, align 4
@CPUID_STDEXT_RTM = common dso_local global i32 0, align 4
@x86_taa_state = common dso_local global i32 0, align 4
@cpu_ia32_arch_caps = common dso_local global i32 0, align 4
@IA32_ARCH_CAP_TAA_NO = common dso_local global i32 0, align 4
@TAA_NONE = common dso_local global i32 0, align 4
@TAA_TAA_NO = common dso_local global i32 0, align 4
@IA32_ARCH_CAP_TSX_CTRL = common dso_local global i32 0, align 4
@TAA_TSX_DISABLE = common dso_local global i32 0, align 4
@x86_taa_enable = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"TSX control not available\0A\00", align 1
@TAA_VERW = common dso_local global i32 0, align 4
@TAA_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No TSX change made\0A\00", align 1
@hw_mds_disable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot change MDS state for TAA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_taa_recalculate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @cpu_stdext_feature, align 4
  %6 = load i32, i32* @CPUID_STDEXT_HLE, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @cpu_stdext_feature, align 4
  %11 = load i32, i32* @CPUID_STDEXT_RTM, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %0
  store i32 0, i32* @x86_taa_state, align 4
  br label %105

15:                                               ; preds = %9
  %16 = load i32, i32* @cpu_ia32_arch_caps, align 4
  %17 = load i32, i32* @IA32_ARCH_CAP_TAA_NO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @TAA_NONE, align 4
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @TAA_TAA_NO, align 4
  store i32 %22, i32* %2, align 4
  br label %44

23:                                               ; preds = %15
  %24 = load i32, i32* @cpu_ia32_arch_caps, align 4
  %25 = load i32, i32* @IA32_ARCH_CAP_TSX_CTRL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @TAA_TSX_DISABLE, align 4
  store i32 %29, i32* %1, align 4
  br label %43

30:                                               ; preds = %23
  %31 = load i32, i32* @x86_taa_enable, align 4
  %32 = load i32, i32* @TAA_TSX_DISABLE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  br label %105

40:                                               ; preds = %30
  %41 = load i32, i32* @TAA_VERW, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i32, i32* @x86_taa_enable, align 4
  %46 = load i32, i32* @TAA_AUTO, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %1, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @x86_taa_enable, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @x86_taa_state, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i64, i64* @bootverbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  br label %105

62:                                               ; preds = %52
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @TAA_TSX_DISABLE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @taa_set(i32 1, i32 1)
  br label %75

68:                                               ; preds = %62
  %69 = load i32, i32* @x86_taa_state, align 4
  %70 = load i32, i32* @TAA_TSX_DISABLE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @taa_set(i32 0, i32 1)
  br label %74

74:                                               ; preds = %72, %68
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @TAA_VERW, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @hw_mds_disable, align 4
  store i32 %80, i32* @x86_taa_recalculate.taa_saved_mds_disable, align 4
  store i32 1, i32* @hw_mds_disable, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %88

81:                                               ; preds = %75
  %82 = load i32, i32* @x86_taa_state, align 4
  %83 = load i32, i32* @TAA_VERW, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @x86_taa_recalculate.taa_saved_mds_disable, align 4
  store i32 %86, i32* @hw_mds_disable, align 4
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %81
  br label %88

88:                                               ; preds = %87, %79
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = call i32 (...) @hw_mds_recalculate()
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @hw_mds_disable, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i64, i64* @bootverbose, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  br label %105

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %88
  %104 = load i32, i32* %2, align 4
  store i32 %104, i32* @x86_taa_state, align 4
  br label %105

105:                                              ; preds = %103, %101, %61, %39, %14
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @taa_set(i32, i32) #1

declare dso_local i32 @hw_mds_recalculate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
