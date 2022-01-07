; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_config_pcie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_config_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@config_pcie.ack_lat = internal constant [4 x [6 x i32]] [[6 x i32] [i32 237, i32 416, i32 559, i32 1071, i32 2095, i32 4143], [6 x i32] [i32 128, i32 217, i32 289, i32 545, i32 1057, i32 2081], [6 x i32] [i32 73, i32 118, i32 154, i32 282, i32 538, i32 1050], [6 x i32] [i32 67, i32 107, i32 86, i32 150, i32 278, i32 534]], align 16
@config_pcie.rpl_tmr = internal constant [4 x [6 x i32]] [[6 x i32] [i32 711, i32 1248, i32 1677, i32 3213, i32 6285, i32 12429], [6 x i32] [i32 384, i32 651, i32 867, i32 1635, i32 3171, i32 6243], [6 x i32] [i32 219, i32 354, i32 462, i32 846, i32 1614, i32 3150], [6 x i32] [i32 201, i32 321, i32 258, i32 450, i32 834, i32 1602]], align 16
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_PAYLOAD = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@A_PCIE_PEX_CTRL0 = common dso_local global i32 0, align 4
@A_PCIE_MODE = common dso_local global i32 0, align 4
@A_PCIE_PEX_CTRL1 = common dso_local global i32 0, align 4
@M_T3A_ACKLAT = common dso_local global i32 0, align 4
@M_ACKLAT = common dso_local global i32 0, align 4
@M_REPLAYLMT = common dso_local global i32 0, align 4
@A_PCIE_PEX_ERR = common dso_local global i32 0, align 4
@A_PCIE_CFG = common dso_local global i32 0, align 4
@F_ENABLELINKDWNDRST = common dso_local global i32 0, align 4
@F_ENABLELINKDOWNRST = common dso_local global i32 0, align 4
@F_PCIE_DMASTOPEN = common dso_local global i32 0, align 4
@F_PCIE_CLIDECEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @config_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_pcie(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %18 = add nsw i32 %16, %17
  %19 = call i32 @t3_os_pci_read_config_2(%struct.TYPE_12__* %11, i32 %18, i32* %3)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %22 = and i32 %20, %21
  %23 = ashr i32 %22, 5
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = call i32 @t3_os_pci_read_config_2(%struct.TYPE_12__* %24, i32 2, i32* %4)
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 55
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @t3_os_pci_write_config_2(%struct.TYPE_12__* %29, i32 %36, i32 %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %28, %1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @t3_os_pci_read_config_2(%struct.TYPE_12__* %46, i32 %53, i32* %3)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = load i32, i32* @A_PCIE_PEX_CTRL0, align 4
  %57 = call i32 @t3_read_reg(%struct.TYPE_12__* %55, i32 %56)
  %58 = call i32 @G_NUMFSTTRNSEQ(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = load i32, i32* %8, align 4
  br label %71

66:                                               ; preds = %45
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = load i32, i32* @A_PCIE_MODE, align 4
  %69 = call i32 @t3_read_reg(%struct.TYPE_12__* %67, i32 %68)
  %70 = call i32 @G_NUMFSTTRNSEQRX(i32 %69)
  br label %71

71:                                               ; preds = %66, %64
  %72 = phi i32 [ %65, %64 ], [ %70, %66 ]
  store i32 %72, i32* %7, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @fls(i32 %77)
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @config_pcie.ack_lat, i64 0, i64 %81
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %82, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %71
  %91 = load i32, i32* %8, align 4
  %92 = mul i32 %91, 4
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %90, %71
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @config_pcie.rpl_tmr, i64 0, i64 %97
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %98, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = mul i32 %103, 4
  %105 = add i32 %102, %104
  store i32 %105, i32* %10, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %95
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %113 = load i32, i32* @A_PCIE_PEX_CTRL1, align 4
  %114 = load i32, i32* @M_T3A_ACKLAT, align 4
  %115 = call i32 @V_T3A_ACKLAT(i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @V_T3A_ACKLAT(i32 %116)
  %118 = call i32 @t3_set_reg_field(%struct.TYPE_12__* %112, i32 %113, i32 %115, i32 %117)
  br label %127

119:                                              ; preds = %95
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %121 = load i32, i32* @A_PCIE_PEX_CTRL1, align 4
  %122 = load i32, i32* @M_ACKLAT, align 4
  %123 = call i32 @V_ACKLAT(i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @V_ACKLAT(i32 %124)
  %126 = call i32 @t3_set_reg_field(%struct.TYPE_12__* %120, i32 %121, i32 %123, i32 %125)
  br label %127

127:                                              ; preds = %119, %111
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = load i32, i32* @A_PCIE_PEX_CTRL0, align 4
  %130 = load i32, i32* @M_REPLAYLMT, align 4
  %131 = call i32 @V_REPLAYLMT(i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @V_REPLAYLMT(i32 %132)
  %134 = call i32 @t3_set_reg_field(%struct.TYPE_12__* %128, i32 %129, i32 %131, i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %136 = load i32, i32* @A_PCIE_PEX_ERR, align 4
  %137 = call i32 @t3_write_reg(%struct.TYPE_12__* %135, i32 %136, i32 -1)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %139 = load i32, i32* @A_PCIE_CFG, align 4
  %140 = load i32, i32* @F_ENABLELINKDWNDRST, align 4
  %141 = load i32, i32* @F_ENABLELINKDOWNRST, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @F_PCIE_DMASTOPEN, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @F_PCIE_CLIDECEN, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @t3_set_reg_field(%struct.TYPE_12__* %138, i32 %139, i32 0, i32 %146)
  ret void
}

declare dso_local i32 @t3_os_pci_read_config_2(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @t3_os_pci_write_config_2(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @G_NUMFSTTRNSEQ(i32) #1

declare dso_local i32 @t3_read_reg(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @G_NUMFSTTRNSEQRX(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @V_T3A_ACKLAT(i32) #1

declare dso_local i32 @V_ACKLAT(i32) #1

declare dso_local i32 @V_REPLAYLMT(i32) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
