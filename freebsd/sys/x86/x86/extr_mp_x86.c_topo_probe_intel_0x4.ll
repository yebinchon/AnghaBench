; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_topo_probe_intel_0x4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_topo_probe_intel_0x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_feature = common dso_local global i32 0, align 4
@CPUID_HTT = common dso_local global i32 0, align 4
@cpu_procinfo = common dso_local global i32 0, align 4
@CPUID_HTT_CORES = common dso_local global i32 0, align 4
@cpu_high = common dso_local global i32 0, align 4
@core_id_shift = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"intel topo: max_cores > max_logical\0A\00", align 1
@pkg_id_shift = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @topo_probe_intel_0x4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @topo_probe_intel_0x4() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @cpu_feature, align 4
  %5 = load i32, i32* @CPUID_HTT, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @cpu_procinfo, align 4
  %10 = load i32, i32* @CPUID_HTT_CORES, align 4
  %11 = and i32 %9, %10
  %12 = ashr i32 %11, 16
  br label %14

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i32 [ %12, %8 ], [ 1, %13 ]
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %44

19:                                               ; preds = %14
  %20 = load i32, i32* @cpu_high, align 4
  %21 = icmp sge i32 %20, 4
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %24 = call i32 @cpuid_count(i32 4, i32 0, i32* %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = ashr i32 %26, 26
  %28 = and i32 %27, 63
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sdiv i32 %32, %33
  %35 = call i64 @mask_width(i32 %34)
  store i64 %35, i64* @core_id_shift, align 8
  %36 = load i64, i64* @core_id_shift, align 8
  %37 = icmp sge i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @core_id_shift, align 8
  %41 = load i32, i32* %2, align 4
  %42 = call i64 @mask_width(i32 %41)
  %43 = add nsw i64 %40, %42
  store i64 %43, i64* @pkg_id_shift, align 8
  br label %44

44:                                               ; preds = %31, %18
  ret void
}

declare dso_local i32 @cpuid_count(i32, i32, i32*) #1

declare dso_local i64 @mask_width(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
