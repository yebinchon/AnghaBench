; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i64, i32*, i64, i32, i64 }

@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@A_XGM_TX_CTRL = common dso_local global i64 0, align 8
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@A_XGM_RESET_CTRL = common dso_local global i64 0, align 8
@F_PCS_RESET_ = common dso_local global i32 0, align 4
@A_XGM_RX_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mac_disable(%struct.cmac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cmac*, %struct.cmac** %4, align 8
  %9 = getelementptr inbounds %struct.cmac, %struct.cmac* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load %struct.cmac*, %struct.cmac** %4, align 8
  %12 = getelementptr inbounds %struct.cmac, %struct.cmac* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.cmac*, %struct.cmac** %4, align 8
  %18 = getelementptr inbounds %struct.cmac, %struct.cmac* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @t3_vsc7323_disable(i32* %16, i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %30 = load %struct.cmac*, %struct.cmac** %4, align 8
  %31 = getelementptr inbounds %struct.cmac, %struct.cmac* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @t3_write_reg(i32* %28, i64 %33, i32 0)
  %35 = load %struct.cmac*, %struct.cmac** %4, align 8
  %36 = getelementptr inbounds %struct.cmac, %struct.cmac* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %27, %22
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = load %struct.cmac*, %struct.cmac** %4, align 8
  %44 = call i32 @xgm_reset_ctrl(%struct.cmac* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.cmac*, %struct.cmac** %4, align 8
  %46 = getelementptr inbounds %struct.cmac, %struct.cmac* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %49 = load %struct.cmac*, %struct.cmac** %4, align 8
  %50 = getelementptr inbounds %struct.cmac, %struct.cmac* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load i32, i32* @F_PCS_RESET_, align 4
  %54 = call i32 @t3_set_reg_field(i32* %47, i64 %52, i32 %53, i32 0)
  %55 = call i32 @msleep(i32 100)
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %58 = load %struct.cmac*, %struct.cmac** %4, align 8
  %59 = getelementptr inbounds %struct.cmac, %struct.cmac* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = call i32 @t3_write_reg(i32* %56, i64 %61, i32 0)
  %63 = load %struct.cmac*, %struct.cmac** %4, align 8
  %64 = getelementptr inbounds %struct.cmac, %struct.cmac* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %67 = load %struct.cmac*, %struct.cmac** %4, align 8
  %68 = getelementptr inbounds %struct.cmac, %struct.cmac* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @t3_write_reg(i32* %65, i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %42, %37
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @t3_vsc7323_disable(i32*, i32, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i64, i32) #1

declare dso_local i32 @xgm_reset_ctrl(%struct.cmac*) #1

declare dso_local i32 @t3_set_reg_field(i32*, i64, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
