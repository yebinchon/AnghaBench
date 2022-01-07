; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_xlp_ax_nae_lane_reset_txpll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_xlp_ax_nae_lane_reset_txpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHY_LANE_CTRL_RST = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_PWRDOWN = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_PHYMODE_POS = common dso_local global i32 0, align 4
@PHYMODE_SGMII = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_BPC_XAUI = common dso_local global i32 0, align 4
@PHY = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_ADDR_POS = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_CMD_READ = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_CMD_START = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_CMD_PENDING = common dso_local global i32 0, align 4
@PHY_LANE_CTRL_CMD_WRITE = common dso_local global i32 0, align 4
@PHY_LANE_0_CTRL = common dso_local global i32 0, align 4
@PHY_LANE_STAT_PCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlp_ax_nae_lane_reset_txpll(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @PHY_LANE_CTRL_RST, align 4
  %13 = load i32, i32* @PHY_LANE_CTRL_PWRDOWN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PHY_LANE_CTRL_PHYMODE_POS, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PHYMODE_SGMII, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @PHY_LANE_CTRL_BPC_XAUI, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PHY, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @NAE_REG(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @nlm_write_nae_reg(i32 %27, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %36, label %76

36:                                               ; preds = %26
  store i32 8388608, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PHYMODE_SGMII, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @PHY_LANE_CTRL_BPC_XAUI, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PHY, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @NAE_REG(i32 %46, i32 %47, i32 %48)
  %50 = call i32 @nlm_read_nae_reg(i32 %45, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @PHY_LANE_CTRL_RST, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @PHY, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @NAE_REG(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @nlm_write_nae_reg(i32 %58, i32 %62, i32 %63)
  %65 = call i32 @DELAY(i32 20000)
  %66 = load i32, i32* @PHY_LANE_CTRL_RST, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @PHY, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @NAE_REG(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @nlm_write_nae_reg(i32 %69, i32 %73, i32 %74)
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %44, %26
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PHY, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @NAE_REG(i32 %78, i32 %79, i32 %80)
  %82 = call i32 @nlm_read_nae_reg(i32 %77, i32 %81)
  %83 = and i32 %82, -4194304
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @PHY, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @NAE_REG(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @PHY_LANE_CTRL_ADDR_POS, align 4
  %90 = shl i32 102, %89
  %91 = load i32, i32* @PHY_LANE_CTRL_CMD_READ, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @PHY_LANE_CTRL_CMD_START, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PHY_LANE_CTRL_RST, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @nlm_write_nae_reg(i32 %84, i32 %88, i32 %100)
  br label %102

102:                                              ; preds = %112, %76
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @PHY, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @NAE_REG(i32 %104, i32 %105, i32 %106)
  %108 = call i32 @nlm_read_nae_reg(i32 %103, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @PHY_LANE_CTRL_CMD_PENDING, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %102

113:                                              ; preds = %102
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, 255
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, -17
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @PHY, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @NAE_REG(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* @PHY_LANE_CTRL_ADDR_POS, align 4
  %124 = shl i32 102, %123
  %125 = load i32, i32* @PHY_LANE_CTRL_CMD_WRITE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @PHY_LANE_CTRL_CMD_START, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %11, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @nlm_write_nae_reg(i32 %118, i32 %122, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @PHY, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @NAE_REG(i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* @PHY_LANE_CTRL_ADDR_POS, align 4
  %142 = shl i32 102, %141
  %143 = load i32, i32* @PHY_LANE_CTRL_CMD_WRITE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @PHY_LANE_CTRL_CMD_START, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @nlm_write_nae_reg(i32 %136, i32 %140, i32 %152)
  br label %154

154:                                              ; preds = %167, %113
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @PHY, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @PHY_LANE_0_CTRL, align 4
  %160 = sub nsw i32 %158, %159
  %161 = call i32 @NAE_REG(i32 %156, i32 %157, i32 %160)
  %162 = call i32 @nlm_read_nae_reg(i32 %155, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* @PHY_LANE_STAT_PCR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  br label %154

168:                                              ; preds = %154
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @PHY, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @NAE_REG(i32 %170, i32 %171, i32 %172)
  %174 = call i32 @nlm_read_nae_reg(i32 %169, i32 %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = and i32 %175, -537395200
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @PHY, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @NAE_REG(i32 %178, i32 %179, i32 %180)
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %9, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @nlm_write_nae_reg(i32 %177, i32 %181, i32 %184)
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @NAE_REG(i32, i32, i32) #1

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
