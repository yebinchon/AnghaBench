; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpnae_print_frin_desc_carving.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpnae_print_frin_desc_carving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpnae_softc = type { i32 }

@NAE_FREE_IN_FIFO_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_xlpnae_softc*)* @nlm_xlpnae_print_frin_desc_carving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xlpnae_print_frin_desc_carving(%struct.nlm_xlpnae_softc* %0) #0 {
  %2 = alloca %struct.nlm_xlpnae_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nlm_xlpnae_softc* %0, %struct.nlm_xlpnae_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 20
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %12 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NAE_FREE_IN_FIFO_CFG, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 -2147483648, %15
  %17 = call i32 @nlm_write_nae_reg(i32 %13, i32 %14, i32 %16)
  %18 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %2, align 8
  %19 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NAE_FREE_IN_FIFO_CFG, align 4
  %22 = call i32 @nlm_read_nae_reg(i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 20
  %25 = and i32 %24, 1023
  %26 = mul nsw i32 2, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 511
  %30 = mul nsw i32 2, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %10
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %7

34:                                               ; preds = %7
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
