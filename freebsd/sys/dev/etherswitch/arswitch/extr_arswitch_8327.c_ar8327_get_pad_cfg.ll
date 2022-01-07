; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_get_pad_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_get_pad_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8327_pad_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR8327_PAD_MAC_MII_EN = common dso_local global i32 0, align 4
@AR8327_PAD_MAC_MII_RXCLK_SEL = common dso_local global i32 0, align 4
@AR8327_PAD_MAC_MII_TXCLK_SEL = common dso_local global i32 0, align 4
@AR8327_PAD_MAC_GMII_EN = common dso_local global i32 0, align 4
@AR8327_PAD_MAC_GMII_RXCLK_SEL = common dso_local global i32 0, align 4
@AR8327_PAD_MAC_GMII_TXCLK_SEL = common dso_local global i32 0, align 4
@AR8327_PAD_SGMII_EN = common dso_local global i32 0, align 4
@AR8327_PAD_RGMII_TXCLK_DELAY_SEL_S = common dso_local global i32 0, align 4
@AR8327_PAD_RGMII_RXCLK_DELAY_SEL_S = common dso_local global i32 0, align 4
@AR8327_PAD_RGMII_RXCLK_DELAY_EN = common dso_local global i32 0, align 4
@AR8327_PAD_RGMII_TXCLK_DELAY_EN = common dso_local global i32 0, align 4
@AR8327_PAD_SGMII_DELAY_EN = common dso_local global i32 0, align 4
@AR8327_PAD_PHY_MII_EN = common dso_local global i32 0, align 4
@AR8327_PAD_PHY_MII_RXCLK_SEL = common dso_local global i32 0, align 4
@AR8327_PAD_PHY_MII_TXCLK_SEL = common dso_local global i32 0, align 4
@AR8327_PAD_PHY_GMII_EN = common dso_local global i32 0, align 4
@AR8327_PAD_PHY_GMII_PIPE_RXCLK_SEL = common dso_local global i32 0, align 4
@AR8327_PAD_PHY_GMII_RXCLK_SEL = common dso_local global i32 0, align 4
@AR8327_PAD_PHY_GMII_TXCLK_SEL = common dso_local global i32 0, align 4
@AR8327_PAD_RGMII_EN = common dso_local global i32 0, align 4
@AR8327_PAD_PHYX_GMII_EN = common dso_local global i32 0, align 4
@AR8327_PAD_PHYX_RGMII_EN = common dso_local global i32 0, align 4
@AR8327_PAD_PHYX_MII_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8327_pad_cfg*)* @ar8327_get_pad_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_get_pad_cfg(%struct.ar8327_pad_cfg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8327_pad_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8327_pad_cfg* %0, %struct.ar8327_pad_cfg** %3, align 8
  %5 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %6 = icmp ne %struct.ar8327_pad_cfg* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %187

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  %9 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %10 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %185 [
    i32 131, label %12
    i32 136, label %13
    i32 137, label %33
    i32 132, label %53
    i32 134, label %96
    i32 135, label %116
    i32 133, label %145
    i32 130, label %179
    i32 128, label %181
    i32 129, label %183
  ]

12:                                               ; preds = %8
  br label %185

13:                                               ; preds = %8
  %14 = load i32, i32* @AR8327_PAD_MAC_MII_EN, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %16 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @AR8327_PAD_MAC_MII_RXCLK_SEL, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %25 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @AR8327_PAD_MAC_MII_TXCLK_SEL, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %23
  br label %185

33:                                               ; preds = %8
  %34 = load i32, i32* @AR8327_PAD_MAC_GMII_EN, align 4
  store i32 %34, i32* %4, align 4
  %35 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %36 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @AR8327_PAD_MAC_GMII_RXCLK_SEL, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %45 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @AR8327_PAD_MAC_GMII_TXCLK_SEL, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %43
  br label %185

53:                                               ; preds = %8
  %54 = load i32, i32* @AR8327_PAD_SGMII_EN, align 4
  store i32 %54, i32* %4, align 4
  %55 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %56 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AR8327_PAD_RGMII_TXCLK_DELAY_SEL_S, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %63 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AR8327_PAD_RGMII_RXCLK_DELAY_SEL_S, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %70 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %53
  %74 = load i32, i32* @AR8327_PAD_RGMII_RXCLK_DELAY_EN, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %53
  %78 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %79 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @AR8327_PAD_RGMII_TXCLK_DELAY_EN, align 4
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %88 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @AR8327_PAD_SGMII_DELAY_EN, align 4
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %86
  br label %185

96:                                               ; preds = %8
  %97 = load i32, i32* @AR8327_PAD_PHY_MII_EN, align 4
  store i32 %97, i32* %4, align 4
  %98 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %99 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @AR8327_PAD_PHY_MII_RXCLK_SEL, align 4
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %96
  %107 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %108 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @AR8327_PAD_PHY_MII_TXCLK_SEL, align 4
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %106
  br label %185

116:                                              ; preds = %8
  %117 = load i32, i32* @AR8327_PAD_PHY_GMII_EN, align 4
  store i32 %117, i32* %4, align 4
  %118 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %119 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* @AR8327_PAD_PHY_GMII_PIPE_RXCLK_SEL, align 4
  %124 = load i32, i32* %4, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %128 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @AR8327_PAD_PHY_GMII_RXCLK_SEL, align 4
  %133 = load i32, i32* %4, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %137 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @AR8327_PAD_PHY_GMII_TXCLK_SEL, align 4
  %142 = load i32, i32* %4, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %140, %135
  br label %185

145:                                              ; preds = %8
  %146 = load i32, i32* @AR8327_PAD_RGMII_EN, align 4
  store i32 %146, i32* %4, align 4
  %147 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %148 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @AR8327_PAD_RGMII_TXCLK_DELAY_SEL_S, align 4
  %151 = shl i32 %149, %150
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  %154 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %155 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @AR8327_PAD_RGMII_RXCLK_DELAY_SEL_S, align 4
  %158 = shl i32 %156, %157
  %159 = load i32, i32* %4, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %4, align 4
  %161 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %162 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %145
  %166 = load i32, i32* @AR8327_PAD_RGMII_RXCLK_DELAY_EN, align 4
  %167 = load i32, i32* %4, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %165, %145
  %170 = load %struct.ar8327_pad_cfg*, %struct.ar8327_pad_cfg** %3, align 8
  %171 = getelementptr inbounds %struct.ar8327_pad_cfg, %struct.ar8327_pad_cfg* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32, i32* @AR8327_PAD_RGMII_TXCLK_DELAY_EN, align 4
  %176 = load i32, i32* %4, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %174, %169
  br label %185

179:                                              ; preds = %8
  %180 = load i32, i32* @AR8327_PAD_PHYX_GMII_EN, align 4
  store i32 %180, i32* %4, align 4
  br label %185

181:                                              ; preds = %8
  %182 = load i32, i32* @AR8327_PAD_PHYX_RGMII_EN, align 4
  store i32 %182, i32* %4, align 4
  br label %185

183:                                              ; preds = %8
  %184 = load i32, i32* @AR8327_PAD_PHYX_MII_EN, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %8, %183, %181, %179, %178, %144, %115, %95, %52, %32, %12
  %186 = load i32, i32* %4, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %7
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
