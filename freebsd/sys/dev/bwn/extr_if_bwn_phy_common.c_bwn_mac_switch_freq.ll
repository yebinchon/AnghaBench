; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_common.c_bwn_mac_switch_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_common.c_bwn_mac_switch_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_4__, %struct.bwn_softc* }
%struct.TYPE_4__ = type { i64 }
%struct.bwn_softc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@BHND_CHIPID_BCM4331 = common dso_local global i64 0, align 8
@BWN_TSF_CLK_FRAC_LOW = common dso_local global i32 0, align 4
@BWN_TSF_CLK_FRAC_HIGH = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM43131 = common dso_local global i64 0, align 8
@BHND_CHIPID_BCM43217 = common dso_local global i64 0, align 8
@BHND_CHIPID_BCM43222 = common dso_local global i64 0, align 8
@BHND_CHIPID_BCM43224 = common dso_local global i64 0, align 8
@BHND_CHIPID_BCM43225 = common dso_local global i64 0, align 8
@BHND_CHIPID_BCM43227 = common dso_local global i64 0, align 8
@BHND_CHIPID_BCM43228 = common dso_local global i64 0, align 8
@BWN_PHYTYPE_LCN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"invalid spuravoid mode: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_mac_switch_freq(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 1
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  store %struct.bwn_softc* %9, %struct.bwn_softc** %5, align 8
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %11 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @BHND_CHIPID_BCM4331, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %40 [
    i32 129, label %19
    i32 130, label %26
    i32 128, label %33
  ]

19:                                               ; preds = %17
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %21 = load i32, i32* @BWN_TSF_CLK_FRAC_LOW, align 4
  %22 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %20, i32 %21, i32 6242)
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %24 = load i32, i32* @BWN_TSF_CLK_FRAC_HIGH, align 4
  %25 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %23, i32 %24, i32 6)
  br label %40

26:                                               ; preds = %17
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %28 = load i32, i32* @BWN_TSF_CLK_FRAC_LOW, align 4
  %29 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %27, i32 %28, i32 15984)
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %31 = load i32, i32* @BWN_TSF_CLK_FRAC_HIGH, align 4
  %32 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %30, i32 %31, i32 6)
  br label %40

33:                                               ; preds = %17
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %35 = load i32, i32* @BWN_TSF_CLK_FRAC_LOW, align 4
  %36 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %34, i32 %35, i32 26214)
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %38 = load i32, i32* @BWN_TSF_CLK_FRAC_HIGH, align 4
  %39 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %37, i32 %38, i32 6)
  br label %40

40:                                               ; preds = %17, %33, %26, %19
  br label %125

41:                                               ; preds = %2
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @BHND_CHIPID_BCM43131, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @BHND_CHIPID_BCM43217, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @BHND_CHIPID_BCM43222, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @BHND_CHIPID_BCM43224, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @BHND_CHIPID_BCM43225, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @BHND_CHIPID_BCM43227, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @BHND_CHIPID_BCM43228, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %65, %61, %57, %53, %49, %45, %41
  %70 = load i32, i32* %4, align 4
  switch i32 %70, label %92 [
    i32 129, label %71
    i32 130, label %78
    i32 128, label %85
  ]

71:                                               ; preds = %69
  %72 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %73 = load i32, i32* @BWN_TSF_CLK_FRAC_LOW, align 4
  %74 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %72, i32 %73, i32 8322)
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %76 = load i32, i32* @BWN_TSF_CLK_FRAC_HIGH, align 4
  %77 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %75, i32 %76, i32 8)
  br label %92

78:                                               ; preds = %69
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %80 = load i32, i32* @BWN_TSF_CLK_FRAC_LOW, align 4
  %81 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %79, i32 %80, i32 21313)
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %83 = load i32, i32* @BWN_TSF_CLK_FRAC_HIGH, align 4
  %84 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %82, i32 %83, i32 8)
  br label %92

85:                                               ; preds = %69
  %86 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %87 = load i32, i32* @BWN_TSF_CLK_FRAC_LOW, align 4
  %88 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %86, i32 %87, i32 34953)
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %90 = load i32, i32* @BWN_TSF_CLK_FRAC_HIGH, align 4
  %91 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %89, i32 %90, i32 8)
  br label %92

92:                                               ; preds = %69, %85, %78, %71
  br label %124

93:                                               ; preds = %65
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %95 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BWN_PHYTYPE_LCN, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %93
  %101 = load i32, i32* %4, align 4
  switch i32 %101, label %122 [
    i32 129, label %102
    i32 130, label %108
    i32 128, label %115
  ]

102:                                              ; preds = %100
  %103 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %104 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %122

108:                                              ; preds = %100
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %110 = load i32, i32* @BWN_TSF_CLK_FRAC_LOW, align 4
  %111 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %109, i32 %110, i32 31968)
  %112 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %113 = load i32, i32* @BWN_TSF_CLK_FRAC_HIGH, align 4
  %114 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %112, i32 %113, i32 12)
  br label %122

115:                                              ; preds = %100
  %116 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %117 = load i32, i32* @BWN_TSF_CLK_FRAC_LOW, align 4
  %118 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %116, i32 %117, i32 52429)
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %120 = load i32, i32* @BWN_TSF_CLK_FRAC_HIGH, align 4
  %121 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %119, i32 %120, i32 12)
  br label %122

122:                                              ; preds = %100, %115, %108, %102
  br label %123

123:                                              ; preds = %122, %93
  br label %124

124:                                              ; preds = %123, %92
  br label %125

125:                                              ; preds = %124, %40
  ret void
}

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
