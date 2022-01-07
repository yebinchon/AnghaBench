; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_set_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, i32, i32, i64 }

@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BCM577XX_400KHZ_CLKSRC = common dso_local global i32 0, align 4
@BCM577XX_HOST_CONTROL = common dso_local global i32 0, align 4
@BCM577XX_CTRL_CLKSEL_MASK = common dso_local global i32 0, align 4
@BCM577XX_DEFAULT_MAX_DIVIDER = common dso_local global i32 0, align 4
@BCM577XX_ALT_CLOCK_BASE = common dso_local global i32 0, align 4
@BCM577XX_CTRL_CLKSEL_64MHZ = common dso_local global i32 0, align 4
@BCM577XX_CTRL_CLKSEL_SHIFT = common dso_local global i32 0, align 4
@BCM577XX_CTRL_CLKSEL_DEFAULT = common dso_local global i32 0, align 4
@SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK = common dso_local global i32 0, align 4
@SDHCI_SPEC_300 = common dso_local global i64 0, align 8
@SDHCI_200_MAX_DIVIDER = common dso_local global i32 0, align 4
@SDHCI_300_MAX_DIVIDER = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@sdhci_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Divider %d for freq %d (base %d)\0A\00", align 1
@SDHCI_DIVIDER_MASK = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_MASK_LEN = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_HI_MASK = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_HI_SHIFT = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_EN = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_STABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Internal clock never stabilised.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*, i32)* @sdhci_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_clock(%struct.sdhci_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %13 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %204

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %20 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %22 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %23 = call i32 @RD2(%struct.sdhci_slot* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %25 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @WR2(%struct.sdhci_slot* %24, i32 %25, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %204

34:                                               ; preds = %17
  %35 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %39 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SDHCI_QUIRK_BCM577XX_400KHZ_CLKSRC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %34
  %45 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %46 = load i32, i32* @BCM577XX_HOST_CONTROL, align 4
  %47 = call i32 @RD2(%struct.sdhci_slot* %45, i32 %46)
  %48 = load i32, i32* @BCM577XX_CTRL_CLKSEL_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BCM577XX_DEFAULT_MAX_DIVIDER, align 4
  %52 = sdiv i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load i32, i32* @BCM577XX_ALT_CLOCK_BASE, align 4
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @BCM577XX_CTRL_CLKSEL_64MHZ, align 4
  %58 = load i32, i32* @BCM577XX_CTRL_CLKSEL_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %68

62:                                               ; preds = %44
  %63 = load i32, i32* @BCM577XX_CTRL_CLKSEL_DEFAULT, align 4
  %64 = load i32, i32* @BCM577XX_CTRL_CLKSEL_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %70 = load i32, i32* @BCM577XX_HOST_CONTROL, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @WR2(%struct.sdhci_slot* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %34
  %74 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %75 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %82 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 1000
  %85 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %86 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %89 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SDHCI_SPEC_300, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %95

95:                                               ; preds = %107, %93
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @SDHCI_200_MAX_DIVIDER, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %110

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %95

110:                                              ; preds = %103, %95
  %111 = load i32, i32* %9, align 4
  %112 = ashr i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %138

113:                                              ; preds = %87
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 0, i32* %9, align 4
  br label %135

118:                                              ; preds = %113
  store i32 2, i32* %9, align 4
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @SDHCI_300_MAX_DIVIDER, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %9, align 4
  %126 = sdiv i32 %124, %125
  %127 = load i32, i32* %4, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %134

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 2
  store i32 %133, i32* %9, align 4
  br label %119

134:                                              ; preds = %129, %119
  br label %135

135:                                              ; preds = %134, %117
  %136 = load i32, i32* %9, align 4
  %137 = ashr i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %135, %110
  %139 = load i64, i64* @bootverbose, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i64, i64* @sdhci_debug, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141, %138
  %145 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %144, %141
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @SDHCI_DIVIDER_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @SDHCI_DIVIDER_SHIFT, align 4
  %155 = shl i32 %153, %154
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @SDHCI_DIVIDER_MASK_LEN, align 4
  %158 = ashr i32 %156, %157
  %159 = load i32, i32* @SDHCI_DIVIDER_HI_MASK, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @SDHCI_DIVIDER_HI_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %166 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @WR2(%struct.sdhci_slot* %165, i32 %166, i32 %167)
  %169 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  %172 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %173 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @WR2(%struct.sdhci_slot* %172, i32 %173, i32 %174)
  store i32 10, i32* %10, align 4
  br label %176

176:                                              ; preds = %192, %150
  %177 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %178 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %179 = call i32 @RD2(%struct.sdhci_slot* %177, i32 %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* @SDHCI_CLOCK_INT_STABLE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  br i1 %183, label %184, label %196

184:                                              ; preds = %176
  %185 = load i32, i32* %10, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %189 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %190 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %191 = call i32 @sdhci_dumpregs(%struct.sdhci_slot* %190)
  br label %204

192:                                              ; preds = %184
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %10, align 4
  %195 = call i32 @DELAY(i32 1000)
  br label %176

196:                                              ; preds = %176
  %197 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %201 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @WR2(%struct.sdhci_slot* %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %196, %187, %33, %16
  ret void
}

declare dso_local i32 @RD2(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @WR2(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*, ...) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_slot*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
