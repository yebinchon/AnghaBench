; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCP85XX_RSTCR = common dso_local global i32 0, align 4
@PSL_DE = common dso_local global i32 0, align 4
@SPR_DBCR0 = common dso_local global i32 0, align 4
@DBCR0_IDM = common dso_local global i32 0, align 4
@DBCR0_RST_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Reset failed...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mpc85xx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc85xx_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @OCP85XX_RSTCR, align 4
  %4 = call i32 @ccsr_write4(i32 %3, i32 2)
  %5 = call i32 (...) @mfmsr()
  %6 = load i32, i32* @PSL_DE, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = call i32 @mtmsr(i32 %8)
  %10 = load i32, i32* @SPR_DBCR0, align 4
  %11 = load i32, i32* @DBCR0_IDM, align 4
  %12 = load i32, i32* @DBCR0_RST_SYSTEM, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mtspr(i32 %10, i32 %13)
  call void asm sideeffect "isync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %15 = call i32 (...) @mfmsr()
  %16 = load i32, i32* @PSL_DE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mtmsr(i32 %17)
  %19 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %1, %20
  br label %20
}

declare dso_local i32 @ccsr_write4(i32, i32) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 573}
