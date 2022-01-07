; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_calc_rx_iq_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_calc_rx_iq_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }
%struct.bwn_phy_lp_iq_est = type { i32, i32, i32 }

@BWN_PHY_RX_COMP_COEFF_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32)* @bwn_phy_lp_calc_rx_iq_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_lp_calc_rx_iq_comp(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy_lp_iq_est, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %13 = load i32, i32* @BWN_PHY_RX_COMP_COEFF_S, align 4
  %14 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, 255
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %20 = load i32, i32* @BWN_PHY_RX_COMP_COEFF_S, align 4
  %21 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %19, i32 %20, i32 65280, i32 192)
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %23 = load i32, i32* @BWN_PHY_RX_COMP_COEFF_S, align 4
  %24 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %22, i32 %23, i32 255)
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @bwn_phy_lp_rx_iq_est(%struct.bwn_mac* %25, i32 %26, i32 32, %struct.bwn_phy_lp_iq_est* %5)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %146

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %33, %35
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %146

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bwn_nbits(i32 %42)
  %44 = sub nsw i32 %43, 20
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bwn_nbits(i32 %51)
  %53 = sub nsw i32 30, %52
  %54 = shl i32 %49, %53
  %55 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 1, %57
  %59 = ashr i32 %56, %58
  %60 = add nsw i32 %54, %59
  %61 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %62, %63
  %65 = sdiv i32 %60, %64
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  br label %88

67:                                               ; preds = %40
  %68 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bwn_nbits(i32 %71)
  %73 = sub nsw i32 30, %72
  %74 = shl i32 %69, %73
  %75 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 -1, %77
  %79 = shl i32 %76, %78
  %80 = add nsw i32 %74, %79
  %81 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 0, %83
  %85 = shl i32 %82, %84
  %86 = sdiv i32 %80, %85
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %67, %47
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bwn_nbits(i32 %92)
  %94 = sub nsw i32 %93, 11
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @bwn_nbits(i32 %101)
  %103 = sub nsw i32 31, %102
  %104 = shl i32 %99, %103
  %105 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %106, %107
  %109 = sdiv i32 %104, %108
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %109, i32* %110, align 4
  br label %126

111:                                              ; preds = %90
  %112 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bwn_nbits(i32 %115)
  %117 = sub nsw i32 31, %116
  %118 = shl i32 %113, %117
  %119 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 0, %121
  %123 = shl i32 %120, %122
  %124 = sdiv i32 %118, %123
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %111, %97
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %132, %134
  %136 = sub nsw i32 %130, %135
  %137 = call i32 @bwn_sqrt(%struct.bwn_mac* %128, i32 %136)
  %138 = sub nsw i32 0, %137
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 3
  store i32 %142, i32* %6, align 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 4
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %127, %38, %30
  %147 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %148 = load i32, i32* @BWN_PHY_RX_COMP_COEFF_S, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %147, i32 %148, i32 65280, i32 %149)
  %151 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %152 = load i32, i32* @BWN_PHY_RX_COMP_COEFF_S, align 4
  %153 = load i32, i32* %6, align 4
  %154 = shl i32 %153, 8
  %155 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %151, i32 %152, i32 255, i32 %154)
  %156 = load i32, i32* %9, align 4
  ret i32 %156
}

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_rx_iq_est(%struct.bwn_mac*, i32, i32, %struct.bwn_phy_lp_iq_est*) #1

declare dso_local i32 @bwn_nbits(i32) #1

declare dso_local i32 @bwn_sqrt(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
