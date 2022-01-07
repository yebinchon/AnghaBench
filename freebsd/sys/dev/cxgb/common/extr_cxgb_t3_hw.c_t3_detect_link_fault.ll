; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_detect_link_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_detect_link_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.cmac }
%struct.cmac = type { i64 }

@A_XGM_RX_CTRL = common dso_local global i64 0, align 8
@A_XGM_INT_STATUS = common dso_local global i64 0, align 8
@F_RXEN = common dso_local global i32 0, align 4
@F_LINKFAULTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @t3_detect_link_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_detect_link_fault(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.cmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.port_info* @adap2pinfo(i32* %11, i32 %12)
  store %struct.port_info* %13, %struct.port_info** %5, align 8
  %14 = load %struct.port_info*, %struct.port_info** %5, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  store %struct.cmac* %15, %struct.cmac** %6, align 8
  %16 = load %struct.cmac*, %struct.cmac** %6, align 8
  %17 = call i32 @t3_gate_rx_traffic(%struct.cmac* %16, i32* %7, i32* %8, i32* %9)
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %20 = load %struct.cmac*, %struct.cmac** %6, align 8
  %21 = getelementptr inbounds %struct.cmac, %struct.cmac* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @t3_write_reg(i32* %18, i64 %23, i32 0)
  %25 = load i32*, i32** %3, align 8
  %26 = load i64, i64* @A_XGM_INT_STATUS, align 8
  %27 = load %struct.cmac*, %struct.cmac** %6, align 8
  %28 = getelementptr inbounds %struct.cmac, %struct.cmac* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i32 @t3_read_reg(i32* %25, i64 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @t3_xgm_intr_enable(i32* %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %37 = load %struct.cmac*, %struct.cmac** %6, align 8
  %38 = getelementptr inbounds %struct.cmac, %struct.cmac* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* @F_RXEN, align 4
  %42 = call i32 @t3_write_reg(i32* %35, i64 %40, i32 %41)
  %43 = load %struct.cmac*, %struct.cmac** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @t3_open_rx_traffic(%struct.cmac* %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* @A_XGM_INT_STATUS, align 8
  %50 = load %struct.cmac*, %struct.cmac** %6, align 8
  %51 = getelementptr inbounds %struct.cmac, %struct.cmac* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 @t3_read_reg(i32* %48, i64 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @F_LINKFAULTCHANGE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  ret i32 %60
}

declare dso_local %struct.port_info* @adap2pinfo(i32*, i32) #1

declare dso_local i32 @t3_gate_rx_traffic(%struct.cmac*, i32*, i32*, i32*) #1

declare dso_local i32 @t3_write_reg(i32*, i64, i32) #1

declare dso_local i32 @t3_read_reg(i32*, i64) #1

declare dso_local i32 @t3_xgm_intr_enable(i32*, i32) #1

declare dso_local i32 @t3_open_rx_traffic(%struct.cmac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
