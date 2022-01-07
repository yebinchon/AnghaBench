; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_platform_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_platform_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_platform = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"bcm::platform_reset()\0A\00", align 1
@BHND_CHIPID_BCM4785 = common dso_local global i64 0, align 8
@BMIPS_BCMCFG_PLLCFG3_SM = common dso_local global i32 0, align 4
@BHND_PMU_WATCHDOG = common dso_local global i32 0, align 4
@CHIPC_WATCHDOG = common dso_local global i32 0, align 4
@bcm_platform_data_avail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_reset() #0 {
  %1 = alloca %struct.bcm_platform*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @intr_disable()
  %5 = call %struct.bcm_platform* (...) @bcm_get_platform()
  store %struct.bcm_platform* %5, %struct.bcm_platform** %1, align 8
  store i32 0, i32* %2, align 4
  %6 = load %struct.bcm_platform*, %struct.bcm_platform** %1, align 8
  %7 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BHND_CHIPID_BCM4785, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  %13 = load i32, i32* @BMIPS_BCMCFG_PLLCFG3_SM, align 4
  %14 = call i32 @bcm_bmips_wr_pllcfg3(i32 %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = load %struct.bcm_platform*, %struct.bcm_platform** %1, align 8
  %17 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.bcm_platform*, %struct.bcm_platform** %1, align 8
  %22 = load i32, i32* @BHND_PMU_WATCHDOG, align 4
  %23 = call i32 @BCM_PMU_WRITE_4(%struct.bcm_platform* %21, i32 %22, i32 1)
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.bcm_platform*, %struct.bcm_platform** %1, align 8
  %26 = load i32, i32* @CHIPC_WATCHDOG, align 4
  %27 = call i32 @BCM_CHIPC_WRITE_4(%struct.bcm_platform* %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @mips_sync()
  call void asm sideeffect "wait", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %34
  br label %34
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local %struct.bcm_platform* @bcm_get_platform(...) #1

declare dso_local i32 @bcm_bmips_wr_pllcfg3(i32) #1

declare dso_local i32 @BCM_PMU_WRITE_4(%struct.bcm_platform*, i32, i32) #1

declare dso_local i32 @BCM_CHIPC_WRITE_4(%struct.bcm_platform*, i32, i32) #1

declare dso_local i32 @mips_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1170}
