; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_lem_smartspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_lem_smartspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }

@e1000_phy_igp = common dso_local global i64 0, align 8
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_MS_CONFIG_FAULT = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@CR_1000T_MS_ENABLE = common dso_local global i32 0, align 4
@PHY_CONTROL = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_RESTART_AUTO_NEG = common dso_local global i32 0, align 4
@EM_SMARTSPEED_DOWNSHIFT = common dso_local global i64 0, align 8
@EM_SMARTSPEED_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @lem_smartspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lem_smartspeed(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_phy_igp, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %8
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23, %16, %8, %1
  br label %170

33:                                               ; preds = %23
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %111

38:                                               ; preds = %33
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 1
  %41 = load i32, i32* @PHY_1000T_STATUS, align 4
  %42 = call i32 @e1000_read_phy_reg(%struct.TYPE_8__* %40, i32 %41, i32* %3)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SR_1000T_MS_CONFIG_FAULT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %170

48:                                               ; preds = %38
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 1
  %51 = load i32, i32* @PHY_1000T_STATUS, align 4
  %52 = call i32 @e1000_read_phy_reg(%struct.TYPE_8__* %50, i32 %51, i32* %3)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SR_1000T_MS_CONFIG_FAULT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %110

57:                                               ; preds = %48
  %58 = load %struct.adapter*, %struct.adapter** %2, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 1
  %60 = load i32, i32* @PHY_1000T_CTRL, align 4
  %61 = call i32 @e1000_read_phy_reg(%struct.TYPE_8__* %59, i32 %60, i32* %3)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %109

66:                                               ; preds = %57
  %67 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 1
  %73 = load i32, i32* @PHY_1000T_CTRL, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @e1000_write_phy_reg(%struct.TYPE_8__* %72, i32 %73, i32 %74)
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.adapter*, %struct.adapter** %2, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %66
  %87 = load %struct.adapter*, %struct.adapter** %2, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 1
  %89 = call i32 @e1000_copper_link_autoneg(%struct.TYPE_8__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %86
  %92 = load %struct.adapter*, %struct.adapter** %2, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 1
  %94 = load i32, i32* @PHY_CONTROL, align 4
  %95 = call i32 @e1000_read_phy_reg(%struct.TYPE_8__* %93, i32 %94, i32* %3)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %99 = load i32, i32* @MII_CR_RESTART_AUTO_NEG, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  %103 = load %struct.adapter*, %struct.adapter** %2, align 8
  %104 = getelementptr inbounds %struct.adapter, %struct.adapter* %103, i32 0, i32 1
  %105 = load i32, i32* @PHY_CONTROL, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @e1000_write_phy_reg(%struct.TYPE_8__* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %97, %91, %86, %66
  br label %109

109:                                              ; preds = %108, %57
  br label %110

110:                                              ; preds = %109, %48
  br label %170

111:                                              ; preds = %33
  %112 = load %struct.adapter*, %struct.adapter** %2, align 8
  %113 = getelementptr inbounds %struct.adapter, %struct.adapter* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @EM_SMARTSPEED_DOWNSHIFT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %159

117:                                              ; preds = %111
  %118 = load %struct.adapter*, %struct.adapter** %2, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 1
  %120 = load i32, i32* @PHY_1000T_CTRL, align 4
  %121 = call i32 @e1000_read_phy_reg(%struct.TYPE_8__* %119, i32 %120, i32* %3)
  %122 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %123 = load i32, i32* %3, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %3, align 4
  %125 = load %struct.adapter*, %struct.adapter** %2, align 8
  %126 = getelementptr inbounds %struct.adapter, %struct.adapter* %125, i32 0, i32 1
  %127 = load i32, i32* @PHY_1000T_CTRL, align 4
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @e1000_write_phy_reg(%struct.TYPE_8__* %126, i32 %127, i32 %128)
  %130 = load %struct.adapter*, %struct.adapter** %2, align 8
  %131 = getelementptr inbounds %struct.adapter, %struct.adapter* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %117
  %137 = load %struct.adapter*, %struct.adapter** %2, align 8
  %138 = getelementptr inbounds %struct.adapter, %struct.adapter* %137, i32 0, i32 1
  %139 = call i32 @e1000_copper_link_autoneg(%struct.TYPE_8__* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %136
  %142 = load %struct.adapter*, %struct.adapter** %2, align 8
  %143 = getelementptr inbounds %struct.adapter, %struct.adapter* %142, i32 0, i32 1
  %144 = load i32, i32* @PHY_CONTROL, align 4
  %145 = call i32 @e1000_read_phy_reg(%struct.TYPE_8__* %143, i32 %144, i32* %3)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %149 = load i32, i32* @MII_CR_RESTART_AUTO_NEG, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %3, align 4
  %153 = load %struct.adapter*, %struct.adapter** %2, align 8
  %154 = getelementptr inbounds %struct.adapter, %struct.adapter* %153, i32 0, i32 1
  %155 = load i32, i32* @PHY_CONTROL, align 4
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @e1000_write_phy_reg(%struct.TYPE_8__* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %147, %141, %136, %117
  br label %159

159:                                              ; preds = %158, %111
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.adapter*, %struct.adapter** %2, align 8
  %162 = getelementptr inbounds %struct.adapter, %struct.adapter* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %162, align 8
  %165 = load i64, i64* @EM_SMARTSPEED_MAX, align 8
  %166 = icmp eq i64 %163, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load %struct.adapter*, %struct.adapter** %2, align 8
  %169 = getelementptr inbounds %struct.adapter, %struct.adapter* %168, i32 0, i32 0
  store i64 0, i64* %169, align 8
  br label %170

170:                                              ; preds = %32, %47, %110, %167, %160
  ret void
}

declare dso_local i32 @e1000_read_phy_reg(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @e1000_copper_link_autoneg(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
