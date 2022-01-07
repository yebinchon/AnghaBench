; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_x86.c_pmc_md_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_x86.c_pmc_md_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_mdep = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@PMC_CLASS_INDEX_SOFT = common dso_local global i32 0, align 4
@PMC_CAP_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmc_mdep* @pmc_md_initialize() #0 {
  %1 = alloca %struct.pmc_mdep*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmc_mdep*, align 8
  %4 = load i64, i64* @cpu_vendor_id, align 8
  %5 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call %struct.pmc_mdep* (...) @pmc_amd_initialize()
  store %struct.pmc_mdep* %8, %struct.pmc_mdep** %3, align 8
  br label %17

9:                                                ; preds = %0
  %10 = load i64, i64* @cpu_vendor_id, align 8
  %11 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call %struct.pmc_mdep* (...) @pmc_intel_initialize()
  store %struct.pmc_mdep* %14, %struct.pmc_mdep** %3, align 8
  br label %16

15:                                               ; preds = %9
  store %struct.pmc_mdep* null, %struct.pmc_mdep** %1, align 8
  br label %53

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %7
  %18 = load %struct.pmc_mdep*, %struct.pmc_mdep** %3, align 8
  %19 = icmp ne %struct.pmc_mdep* %18, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = call i32 (...) @lapic_enable_pmc()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.pmc_mdep*, %struct.pmc_mdep** %3, align 8
  %27 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @PMC_CLASS_INDEX_SOFT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %47

35:                                               ; preds = %30
  %36 = load i32, i32* @PMC_CAP_INTERRUPT, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.pmc_mdep*, %struct.pmc_mdep** %3, align 8
  %39 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %37
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %35, %34
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %24

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50, %20, %17
  %52 = load %struct.pmc_mdep*, %struct.pmc_mdep** %3, align 8
  store %struct.pmc_mdep* %52, %struct.pmc_mdep** %1, align 8
  br label %53

53:                                               ; preds = %51, %15
  %54 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  ret %struct.pmc_mdep* %54
}

declare dso_local %struct.pmc_mdep* @pmc_amd_initialize(...) #1

declare dso_local %struct.pmc_mdep* @pmc_intel_initialize(...) #1

declare dso_local i32 @lapic_enable_pmc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
