; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_virt_clr_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_virt_clr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@IXGBE_DCA_RXCTRL_DESC_RRO_EN = common dso_local global i32 0, align 4
@IXGBE_DCA_RXCTRL_DATA_WRO_EN = common dso_local global i32 0, align 4
@IXGBE_DCA_RXCTRL_HEAD_WRO_EN = common dso_local global i32 0, align 4
@IXGBE_DCA_TXCTRL_DESC_RRO_EN = common dso_local global i32 0, align 4
@IXGBE_DCA_TXCTRL_DESC_WRO_EN = common dso_local global i32 0, align 4
@IXGBE_DCA_TXCTRL_DATA_RRO_EN = common dso_local global i32 0, align 4
@IXGBE_VFPSRTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_virt_clr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_virt_clr_reg(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load i32, i32* @IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT, align 4
  %8 = shl i32 256, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %10 = ashr i32 2048, %9
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @IXGBE_DCA_RXCTRL_DESC_RRO_EN, align 4
  %14 = load i32, i32* @IXGBE_DCA_RXCTRL_DATA_WRO_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IXGBE_DCA_RXCTRL_HEAD_WRO_EN, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @IXGBE_DCA_TXCTRL_DESC_RRO_EN, align 4
  %19 = load i32, i32* @IXGBE_DCA_TXCTRL_DESC_WRO_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IXGBE_DCA_TXCTRL_DATA_RRO_EN, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = load i32, i32* @IXGBE_VFPSRTYPE, align 4
  %25 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %23, i32 %24, i32 0)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %77, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 7
  br i1 %28, label %29, label %80

29:                                               ; preds = %26
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @IXGBE_VFRDH(i32 %31)
  %33 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %30, i32 %32, i32 0)
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @IXGBE_VFRDT(i32 %35)
  %37 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %34, i32 %36, i32 0)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @IXGBE_VFRXDCTL(i32 %39)
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i32 %40, i32 0)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @IXGBE_VFSRRCTL(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %44, i32 %45)
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @IXGBE_VFTDH(i32 %48)
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %49, i32 0)
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @IXGBE_VFTDT(i32 %52)
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i32 %53, i32 0)
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @IXGBE_VFTXDCTL(i32 %56)
  %58 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %55, i32 %57, i32 0)
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @IXGBE_VFTDWBAH(i32 %60)
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %59, i32 %61, i32 0)
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @IXGBE_VFTDWBAL(i32 %64)
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %63, i32 %65, i32 0)
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @IXGBE_VFDCA_RXCTRL(i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %67, i32 %69, i32 %70)
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @IXGBE_VFDCA_TXCTRL(i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %72, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %29
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %26

80:                                               ; preds = %26
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %81)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFRDH(i32) #1

declare dso_local i32 @IXGBE_VFRDT(i32) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i32) #1

declare dso_local i32 @IXGBE_VFSRRCTL(i32) #1

declare dso_local i32 @IXGBE_VFTDH(i32) #1

declare dso_local i32 @IXGBE_VFTDT(i32) #1

declare dso_local i32 @IXGBE_VFTXDCTL(i32) #1

declare dso_local i32 @IXGBE_VFTDWBAH(i32) #1

declare dso_local i32 @IXGBE_VFTDWBAL(i32) #1

declare dso_local i32 @IXGBE_VFDCA_RXCTRL(i32) #1

declare dso_local i32 @IXGBE_VFDCA_TXCTRL(i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
