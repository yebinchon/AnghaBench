; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_lstatus_to_fwcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_lstatus_to_fwcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_FW_PORT_CMD_RXPAUSE = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FC_RX = common dso_local global i32 0, align 4
@F_FW_PORT_CMD_TXPAUSE = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FC_TX = common dso_local global i32 0, align 4
@FW_PORT_CAP_SPEED_100M = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_100M = common dso_local global i32 0, align 4
@FW_PORT_CAP_SPEED_1G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_1G = common dso_local global i32 0, align 4
@FW_PORT_CAP_SPEED_10G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_10G = common dso_local global i32 0, align 4
@FW_PORT_CAP_SPEED_25G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_25G = common dso_local global i32 0, align 4
@FW_PORT_CAP_SPEED_40G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_40G = common dso_local global i32 0, align 4
@FW_PORT_CAP_SPEED_100G = common dso_local global i32 0, align 4
@FW_PORT_CAP32_SPEED_100G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lstatus_to_fwcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lstatus_to_fwcap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @F_FW_PORT_CMD_RXPAUSE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @FW_PORT_CAP32_FC_RX, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @F_FW_PORT_CMD_TXPAUSE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @FW_PORT_CAP32_FC_TX, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @FW_PORT_CAP_SPEED_100M, align 4
  %24 = call i32 @V_FW_PORT_CMD_LSPEED(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @FW_PORT_CAP32_SPEED_100M, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @FW_PORT_CAP_SPEED_1G, align 4
  %34 = call i32 @V_FW_PORT_CMD_LSPEED(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @FW_PORT_CAP32_SPEED_1G, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @FW_PORT_CAP_SPEED_10G, align 4
  %44 = call i32 @V_FW_PORT_CMD_LSPEED(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @FW_PORT_CAP32_SPEED_10G, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @FW_PORT_CAP_SPEED_25G, align 4
  %54 = call i32 @V_FW_PORT_CMD_LSPEED(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @FW_PORT_CAP32_SPEED_25G, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @FW_PORT_CAP_SPEED_40G, align 4
  %64 = call i32 @V_FW_PORT_CMD_LSPEED(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @FW_PORT_CAP32_SPEED_40G, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @FW_PORT_CAP_SPEED_100G, align 4
  %74 = call i32 @V_FW_PORT_CMD_LSPEED(i32 %73)
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @FW_PORT_CAP32_SPEED_100G, align 4
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %71
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @V_FW_PORT_CMD_LSPEED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
