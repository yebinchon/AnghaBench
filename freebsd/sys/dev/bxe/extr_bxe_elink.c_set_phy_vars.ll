; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_set_phy_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_set_phy_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i64, i64, i64*, %struct.TYPE_2__*, i32*, i32*, i32*, %struct.bxe_softc* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@PORT_HW_CFG_PHY_SWAPPED_ENABLED = common dso_local global i64 0, align 8
@ELINK_INT_PHY = common dso_local global i64 0, align 8
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@ELINK_EXT_PHY2 = common dso_local global i64 0, align 8
@ELINK_SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@LINK_STATUS_AUTO_NEGOTIATE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"req_flow_ctrl %x, req_line_speed %x, speed_cap_mask %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_vars*)* @set_phy_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_phy_vars(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca %struct.elink_vars*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %4, align 8
  %10 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 7
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  store %struct.bxe_softc* %12, %struct.bxe_softc** %5, align 8
  %13 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %14 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PORT_HW_CFG_PHY_SWAPPED_ENABLED, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* @ELINK_INT_PHY, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %132, %2
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %22 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %135

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @ELINK_LINK_CONFIG_IDX(i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @ELINK_EXT_PHY2, align 8
  store i64 %36, i64* %6, align 8
  br label %44

37:                                               ; preds = %31
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @ELINK_EXT_PHY2, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @ELINK_EXT_PHY1, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %47 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %53 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %51, i32* %57, align 4
  %58 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %59 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %65 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %63, i64* %69, align 8
  %70 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %71 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %77 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %75, i32* %81, align 8
  %82 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %83 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %89 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  store i32 %87, i32* %93, align 8
  %94 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %95 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %45
  %103 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_ENABLED, align 4
  %104 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %105 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %45
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %110 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %111 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %118 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %125 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %109, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %116, i64 %123, i32 %130)
  br label %132

132:                                              ; preds = %108
  %133 = load i64, i64* %7, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %7, align 8
  br label %19

135:                                              ; preds = %19
  ret void
}

declare dso_local i64 @ELINK_LINK_CONFIG_IDX(i64) #1

declare dso_local i32 @ELINK_DEBUG_P3(%struct.bxe_softc*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
