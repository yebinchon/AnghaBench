; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_clr_port_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_clr_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.TYPE_2__ = type { i32 }

@A_MPS_PORT_STAT_TX_PORT_BYTES_L = common dso_local global i32 0, align 4
@A_MPS_PORT_STAT_TX_PORT_PPP7_H = common dso_local global i32 0, align 4
@A_MPS_PORT_STAT_RX_PORT_BYTES_L = common dso_local global i32 0, align 4
@A_MPS_PORT_STAT_RX_PORT_LESS_64B_H = common dso_local global i32 0, align 4
@A_MPS_STAT_RX_BG_0_MAC_DROP_FRAME_L = common dso_local global i32 0, align 4
@A_MPS_STAT_RX_BG_0_MAC_TRUNC_FRAME_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_clr_port_stats(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_2__* @adap2pinfo(%struct.adapter* %8, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = call i64 @is_t4(%struct.adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @PORT_BASE(i32 %17)
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @T5_PORT_BASE(i32 %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @A_MPS_PORT_STAT_TX_PORT_BYTES_L, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %34, %22
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @A_MPS_PORT_STAT_TX_PORT_PPP7_H, align 4
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %30, %31
  %33 = call i32 @t4_write_reg(%struct.adapter* %29, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 8
  store i32 %36, i32* %5, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load i32, i32* @A_MPS_PORT_STAT_RX_PORT_BYTES_L, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %49, %37
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @A_MPS_PORT_STAT_RX_PORT_LESS_64B_H, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %45, %46
  %48 = call i32 @t4_write_reg(%struct.adapter* %44, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 8
  store i32 %51, i32* %5, align 4
  br label %39

52:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %76, %52
  %54 = load i32, i32* %5, align 4
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = load i32, i32* @A_MPS_STAT_RX_BG_0_MAC_DROP_FRAME_L, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul i32 %65, 8
  %67 = add i32 %64, %66
  %68 = call i32 @t4_write_reg(%struct.adapter* %63, i32 %67, i32 0)
  %69 = load %struct.adapter*, %struct.adapter** %3, align 8
  %70 = load i32, i32* @A_MPS_STAT_RX_BG_0_MAC_TRUNC_FRAME_L, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul i32 %71, 8
  %73 = add i32 %70, %72
  %74 = call i32 @t4_write_reg(%struct.adapter* %69, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %62, %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %53

79:                                               ; preds = %53
  ret void
}

declare dso_local %struct.TYPE_2__* @adap2pinfo(%struct.adapter*, i32) #1

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @PORT_BASE(i32) #1

declare dso_local i32 @T5_PORT_BASE(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
