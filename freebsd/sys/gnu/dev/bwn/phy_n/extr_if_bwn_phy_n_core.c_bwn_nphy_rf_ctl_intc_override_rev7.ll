; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rf_ctl_intc_override_rev7.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rf_ctl_intc_override_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@BWN_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@BWN_BAND_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i32, i32)* @bwn_nphy_rf_ctl_intc_override_rev7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_rf_ctl_intc_override_rev7(%struct.bwn_mac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %131, %4
  %15 = load i32, i32* %13, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %134

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %20
  br label %131

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %130 [
    i32 130, label %40
    i32 128, label %49
    i32 129, label %64
    i32 131, label %85
    i32 132, label %107
  ]

40:                                               ; preds = %37
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %41, i32 %42, i32 0)
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %45 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %44, i32 767, i32 -8193)
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %47 = load i32, i32* @BWN_RFSEQ_RESET2RX, align 4
  %48 = call i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac* %46, i32 %47)
  br label %130

49:                                               ; preds = %37
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 6
  %54 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %50, i32 %51, i32 -193, i32 %53)
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %55, i32 %56, i32 1024)
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %59 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %58, i32 767, i32 16383)
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %61 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %60, i32 767, i32 8192)
  %62 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %63 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %62, i32 767, i32 1)
  br label %130

64:                                               ; preds = %37
  store i32 48, i32* %10, align 4
  %65 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %66 = call i32 @bwn_current_band(%struct.bwn_mac* %65)
  %67 = load i32, i32* @BWN_BAND_5G, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = shl i32 %70, 5
  store i32 %71, i32* %12, align 4
  br label %75

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 %73, 4
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %76, i32 %77, i32 %79, i32 %80)
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %82, i32 %83, i32 4096)
  br label %130

85:                                               ; preds = %37
  %86 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %87 = call i32 @bwn_current_band(%struct.bwn_mac* %86)
  %88 = load i32, i32* @BWN_BAND_5G, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  store i32 1, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %12, align 4
  br label %95

92:                                               ; preds = %85
  store i32 4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %93 = load i32, i32* %7, align 4
  %94 = shl i32 %93, 2
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %90
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %96, i32 %97, i32 %99, i32 %100)
  %102 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = xor i32 %104, -1
  %106 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %102, i32 %103, i32 %105)
  br label %130

107:                                              ; preds = %37
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %109 = call i32 @bwn_current_band(%struct.bwn_mac* %108)
  %110 = load i32, i32* @BWN_BAND_5G, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  store i32 2, i32* %10, align 4
  store i32 8, i32* %11, align 4
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %118

115:                                              ; preds = %107
  store i32 8, i32* %10, align 4
  store i32 2, i32* %11, align 4
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 3
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %119, i32 %120, i32 %122, i32 %123)
  %125 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %11, align 4
  %128 = xor i32 %127, -1
  %129 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %125, i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %37, %118, %95, %75, %49, %40
  br label %131

131:                                              ; preds = %130, %29
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %14

134:                                              ; preds = %14
  ret void
}

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_current_band(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
