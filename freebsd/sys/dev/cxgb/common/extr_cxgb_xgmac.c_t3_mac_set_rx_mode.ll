; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, i32, i32, i64, i32* }
%struct.t3_rx_mode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.t3_mcaddr_ctx = type { i32, i32, %struct.cmac* }

@A_XGM_RX_CFG = common dso_local global i64 0, align 8
@F_COPYALLFRAMES = common dso_local global i32 0, align 4
@t3_hash_maddr = common dso_local global i32 0, align 4
@A_XGM_RX_HASH_LOW = common dso_local global i64 0, align 8
@A_XGM_RX_HASH_HIGH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mac_set_rx_mode(%struct.cmac* %0, %struct.t3_rx_mode* %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca %struct.t3_rx_mode*, align 8
  %5 = alloca %struct.t3_mcaddr_ctx, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store %struct.t3_rx_mode* %1, %struct.t3_rx_mode** %4, align 8
  %8 = load %struct.cmac*, %struct.cmac** %3, align 8
  %9 = getelementptr inbounds %struct.cmac, %struct.cmac* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load %struct.cmac*, %struct.cmac** %3, align 8
  %12 = getelementptr inbounds %struct.cmac, %struct.cmac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.t3_rx_mode*, %struct.t3_rx_mode** %4, align 8
  %15 = call i64 @promisc_rx_mode(%struct.t3_rx_mode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.cmac*, %struct.cmac** %3, align 8
  %19 = getelementptr inbounds %struct.cmac, %struct.cmac* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  %22 = load %struct.cmac*, %struct.cmac** %3, align 8
  %23 = getelementptr inbounds %struct.cmac, %struct.cmac* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.cmac*, %struct.cmac** %3, align 8
  %28 = getelementptr inbounds %struct.cmac, %struct.cmac* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.cmac*, %struct.cmac** %3, align 8
  %33 = getelementptr inbounds %struct.cmac, %struct.cmac* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %26, %17
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* @A_XGM_RX_CFG, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i32, i32* @F_COPYALLFRAMES, align 4
  %43 = load %struct.cmac*, %struct.cmac** %3, align 8
  %44 = getelementptr inbounds %struct.cmac, %struct.cmac* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @F_COPYALLFRAMES, align 4
  br label %50

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = call i32 @t3_set_reg_field(i32* %37, i64 %41, i32 %42, i32 %51)
  %53 = load %struct.t3_rx_mode*, %struct.t3_rx_mode** %4, align 8
  %54 = call i64 @allmulti_rx_mode(%struct.t3_rx_mode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.cmac*, %struct.cmac** %3, align 8
  %58 = getelementptr inbounds %struct.cmac, %struct.cmac* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %50
  %62 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %5, i32 0, i32 1
  store i32 -1, i32* %62, align 4
  %63 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %5, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  br label %76

64:                                               ; preds = %56
  %65 = load %struct.cmac*, %struct.cmac** %3, align 8
  %66 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %5, i32 0, i32 2
  store %struct.cmac* %65, %struct.cmac** %66, align 8
  %67 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %5, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %5, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.t3_rx_mode*, %struct.t3_rx_mode** %4, align 8
  %70 = getelementptr inbounds %struct.t3_rx_mode, %struct.t3_rx_mode* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @t3_hash_maddr, align 4
  %75 = call i32 @if_foreach_llmaddr(i32 %73, i32 %74, %struct.t3_mcaddr_ctx* %5)
  br label %76

76:                                               ; preds = %64, %61
  %77 = load i32*, i32** %6, align 8
  %78 = load i64, i64* @A_XGM_RX_HASH_LOW, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @t3_write_reg(i32* %77, i64 %81, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i64, i64* @A_XGM_RX_HASH_HIGH, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %5, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @t3_write_reg(i32* %85, i64 %89, i32 %91)
  ret i32 0
}

declare dso_local i64 @promisc_rx_mode(%struct.t3_rx_mode*) #1

declare dso_local i32 @t3_set_reg_field(i32*, i64, i32, i32) #1

declare dso_local i64 @allmulti_rx_mode(%struct.t3_rx_mode*) #1

declare dso_local i32 @if_foreach_llmaddr(i32, i32, %struct.t3_mcaddr_ctx*) #1

declare dso_local i32 @t3_write_reg(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
