; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_gate_rx_traffic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_gate_rx_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i64, i32 }

@A_XGM_RX_CFG = common dso_local global i64 0, align 8
@F_ENHASHMCAST = common dso_local global i32 0, align 4
@F_DISBCAST = common dso_local global i32 0, align 4
@F_COPYALLFRAMES = common dso_local global i32 0, align 4
@A_XGM_RX_HASH_HIGH = common dso_local global i64 0, align 8
@A_XGM_RX_HASH_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmac*, i32*, i32*, i32*)* @t3_gate_rx_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t3_gate_rx_traffic(%struct.cmac* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.cmac*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.cmac* %0, %struct.cmac** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.cmac*, %struct.cmac** %5, align 8
  %10 = call i32 @t3_mac_disable_exact_filters(%struct.cmac* %9)
  %11 = load %struct.cmac*, %struct.cmac** %5, align 8
  %12 = getelementptr inbounds %struct.cmac, %struct.cmac* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* @A_XGM_RX_CFG, align 8
  %15 = load %struct.cmac*, %struct.cmac** %5, align 8
  %16 = getelementptr inbounds %struct.cmac, %struct.cmac* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = call i32 @t3_read_reg(i32 %13, i64 %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.cmac*, %struct.cmac** %5, align 8
  %22 = getelementptr inbounds %struct.cmac, %struct.cmac* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @A_XGM_RX_CFG, align 8
  %25 = load %struct.cmac*, %struct.cmac** %5, align 8
  %26 = getelementptr inbounds %struct.cmac, %struct.cmac* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* @F_ENHASHMCAST, align 4
  %30 = load i32, i32* @F_DISBCAST, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @F_COPYALLFRAMES, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @F_DISBCAST, align 4
  %35 = call i32 @t3_set_reg_field(i32 %23, i64 %28, i32 %33, i32 %34)
  %36 = load %struct.cmac*, %struct.cmac** %5, align 8
  %37 = getelementptr inbounds %struct.cmac, %struct.cmac* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @A_XGM_RX_HASH_HIGH, align 8
  %40 = load %struct.cmac*, %struct.cmac** %5, align 8
  %41 = getelementptr inbounds %struct.cmac, %struct.cmac* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @t3_read_reg(i32 %38, i64 %43)
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.cmac*, %struct.cmac** %5, align 8
  %47 = getelementptr inbounds %struct.cmac, %struct.cmac* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* @A_XGM_RX_HASH_HIGH, align 8
  %50 = load %struct.cmac*, %struct.cmac** %5, align 8
  %51 = getelementptr inbounds %struct.cmac, %struct.cmac* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 @t3_write_reg(i32 %48, i64 %53, i32 0)
  %55 = load %struct.cmac*, %struct.cmac** %5, align 8
  %56 = getelementptr inbounds %struct.cmac, %struct.cmac* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* @A_XGM_RX_HASH_LOW, align 8
  %59 = load %struct.cmac*, %struct.cmac** %5, align 8
  %60 = getelementptr inbounds %struct.cmac, %struct.cmac* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = call i32 @t3_read_reg(i32 %57, i64 %62)
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.cmac*, %struct.cmac** %5, align 8
  %66 = getelementptr inbounds %struct.cmac, %struct.cmac* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* @A_XGM_RX_HASH_LOW, align 8
  %69 = load %struct.cmac*, %struct.cmac** %5, align 8
  %70 = getelementptr inbounds %struct.cmac, %struct.cmac* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = call i32 @t3_write_reg(i32 %67, i64 %72, i32 0)
  %74 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @t3_mac_disable_exact_filters(%struct.cmac*) #1

declare dso_local i32 @t3_read_reg(i32, i64) #1

declare dso_local i32 @t3_set_reg_field(i32, i64, i32, i32) #1

declare dso_local i32 @t3_write_reg(i32, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
