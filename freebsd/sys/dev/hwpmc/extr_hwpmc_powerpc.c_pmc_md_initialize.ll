; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_powerpc.c_pmc_md_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_powerpc.c_pmc_md_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_mdep = type { i32, i32 }

@M_PMC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@powerpc_pcpu = common dso_local global i32 0, align 4
@powerpc_switch_in = common dso_local global i32 0, align 4
@powerpc_switch_out = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmc_mdep* @pmc_md_initialize() #0 {
  %1 = alloca %struct.pmc_mdep*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @pmc_cpu_max()
  %5 = sext i32 %4 to i64
  %6 = mul i64 8, %5
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @M_PMC, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @malloc(i32 %7, i32 %8, i32 %11)
  store i32 %12, i32* @powerpc_pcpu, align 4
  %13 = call %struct.pmc_mdep* @pmc_mdep_alloc(i32 1)
  store %struct.pmc_mdep* %13, %struct.pmc_mdep** %1, align 8
  %14 = call i32 (...) @mfpvr()
  %15 = ashr i32 %14, 16
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @powerpc_switch_in, align 4
  %17 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %18 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @powerpc_switch_out, align 4
  %20 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %21 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  switch i32 %22, label %32 [
    i32 132, label %23
    i32 131, label %23
    i32 130, label %23
    i32 129, label %23
    i32 128, label %23
    i32 135, label %26
    i32 134, label %26
    i32 133, label %26
    i32 138, label %29
    i32 137, label %29
    i32 139, label %29
    i32 136, label %29
  ]

23:                                               ; preds = %0, %0, %0, %0, %0
  %24 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %25 = call i32 @pmc_mpc7xxx_initialize(%struct.pmc_mdep* %24)
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %0, %0, %0
  %27 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %28 = call i32 @pmc_ppc970_initialize(%struct.pmc_mdep* %27)
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %0, %0, %0, %0
  %30 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %31 = call i32 @pmc_e500_initialize(%struct.pmc_mdep* %30)
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %0
  store i32 -1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %26, %23
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %38 = call i32 @pmc_mdep_free(%struct.pmc_mdep* %37)
  store %struct.pmc_mdep* null, %struct.pmc_mdep** %1, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  ret %struct.pmc_mdep* %40
}

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @pmc_cpu_max(...) #1

declare dso_local %struct.pmc_mdep* @pmc_mdep_alloc(i32) #1

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @pmc_mpc7xxx_initialize(%struct.pmc_mdep*) #1

declare dso_local i32 @pmc_ppc970_initialize(%struct.pmc_mdep*) #1

declare dso_local i32 @pmc_e500_initialize(%struct.pmc_mdep*) #1

declare dso_local i32 @pmc_mdep_free(%struct.pmc_mdep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
