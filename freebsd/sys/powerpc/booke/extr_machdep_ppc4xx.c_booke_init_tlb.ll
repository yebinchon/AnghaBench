; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_ppc4xx.c_booke_init_tlb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_ppc4xx.c_booke_init_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APM86XXX_DEEP_SLEEP_VA = common dso_local global i64 0, align 8
@APM86XXX_DEEP_SLEEP_PA = common dso_local global i32 0, align 4
@TLB_VALID = common dso_local global i32 0, align 4
@TLB_SIZE_16M = common dso_local global i32 0, align 4
@TLB_SW = common dso_local global i32 0, align 4
@TLB_SR = common dso_local global i32 0, align 4
@TLB_I = common dso_local global i32 0, align 4
@TLB_G = common dso_local global i32 0, align 4
@APM86XXX_CSR_VA = common dso_local global i64 0, align 8
@APM86XXX_CSR_PA = common dso_local global i32 0, align 4
@APM86XXX_PRIMARY_FABRIC_VA = common dso_local global i64 0, align 8
@APM86XXX_PRIMARY_FABRIC_PA = common dso_local global i32 0, align 4
@APM86XXX_AHB_VA = common dso_local global i64 0, align 8
@APM86XXX_AHB_PA = common dso_local global i32 0, align 4
@APM86XXX_MBOX_VA = common dso_local global i64 0, align 8
@APM86XXX_MBOX_PA = common dso_local global i32 0, align 4
@TLB_SIZE_4K = common dso_local global i32 0, align 4
@TLB_UX = common dso_local global i32 0, align 4
@TLB_UW = common dso_local global i32 0, align 4
@TLB_UR = common dso_local global i32 0, align 4
@TLB_SX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @booke_init_tlb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @APM86XXX_DEEP_SLEEP_VA, align 8
  %4 = load i32, i32* @APM86XXX_DEEP_SLEEP_PA, align 4
  %5 = call i64 @OCP_ADDR_WORDLO(i32 %4)
  %6 = load i32, i32* @APM86XXX_DEEP_SLEEP_PA, align 4
  %7 = call i32 @OCP_ADDR_WORDHI(i32 %6)
  %8 = load i32, i32* @TLB_VALID, align 4
  %9 = load i32, i32* @TLB_SIZE_16M, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @TLB_SW, align 4
  %12 = load i32, i32* @TLB_SR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @TLB_I, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @TLB_G, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @tlb_map(i64 %3, i64 %5, i32 %7, i32 %10, i32 %17)
  %19 = load i64, i64* @APM86XXX_CSR_VA, align 8
  %20 = load i32, i32* @APM86XXX_CSR_PA, align 4
  %21 = call i64 @OCP_ADDR_WORDLO(i32 %20)
  %22 = load i32, i32* @APM86XXX_CSR_PA, align 4
  %23 = call i32 @OCP_ADDR_WORDHI(i32 %22)
  %24 = load i32, i32* @TLB_VALID, align 4
  %25 = load i32, i32* @TLB_SIZE_16M, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @TLB_SW, align 4
  %28 = load i32, i32* @TLB_SR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TLB_I, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @TLB_G, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @tlb_map(i64 %19, i64 %21, i32 %23, i32 %26, i32 %33)
  %35 = load i64, i64* @APM86XXX_PRIMARY_FABRIC_VA, align 8
  %36 = load i32, i32* @APM86XXX_PRIMARY_FABRIC_PA, align 4
  %37 = call i64 @OCP_ADDR_WORDLO(i32 %36)
  %38 = load i32, i32* @APM86XXX_PRIMARY_FABRIC_PA, align 4
  %39 = call i32 @OCP_ADDR_WORDHI(i32 %38)
  %40 = load i32, i32* @TLB_VALID, align 4
  %41 = load i32, i32* @TLB_SIZE_16M, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @TLB_SW, align 4
  %44 = load i32, i32* @TLB_SR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @TLB_I, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TLB_G, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @tlb_map(i64 %35, i64 %37, i32 %39, i32 %42, i32 %49)
  %51 = load i64, i64* @APM86XXX_AHB_VA, align 8
  %52 = load i32, i32* @APM86XXX_AHB_PA, align 4
  %53 = call i64 @OCP_ADDR_WORDLO(i32 %52)
  %54 = load i32, i32* @APM86XXX_AHB_PA, align 4
  %55 = call i32 @OCP_ADDR_WORDHI(i32 %54)
  %56 = load i32, i32* @TLB_VALID, align 4
  %57 = load i32, i32* @TLB_SIZE_16M, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @TLB_SW, align 4
  %60 = load i32, i32* @TLB_SR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @TLB_I, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @TLB_G, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @tlb_map(i64 %51, i64 %53, i32 %55, i32 %58, i32 %65)
  %67 = load i64, i64* @APM86XXX_MBOX_VA, align 8
  %68 = load i32, i32* @APM86XXX_MBOX_PA, align 4
  %69 = call i64 @OCP_ADDR_WORDLO(i32 %68)
  %70 = load i32, i32* @APM86XXX_MBOX_PA, align 4
  %71 = call i32 @OCP_ADDR_WORDHI(i32 %70)
  %72 = load i32, i32* @TLB_VALID, align 4
  %73 = load i32, i32* @TLB_SIZE_4K, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @TLB_UX, align 4
  %76 = load i32, i32* @TLB_UW, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @TLB_UR, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @TLB_SX, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @TLB_SW, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @TLB_SR, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @TLB_I, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @TLB_G, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @tlb_map(i64 %67, i64 %69, i32 %71, i32 %74, i32 %89)
  %91 = load i64, i64* @APM86XXX_MBOX_VA, align 8
  %92 = add nsw i64 %91, 4096
  %93 = load i32, i32* @APM86XXX_MBOX_PA, align 4
  %94 = call i64 @OCP_ADDR_WORDLO(i32 %93)
  %95 = add nsw i64 %94, 4096
  %96 = load i32, i32* @APM86XXX_MBOX_PA, align 4
  %97 = call i32 @OCP_ADDR_WORDHI(i32 %96)
  %98 = load i32, i32* @TLB_VALID, align 4
  %99 = load i32, i32* @TLB_SIZE_4K, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @TLB_UX, align 4
  %102 = load i32, i32* @TLB_UW, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @TLB_UR, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @TLB_SX, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @TLB_SW, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @TLB_SR, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @TLB_I, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @TLB_G, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @tlb_map(i64 %92, i64 %95, i32 %97, i32 %100, i32 %115)
  %117 = load i64, i64* @APM86XXX_MBOX_VA, align 8
  %118 = add nsw i64 %117, 8192
  %119 = load i32, i32* @APM86XXX_MBOX_PA, align 4
  %120 = call i64 @OCP_ADDR_WORDLO(i32 %119)
  %121 = add nsw i64 %120, 8192
  %122 = load i32, i32* @APM86XXX_MBOX_PA, align 4
  %123 = call i32 @OCP_ADDR_WORDHI(i32 %122)
  %124 = load i32, i32* @TLB_VALID, align 4
  %125 = load i32, i32* @TLB_SIZE_4K, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @TLB_UX, align 4
  %128 = load i32, i32* @TLB_UW, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @TLB_UR, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @TLB_SX, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @TLB_SW, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @TLB_SR, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @TLB_I, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @TLB_G, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @tlb_map(i64 %118, i64 %121, i32 %123, i32 %126, i32 %141)
  ret void
}

declare dso_local i32 @tlb_map(i64, i64, i32, i32, i32) #1

declare dso_local i64 @OCP_ADDR_WORDLO(i32) #1

declare dso_local i32 @OCP_ADDR_WORDHI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
