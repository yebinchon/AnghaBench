; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_open_rx_traffic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_open_rx_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i64, i32 }

@A_XGM_RX_CFG = common dso_local global i64 0, align 8
@F_ENHASHMCAST = common dso_local global i32 0, align 4
@F_DISBCAST = common dso_local global i32 0, align 4
@F_COPYALLFRAMES = common dso_local global i32 0, align 4
@A_XGM_RX_HASH_HIGH = common dso_local global i64 0, align 8
@A_XGM_RX_HASH_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmac*, i32, i32, i32)* @t3_open_rx_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t3_open_rx_traffic(%struct.cmac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.cmac*, %struct.cmac** %5, align 8
  %10 = call i32 @t3_mac_enable_exact_filters(%struct.cmac* %9)
  %11 = load %struct.cmac*, %struct.cmac** %5, align 8
  %12 = getelementptr inbounds %struct.cmac, %struct.cmac* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* @A_XGM_RX_CFG, align 8
  %15 = load %struct.cmac*, %struct.cmac** %5, align 8
  %16 = getelementptr inbounds %struct.cmac, %struct.cmac* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load i32, i32* @F_ENHASHMCAST, align 4
  %20 = load i32, i32* @F_DISBCAST, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @F_COPYALLFRAMES, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @t3_set_reg_field(i32 %13, i64 %18, i32 %23, i32 %24)
  %26 = load %struct.cmac*, %struct.cmac** %5, align 8
  %27 = getelementptr inbounds %struct.cmac, %struct.cmac* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* @A_XGM_RX_HASH_HIGH, align 8
  %30 = load %struct.cmac*, %struct.cmac** %5, align 8
  %31 = getelementptr inbounds %struct.cmac, %struct.cmac* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @t3_write_reg(i32 %28, i64 %33, i32 %34)
  %36 = load %struct.cmac*, %struct.cmac** %5, align 8
  %37 = getelementptr inbounds %struct.cmac, %struct.cmac* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @A_XGM_RX_HASH_LOW, align 8
  %40 = load %struct.cmac*, %struct.cmac** %5, align 8
  %41 = getelementptr inbounds %struct.cmac, %struct.cmac* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @t3_write_reg(i32 %38, i64 %43, i32 %44)
  ret void
}

declare dso_local i32 @t3_mac_enable_exact_filters(%struct.cmac*) #1

declare dso_local i32 @t3_set_reg_field(i32, i64, i32, i32) #1

declare dso_local i32 @t3_write_reg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
