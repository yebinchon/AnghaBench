; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_wol_magic_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_wol_magic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_XGMAC_PORT_MAGIC_MACID_LO = common dso_local global i32 0, align 4
@A_XGMAC_PORT_MAGIC_MACID_HI = common dso_local global i32 0, align 4
@A_XGMAC_PORT_CFG2 = common dso_local global i32 0, align 4
@A_MAC_PORT_MAGIC_MACID_LO = common dso_local global i32 0, align 4
@A_MAC_PORT_MAGIC_MACID_HI = common dso_local global i32 0, align 4
@A_MAC_PORT_CFG2 = common dso_local global i32 0, align 4
@F_MAGICEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_wol_magic_enable(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = call i64 @is_t4(%struct.adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @A_XGMAC_PORT_MAGIC_MACID_LO, align 4
  %16 = call i32 @PORT_REG(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @A_XGMAC_PORT_MAGIC_MACID_HI, align 4
  %19 = call i32 @PORT_REG(i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @A_XGMAC_PORT_CFG2, align 4
  %22 = call i32 @PORT_REG(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  br label %33

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @A_MAC_PORT_MAGIC_MACID_LO, align 4
  %26 = call i32 @T5_PORT_REG(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @A_MAC_PORT_MAGIC_MACID_HI, align 4
  %29 = call i32 @T5_PORT_REG(i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @A_MAC_PORT_CFG2, align 4
  %32 = call i32 @T5_PORT_REG(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %23, %13
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %33
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 24
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 16
  %47 = or i32 %42, %46
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %47, %51
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = call i32 @t4_write_reg(%struct.adapter* %37, i32 %38, i32 %56)
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = call i32 @t4_write_reg(%struct.adapter* %58, i32 %59, i32 %67)
  br label %69

69:                                               ; preds = %36, %33
  %70 = load %struct.adapter*, %struct.adapter** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @F_MAGICEN, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @V_MAGICEN(i32 %75)
  %77 = call i32 @t4_set_reg_field(%struct.adapter* %70, i32 %71, i32 %72, i32 %76)
  ret void
}

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @PORT_REG(i32, i32) #1

declare dso_local i32 @T5_PORT_REG(i32, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @V_MAGICEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
