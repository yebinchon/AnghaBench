; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_ppc4xx.c_booke_disable_l2_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_ppc4xx.c_booke_disable_l2_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_CCR1 = common dso_local global i32 0, align 4
@CCR1_L2COBE = common dso_local global i32 0, align 4
@DCR_L2DCDCRAI = common dso_local global i32 0, align 4
@DCR_L2CR0 = common dso_local global i32 0, align 4
@DCR_L2DCDCRDI = common dso_local global i32 0, align 4
@L2CR0_AS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @booke_disable_l2_cache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SPR_CCR1, align 4
  %4 = call i32 @mfspr(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @CCR1_L2COBE, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* %1, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @SPR_CCR1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @mtspr(i32 %9, i32 %10)
  %12 = load i32, i32* @DCR_L2DCDCRAI, align 4
  %13 = load i32, i32* @DCR_L2CR0, align 4
  %14 = call i32 @mtdcr(i32 %12, i32 %13)
  %15 = load i32, i32* @DCR_L2DCDCRDI, align 4
  %16 = call i32 @mfdcr(i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @L2CR0_AS, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @DCR_L2DCDCRDI, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @mtdcr(i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mtdcr(i32, i32) #1

declare dso_local i32 @mfdcr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
