; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_set_mas4_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_set_mas4_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAS4_TLBSELD0 = common dso_local global i32 0, align 4
@TLB_SIZE_4K = common dso_local global i32 0, align 4
@MAS4_TSIZED_SHIFT = common dso_local global i32 0, align 4
@MAS4_TSIZED_MASK = common dso_local global i32 0, align 4
@SPR_MAS4 = common dso_local global i32 0, align 4
@MAS4_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_mas4_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mas4_defaults() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MAS4_TLBSELD0, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @TLB_SIZE_4K, align 4
  %4 = load i32, i32* @MAS4_TSIZED_SHIFT, align 4
  %5 = shl i32 %3, %4
  %6 = load i32, i32* @MAS4_TSIZED_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* %1, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @SPR_MAS4, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @mtspr(i32 %10, i32 %11)
  call void asm sideeffect "isync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  ret void
}

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 519}
