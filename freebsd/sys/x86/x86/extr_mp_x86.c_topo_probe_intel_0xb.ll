; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_topo_probe_intel_0xb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_topo_probe_intel_0xb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUID_TYPE_SMT = common dso_local global i32 0, align 4
@core_id_shift = common dso_local global i32 0, align 4
@CPUID_TYPE_CORE = common dso_local global i32 0, align 4
@pkg_id_shift = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown CPU level type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"WARNING: core covers more APIC IDs than a package\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @topo_probe_intel_0xb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @topo_probe_intel_0xb() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %6 = call i32 @cpuid_count(i32 11, i32 0, i32* %5)
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @topo_probe_intel_0x4()
  br label %54

12:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %44, %12
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %16 = call i32 @cpuid_count(i32 11, i32 %14, i32* %15)
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %18 = load i32, i32* %17, align 16
  %19 = and i32 %18, 31
  store i32 %19, i32* %2, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %47

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @CPUID_TYPE_SMT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* @core_id_shift, align 4
  br label %43

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CPUID_TYPE_CORE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* @pkg_id_shift, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %37
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %13

47:                                               ; preds = %26
  %48 = load i32, i32* @pkg_id_shift, align 4
  %49 = load i32, i32* @core_id_shift, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @pkg_id_shift, align 4
  store i32 %53, i32* @core_id_shift, align 4
  br label %54

54:                                               ; preds = %10, %51, %47
  ret void
}

declare dso_local i32 @cpuid_count(i32, i32, i32*) #1

declare dso_local i32 @topo_probe_intel_0x4(...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
