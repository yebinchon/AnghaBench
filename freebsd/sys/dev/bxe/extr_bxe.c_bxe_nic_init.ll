; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nic_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 = common dso_local global i64 0, align 8
@AEU_INPUTS_ATTN_BITS_SPIO5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_nic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_nic_init(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %16, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @bxe_init_eth_fp(%struct.bxe_softc* %13, i32 %14)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %6

19:                                               ; preds = %6
  %20 = call i32 (...) @rmb()
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %22 = call i32 @bxe_init_rx_rings(%struct.bxe_softc* %21)
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %24 = call i32 @bxe_init_tx_rings(%struct.bxe_softc* %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = call i64 @IS_VF(%struct.bxe_softc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %78

29:                                               ; preds = %19
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 2
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %42 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = call i32 @SC_PORT(%struct.bxe_softc* %45)
  %47 = call i32 @elink_init_mod_abs_int(%struct.bxe_softc* %30, i32* %32, i32 %36, i32 %40, i32 %44, i32 %46)
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %49 = call i32 @bxe_init_def_sb(%struct.bxe_softc* %48)
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %51 = call i32 @bxe_update_dsb_idx(%struct.bxe_softc* %50)
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %53 = call i32 @bxe_init_sp_ring(%struct.bxe_softc* %52)
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %55 = call i32 @bxe_init_eq_ring(%struct.bxe_softc* %54)
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @bxe_init_internal(%struct.bxe_softc* %56, i32 %57)
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %60 = call i32 @bxe_pf_init(%struct.bxe_softc* %59)
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %62 = call i32 @bxe_stats_init(%struct.bxe_softc* %61)
  %63 = call i32 (...) @mb()
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %65 = call i32 @bxe_int_enable(%struct.bxe_softc* %64)
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %68 = load i64, i64* @MISC_REG_AEU_AFTER_INVERT_1_FUNC_0, align 8
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %70 = call i32 @SC_PORT(%struct.bxe_softc* %69)
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  %74 = call i32 @REG_RD(%struct.bxe_softc* %67, i64 %73)
  %75 = load i32, i32* @AEU_INPUTS_ATTN_BITS_SPIO5, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @bxe_attn_int_deasserted0(%struct.bxe_softc* %66, i32 %76)
  br label %78

78:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @bxe_init_eth_fp(%struct.bxe_softc*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @bxe_init_rx_rings(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_init_tx_rings(%struct.bxe_softc*) #1

declare dso_local i64 @IS_VF(%struct.bxe_softc*) #1

declare dso_local i32 @elink_init_mod_abs_int(%struct.bxe_softc*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_init_def_sb(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_update_dsb_idx(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_init_sp_ring(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_init_eq_ring(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_init_internal(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_pf_init(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_stats_init(%struct.bxe_softc*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @bxe_int_enable(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_attn_int_deasserted0(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
