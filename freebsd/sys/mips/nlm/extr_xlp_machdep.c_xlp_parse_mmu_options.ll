; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_parse_mmu_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_parse_mmu_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xlp_hw_thread_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"WARNING: Starting uniprocessor kernel on cpumask [0x%lx]!\0AWARNING: Other CPUs will be unused.\0A\00", align 1
@xlp_ncores = common dso_local global i32 0, align 4
@xlp_threads_per_core = common dso_local global i32 0, align 4
@xlp_mmuval = common dso_local global i32 0, align 4
@SYS_CPU_RESET = common dso_local global i32 0, align 4
@CHIP_PROCESSOR_ID_XLP_416 = common dso_local global i64 0, align 8
@XLP_MAX_CORES = common dso_local global i32 0, align 4
@MAXCPU = common dso_local global i32 0, align 4
@xlp_hwtid_to_cpuid = common dso_local global i32* null, align 8
@xlp_cpuid_to_hwtid = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [110 x i8] c"ERROR : Unsupported CPU mask [use 1,2 or 4 threads per core].\0A\09core0 thread mask [%lx], boot cpu mask [%lx].\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid CPU mask - halting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xlp_parse_mmu_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_parse_mmu_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @xlp_hw_thread_mask, align 4
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  br label %20

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %19, %12
  store i32 1, i32* @xlp_ncores, align 4
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %27 [
    i32 1, label %24
    i32 3, label %25
    i32 15, label %26
  ]

24:                                               ; preds = %20
  store i32 1, i32* @xlp_threads_per_core, align 4
  store i32 0, i32* @xlp_mmuval, align 4
  br label %28

25:                                               ; preds = %20
  store i32 2, i32* @xlp_threads_per_core, align 4
  store i32 2, i32* @xlp_mmuval, align 4
  br label %28

26:                                               ; preds = %20
  store i32 4, i32* @xlp_threads_per_core, align 4
  store i32 3, i32* @xlp_mmuval, align 4
  br label %28

27:                                               ; preds = %20
  br label %148

28:                                               ; preds = %26, %25, %24
  %29 = call i32 @nlm_get_sys_regbase(i32 0)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @SYS_CPU_RESET, align 4
  %32 = call i32 @nlm_read_sys_reg(i32 %30, i32 %31)
  %33 = and i32 %32, 255
  store i32 %33, i32* %5, align 4
  %34 = call i64 (...) @nlm_processor_id()
  %35 = load i64, i64* @CHIP_PROCESSOR_ID_XLP_416, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 14, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %28
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @XLP_MAX_CORES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 4, %50
  %52 = shl i32 15, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %2, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %39

60:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @XLP_MAX_CORES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %6, align 4
  %68 = mul nsw i32 4, %67
  %69 = ashr i32 %66, %68
  %70 = and i32 %69, 15
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %82

74:                                               ; preds = %65
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %148

79:                                               ; preds = %74
  %80 = load i32, i32* @xlp_ncores, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @xlp_ncores, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %61

85:                                               ; preds = %61
  %86 = load i32, i32* %2, align 4
  store i32 %86, i32* @xlp_hw_thread_mask, align 4
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %100, %85
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @MAXCPU, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i32*, i32** @xlp_hwtid_to_cpuid, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 -1, i32* %95, align 4
  %96 = load i32*, i32** @xlp_cpuid_to_hwtid, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 -1, i32* %99, align 4
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %87

103:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %144, %103
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @XLP_MAX_CORES, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %147

108:                                              ; preds = %104
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 %110, 4
  %112 = ashr i32 %109, %111
  %113 = and i32 %112, 15
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %144

116:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %140, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @xlp_threads_per_core, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = load i32, i32* %6, align 4
  %123 = mul nsw i32 %122, 4
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32*, i32** @xlp_cpuid_to_hwtid, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32*, i32** @xlp_hwtid_to_cpuid, align 8
  %132 = load i32, i32* %6, align 4
  %133 = mul nsw i32 %132, 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  store i32 %130, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %121
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %117

143:                                              ; preds = %117
  br label %144

144:                                              ; preds = %143, %115
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %104

147:                                              ; preds = %104
  br label %153

148:                                              ; preds = %78, %27
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* %2, align 4
  %151 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %150)
  %152 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %148, %147
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @nlm_get_sys_regbase(i32) #1

declare dso_local i32 @nlm_read_sys_reg(i32, i32) #1

declare dso_local i64 @nlm_processor_id(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
