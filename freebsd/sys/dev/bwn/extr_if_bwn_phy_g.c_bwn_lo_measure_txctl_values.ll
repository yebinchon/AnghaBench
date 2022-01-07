; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_measure_txctl_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_measure_txctl_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, i32, i32, %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32, %struct.bwn_txpwr_loctl }
%struct.bwn_txpwr_loctl = type { i32, i32, i32 }

@bwn_lo_measure_txctl_values.tx_bias_values = internal constant [9 x i32] [i32 9, i32 8, i32 10, i32 1, i32 0, i32 2, i32 5, i32 4, i32 6], align 16
@bwn_lo_measure_txctl_values.tx_magn_values = internal constant [2 x i32] [i32 112, i32 64], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_lo_measure_txctl_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_lo_measure_txctl_values(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_g*, align 8
  %5 = alloca %struct.bwn_txpwr_loctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %20, i32 0, i32 0
  store %struct.bwn_phy* %21, %struct.bwn_phy** %3, align 8
  %22 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %23 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %22, i32 0, i32 3
  store %struct.bwn_phy_g* %23, %struct.bwn_phy_g** %4, align 8
  %24 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %25 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %24, i32 0, i32 1
  store %struct.bwn_txpwr_loctl* %25, %struct.bwn_txpwr_loctl** %5, align 8
  %26 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %27 = call i32 @BWN_HAS_LOOPBACK(%struct.bwn_phy* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 6, i32* %10, align 4
  store i32 2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %93

30:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %31 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %32 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 10
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 10, %38
  %40 = call i32 @abs(i32 %39) #3
  %41 = sdiv i32 %40, 6
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @MAX(i32 %42, i32 0)
  %44 = call i32 @MIN(i32 %43, i32 15)
  store i32 %44, i32* %9, align 4
  br label %92

45:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  store i32 36, i32* %12, align 4
  %46 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %47 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %52 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 8272
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %57 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 60, i32* %12, align 4
  br label %61

61:                                               ; preds = %60, %55, %50, %45
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 10, %63
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 10, %68
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 6
  store i32 %75, i32* %13, align 4
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 3
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %12, align 4
  %81 = sdiv i32 %80, 4
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sdiv i32 %82, 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %10, align 4
  br label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %89, %87
  br label %92

92:                                               ; preds = %91, %37
  br label %93

93:                                               ; preds = %92, %29
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %94, i32 67, i32 65520, i32 %95)
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %98 = call i32 @bwn_phy_g_set_bbatt(%struct.bwn_mac* %97, i32 2)
  %99 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %100 = call i32 @bwn_lo_txctl_regtable(%struct.bwn_mac* %99, i32* %7, i32* null)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = xor i32 %101, -1
  store i32 %102, i32* %7, align 4
  %103 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %103, i32 %104, i32 %105)
  %107 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %108 = call i64 @BWN_HAS_TXMAG(%struct.bwn_phy* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %178

110:                                              ; preds = %93
  store i32 65535, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %174, %110
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @N(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @bwn_lo_measure_txctl_values.tx_magn_values, i64 0, i64 0))
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %177

115:                                              ; preds = %111
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* @bwn_lo_measure_txctl_values.tx_magn_values, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %18, align 4
  %120 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %120, i32 82, i32 65295, i32 %121)
  store i32 0, i32* %15, align 4
  br label %123

123:                                              ; preds = %157, %115
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @N(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @bwn_lo_measure_txctl_values.tx_bias_values, i64 0, i64 0))
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %160

127:                                              ; preds = %123
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [9 x i32], [9 x i32]* @bwn_lo_measure_txctl_values.tx_bias_values, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %19, align 4
  %132 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %132, i32 82, i32 65520, i32 %133)
  %135 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @bwn_lo_calcfeed(%struct.bwn_mac* %135, i32 0, i32 %136, i32 %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %127
  %143 = load i32, i32* %19, align 4
  %144 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %145 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %148 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %16, align 4
  store i32 %149, i32* %17, align 4
  br label %150

150:                                              ; preds = %142, %127
  %151 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %152 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %160

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %15, align 4
  br label %123

160:                                              ; preds = %155, %123
  %161 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %163 = call i32 @BWN_RF_READ(%struct.bwn_mac* %162, i32 82)
  %164 = and i32 %163, 65280
  %165 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %166 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %164, %167
  %169 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %170 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %168, %171
  %173 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %161, i32 82, i32 %172)
  br label %174

174:                                              ; preds = %160
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %111

177:                                              ; preds = %111
  br label %185

178:                                              ; preds = %93
  %179 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %180 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %179, i32 0, i32 1
  store i32 0, i32* %180, align 4
  %181 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %182 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %181, i32 0, i32 0
  store i32 0, i32* %182, align 4
  %183 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %184 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %183, i32 82, i32 65520)
  br label %185

185:                                              ; preds = %178, %177
  %186 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %187 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @BWN_GETTIME(i32 %188)
  ret void
}

declare dso_local i32 @BWN_HAS_LOOPBACK(%struct.bwn_phy*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_phy_g_set_bbatt(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_lo_txctl_regtable(%struct.bwn_mac*, i32*, i32*) #1

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i64 @BWN_HAS_TXMAG(%struct.bwn_phy*) #1

declare dso_local i32 @N(i32*) #1

declare dso_local i32 @bwn_lo_calcfeed(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_GETTIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
