; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_phy812_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_phy812_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_rf, %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_rf = type { i32, i32 }
%struct.bwi_phy = type { i32, i32 }
%struct.bwi_softc = type { i32 }

@BWI_PHY_F_LINKED = common dso_local global i32 0, align 4
@BWI_CARD_F_EXT_LNA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unsupported lpd\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"never reached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*, i32)* @bwi_phy812_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_phy812_value(%struct.bwi_mac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwi_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwi_softc*, align 8
  %7 = alloca %struct.bwi_phy*, align 8
  %8 = alloca %struct.bwi_rf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 2
  %14 = load %struct.bwi_softc*, %struct.bwi_softc** %13, align 8
  store %struct.bwi_softc* %14, %struct.bwi_softc** %6, align 8
  %15 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %16 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %15, i32 0, i32 1
  store %struct.bwi_phy* %16, %struct.bwi_phy** %7, align 8
  %17 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %18 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %17, i32 0, i32 0
  store %struct.bwi_rf* %18, %struct.bwi_rf** %8, align 8
  %19 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %20 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %134

26:                                               ; preds = %2
  %27 = load %struct.bwi_rf*, %struct.bwi_rf** %8, align 8
  %28 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.bwi_rf*, %struct.bwi_rf** %8, align 8
  %31 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 62
  store i32 %36, i32* %9, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 38
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 70
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 70
  store i32 %45, i32* %9, align 4
  store i32 12288, i32* %10, align 4
  br label %63

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 58
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 58
  store i32 %51, i32* %9, align 4
  store i32 4096, i32* %10, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %53, 46
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 46
  store i32 %57, i32* %9, align 4
  store i32 8192, i32* %10, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 16
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %43
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %76, %63
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 6, %68
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 6
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %79

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %64

79:                                               ; preds = %74, %64
  %80 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %81 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 7
  br i1 %83, label %84, label %116

84:                                               ; preds = %79
  %85 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %86 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BWI_CARD_F_EXT_LNA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %84
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, 32768
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 %98, 8
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %5, align 4
  switch i32 %102, label %113 [
    i32 17, label %103
    i32 1, label %104
    i32 257, label %107
    i32 256, label %110
  ]

103:                                              ; preds = %97
  store i32 36754, i32* %3, align 4
  br label %134

104:                                              ; preds = %97
  %105 = load i32, i32* %10, align 4
  %106 = or i32 32914, %105
  store i32 %106, i32* %3, align 4
  br label %134

107:                                              ; preds = %97
  %108 = load i32, i32* %10, align 4
  %109 = or i32 8338, %108
  store i32 %109, i32* %3, align 4
  br label %134

110:                                              ; preds = %97
  %111 = load i32, i32* %10, align 4
  %112 = or i32 8339, %111
  store i32 %112, i32* %3, align 4
  br label %134

113:                                              ; preds = %97
  %114 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113
  br label %132

116:                                              ; preds = %84, %79
  %117 = load i32, i32* %11, align 4
  %118 = shl i32 %117, 8
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %5, align 4
  switch i32 %121, label %129 [
    i32 17, label %122
    i32 1, label %123
    i32 257, label %123
    i32 256, label %126
  ]

122:                                              ; preds = %116
  store i32 3986, i32* %3, align 4
  br label %134

123:                                              ; preds = %116, %116
  %124 = load i32, i32* %10, align 4
  %125 = or i32 146, %124
  store i32 %125, i32* %3, align 4
  br label %134

126:                                              ; preds = %116
  %127 = load i32, i32* %10, align 4
  %128 = or i32 147, %127
  store i32 %128, i32* %3, align 4
  br label %134

129:                                              ; preds = %116
  %130 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131, %115
  %133 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %126, %123, %122, %110, %107, %104, %103, %25
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
