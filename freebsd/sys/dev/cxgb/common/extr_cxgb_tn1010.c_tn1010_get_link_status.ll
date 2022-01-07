; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_tn1010.c_tn1010_get_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_tn1010.c_tn1010_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_DEV_VEND1 = common dso_local global i32 0, align 4
@TN1010_VEND1_STAT = common dso_local global i32 0, align 4
@F_LINK_STAT = common dso_local global i32 0, align 4
@PHY_LINK_UP = common dso_local global i32 0, align 4
@PHY_LINK_DOWN = common dso_local global i32 0, align 4
@ANEG_COMPLETE = common dso_local global i64 0, align 8
@F_ANEG_SPEED_1G = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@MDIO_DEV_ANEG = common dso_local global i32 0, align 4
@ANEG_LPA = common dso_local global i32 0, align 4
@ANEG_ADVER = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @tn1010_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tn1010_get_link_status(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.cphy*, %struct.cphy** %7, align 8
  %19 = load i32, i32* @MDIO_DEV_VEND1, align 4
  %20 = load i32, i32* @TN1010_VEND1_STAT, align 4
  %21 = call i32 @mdio_read(%struct.cphy* %18, i32 %19, i32 %20, i32* %12)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %6, align 4
  br label %139

26:                                               ; preds = %5
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @F_LINK_STAT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @PHY_LINK_UP, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @PHY_LINK_DOWN, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @G_ANEG_STAT(i32 %42)
  %44 = load i64, i64* @ANEG_COMPLETE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %120

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @F_ANEG_SPEED_1G, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @SPEED_1000, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @SPEED_10000, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %16, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %119

59:                                               ; preds = %55
  %60 = load %struct.cphy*, %struct.cphy** %7, align 8
  %61 = load i32, i32* @MDIO_DEV_ANEG, align 4
  %62 = load i32, i32* @ANEG_LPA, align 4
  %63 = call i32 @mdio_read(%struct.cphy* %60, i32 %61, i32 %62, i32* %13)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load %struct.cphy*, %struct.cphy** %7, align 8
  %68 = load i32, i32* @MDIO_DEV_ANEG, align 4
  %69 = load i32, i32* @ANEG_ADVER, align 4
  %70 = call i32 @mdio_read(%struct.cphy* %67, i32 %68, i32 %69, i32* %14)
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %66, %59
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %6, align 4
  br label %139

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @PAUSE_RX, align 4
  %85 = load i32, i32* @PAUSE_TX, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %17, align 4
  br label %118

87:                                               ; preds = %76
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @PAUSE_TX, align 4
  store i32 %103, i32* %17, align 4
  br label %117

104:                                              ; preds = %97, %92, %87
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @PAUSE_RX, align 4
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %114, %109, %104
  br label %117

117:                                              ; preds = %116, %102
  br label %118

118:                                              ; preds = %117, %83
  br label %119

119:                                              ; preds = %118, %55
  br label %120

120:                                              ; preds = %119, %41
  %121 = load i32*, i32** %9, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %16, align 4
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32*, i32** %10, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* @DUPLEX_FULL, align 4
  %131 = load i32*, i32** %10, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32*, i32** %11, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* %17, align 4
  %137 = load i32*, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %132
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %74, %24
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i64 @G_ANEG_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
