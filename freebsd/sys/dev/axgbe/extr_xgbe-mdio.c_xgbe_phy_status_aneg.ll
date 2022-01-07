; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_phy_status_aneg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_phy_status_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_Backplane = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i64 0, align 8
@MDIO_AN_LPA = common dso_local global i64 0, align 8
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISED_10000baseKR_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseKX_Full = common dso_local global i32 0, align 4
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@XGBE_MODE_KR = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@XGBE_MODE_KX = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_status_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_status_aneg(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %1
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  call void @xgbe_phy_status_force(%struct.xgbe_prv_data* %20)
  br label %212

21:                                               ; preds = %14
  %22 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @ADVERTISED_Backplane, align 4
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = load i32, i32* @MDIO_MMD_AN, align 4
  %36 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %37 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %34, i32 %35, i64 %36)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = load i32, i32* @MDIO_MMD_AN, align 4
  %40 = load i64, i64* @MDIO_AN_LPA, align 8
  %41 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %38, i32 %39, i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 1024
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %21
  %46 = load i32, i32* @ADVERTISED_Pause, align 4
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %21
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 2048
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %59 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %56, %52
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %63
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %71 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 8
  %73 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %74 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %76, %77
  %79 = and i32 %78, 1024
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %83 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %86 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 4
  br label %113

88:                                               ; preds = %69
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %89, %90
  %92 = and i32 %91, 2048
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load i32, i32* %3, align 4
  %96 = and i32 %95, 1024
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %100 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i32 1, i32* %101, align 4
  br label %111

102:                                              ; preds = %94
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, 1024
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %108 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %102
  br label %111

111:                                              ; preds = %110, %98
  br label %112

112:                                              ; preds = %111, %88
  br label %113

113:                                              ; preds = %112, %81
  br label %114

114:                                              ; preds = %113, %63
  %115 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %116 = load i32, i32* @MDIO_MMD_AN, align 4
  %117 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %118 = add nsw i64 %117, 1
  %119 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %115, i32 %116, i64 %118)
  store i32 %119, i32* %3, align 4
  %120 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %121 = load i32, i32* @MDIO_MMD_AN, align 4
  %122 = load i64, i64* @MDIO_AN_LPA, align 8
  %123 = add nsw i64 %122, 1
  %124 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %120, i32 %121, i64 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = and i32 %125, 128
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %114
  %129 = load i32, i32* @ADVERTISED_10000baseKR_Full, align 4
  %130 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %131 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %128, %114
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, 32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %141 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %157 [
    i32 129, label %143
    i32 128, label %150
  ]

143:                                              ; preds = %139
  %144 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %145 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %146 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %144
  store i32 %149, i32* %147, align 4
  br label %157

150:                                              ; preds = %139
  %151 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %152 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %153 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %151
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %139, %150, %143
  br label %158

158:                                              ; preds = %157, %135
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* %3, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %3, align 4
  %162 = load i32, i32* %3, align 4
  %163 = and i32 %162, 128
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load i32, i32* @SPEED_10000, align 4
  %167 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %168 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  store i32 %166, i32* %169, align 8
  %170 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %171 = load i32, i32* @XGBE_MODE_KR, align 4
  %172 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %170, i32 %171)
  br label %201

173:                                              ; preds = %158
  %174 = load i32, i32* %3, align 4
  %175 = and i32 %174, 32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %173
  %178 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %179 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  switch i32 %180, label %191 [
    i32 129, label %181
    i32 128, label %186
  ]

181:                                              ; preds = %177
  %182 = load i32, i32* @SPEED_1000, align 4
  %183 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %184 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 3
  store i32 %182, i32* %185, align 8
  br label %191

186:                                              ; preds = %177
  %187 = load i32, i32* @SPEED_2500, align 4
  %188 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %189 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 8
  br label %191

191:                                              ; preds = %177, %186, %181
  %192 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %193 = load i32, i32* @XGBE_MODE_KX, align 4
  %194 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %192, i32 %193)
  br label %200

195:                                              ; preds = %173
  %196 = load i32, i32* @SPEED_UNKNOWN, align 4
  %197 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %198 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 3
  store i32 %196, i32* %199, align 8
  br label %200

200:                                              ; preds = %195, %191
  br label %201

201:                                              ; preds = %200, %165
  %202 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %203 = load i32, i32* @MDIO_MMD_AN, align 4
  %204 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %205 = add nsw i64 %204, 2
  %206 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %202, i32 %203, i64 %205)
  store i32 %206, i32* %3, align 4
  %207 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %208 = load i32, i32* @MDIO_MMD_AN, align 4
  %209 = load i64, i64* @MDIO_AN_LPA, align 8
  %210 = add nsw i64 %209, 2
  %211 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %207, i32 %208, i64 %210)
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %201, %19
  ret void
}

declare dso_local void @xgbe_phy_status_force(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i64) #1

declare dso_local i32 @xgbe_set_mode(%struct.xgbe_prv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
