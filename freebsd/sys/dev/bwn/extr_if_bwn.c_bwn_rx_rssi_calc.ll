; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_rx_rssi_calc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_rx_rssi_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_4__*, %struct.bwn_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bwn_phy = type { i32, i32, %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32* }

@BHND_BFL_ADCDIV = common dso_local global i32 0, align 4
@BWN_PHYTYPE_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32, i32, i32, i32)* @bwn_rx_rssi_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_rx_rssi_calc(%struct.bwn_mac* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bwn_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bwn_phy*, align 8
  %12 = alloca %struct.bwn_phy_g*, align 8
  %13 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 1
  store %struct.bwn_phy* %15, %struct.bwn_phy** %11, align 8
  %16 = load %struct.bwn_phy*, %struct.bwn_phy** %11, align 8
  %17 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %16, i32 0, i32 2
  store %struct.bwn_phy_g* %17, %struct.bwn_phy_g** %12, align 8
  %18 = load %struct.bwn_phy*, %struct.bwn_phy** %11, align 8
  %19 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %101 [
    i32 8272, label %21
    i32 8288, label %92
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp sgt i32 %26, 127
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = sub nsw i32 %29, 256
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %13, align 4
  %33 = mul nsw i32 %32, 73
  %34 = sdiv i32 %33, 64
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 25
  store i32 %39, i32* %13, align 4
  br label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %41, 3
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %91

44:                                               ; preds = %21
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %46 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BHND_BFL_ADCDIV, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 63
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 63, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %12, align 8
  %60 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 31, %66
  %68 = mul nsw i32 %67, -131
  %69 = sdiv i32 %68, 128
  %70 = sub nsw i32 %69, 57
  store i32 %70, i32* %13, align 4
  br label %78

71:                                               ; preds = %44
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 31, %73
  %75 = mul nsw i32 %74, -149
  %76 = sdiv i32 %75, 128
  %77 = sub nsw i32 %76, 68
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %71, %58
  %79 = load %struct.bwn_phy*, %struct.bwn_phy** %11, align 8
  %80 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BWN_PHYTYPE_G, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 25
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %87, %84, %78
  br label %91

91:                                               ; preds = %90, %43
  br label %116

92:                                               ; preds = %5
  %93 = load i32, i32* %7, align 4
  %94 = icmp sgt i32 %93, 127
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 256
  store i32 %97, i32* %13, align 4
  br label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %98, %95
  br label %116

101:                                              ; preds = %5
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %103, 11
  %105 = mul nsw i32 %104, 103
  %106 = sdiv i32 %105, 64
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %110, 109
  store i32 %111, i32* %13, align 4
  br label %115

112:                                              ; preds = %101
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %113, 83
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %100, %91
  %117 = load i32, i32* %13, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
