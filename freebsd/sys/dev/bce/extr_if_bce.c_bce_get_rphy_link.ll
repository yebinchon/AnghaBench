; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_get_rphy_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_get_rphy_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32 }

@BCE_PHY_REMOTE_PORT_FIBER_FLAG = common dso_local global i32 0, align 4
@BCE_RPHY_SERDES_LINK = common dso_local global i32 0, align 4
@BCE_RPHY_COPPER_LINK = common dso_local global i32 0, align 4
@BCE_NETLINK_ANEG_ENB = common dso_local global i32 0, align 4
@BCE_NETLINK_SPEED_10HALF = common dso_local global i32 0, align 4
@BCE_NETLINK_SPEED_10FULL = common dso_local global i32 0, align 4
@BCE_NETLINK_SPEED_100HALF = common dso_local global i32 0, align 4
@BCE_NETLINK_SPEED_100FULL = common dso_local global i32 0, align 4
@BCE_NETLINK_SPEED_1000HALF = common dso_local global i32 0, align 4
@BCE_NETLINK_SPEED_1000FULL = common dso_local global i32 0, align 4
@BCE_NETLINK_SPEED_2500HALF = common dso_local global i32 0, align 4
@BCE_NETLINK_SPEED_2500FULL = common dso_local global i32 0, align 4
@BCE_NETLINK_FC_PAUSE_SYM = common dso_local global i32 0, align 4
@BCE_NETLINK_FC_PAUSE_ASYM = common dso_local global i32 0, align 4
@BCE_NETLINK_PHY_APP_REMOTE = common dso_local global i32 0, align 4
@BCE_NETLINK_ETH_AT_WIRESPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bce_softc*)* @bce_get_rphy_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bce_get_rphy_link(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BCE_PHY_REMOTE_PORT_FIBER_FLAG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %14 = load i32, i32* @BCE_RPHY_SERDES_LINK, align 4
  %15 = call i32 @bce_shmem_rd(%struct.bce_softc* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %18 = load i32, i32* @BCE_RPHY_COPPER_LINK, align 4
  %19 = call i32 @bce_shmem_rd(%struct.bce_softc* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @BCE_NETLINK_ANEG_ENB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @BCE_NETLINK_ANEG_ENB, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @BCE_NETLINK_SPEED_10HALF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @BCE_NETLINK_SPEED_10HALF, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @BCE_NETLINK_SPEED_10FULL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @BCE_NETLINK_SPEED_10FULL, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @BCE_NETLINK_SPEED_100HALF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @BCE_NETLINK_SPEED_100HALF, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @BCE_NETLINK_SPEED_100FULL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @BCE_NETLINK_SPEED_100FULL, align 4
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @BCE_NETLINK_SPEED_1000HALF, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @BCE_NETLINK_SPEED_1000HALF, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @BCE_NETLINK_SPEED_1000FULL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @BCE_NETLINK_SPEED_1000FULL, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @BCE_NETLINK_SPEED_2500HALF, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @BCE_NETLINK_SPEED_2500HALF, align 4
  %96 = load i32, i32* %3, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @BCE_NETLINK_SPEED_2500FULL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @BCE_NETLINK_SPEED_2500FULL, align 4
  %105 = load i32, i32* %3, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* @BCE_NETLINK_FC_PAUSE_SYM, align 4
  %114 = load i32, i32* @BCE_NETLINK_FC_PAUSE_ASYM, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %112, %109
  %119 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %120 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @BCE_PHY_REMOTE_PORT_FIBER_FLAG, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32, i32* @BCE_NETLINK_PHY_APP_REMOTE, align 4
  %127 = load i32, i32* @BCE_NETLINK_ETH_AT_WIRESPEED, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %118
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @bce_shmem_rd(%struct.bce_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
