; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_measure_gain_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_measure_gain_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i32)* @bwn_lo_measure_gain_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_lo_measure_gain_values(%struct.bwn_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwn_phy*, align 8
  %8 = alloca %struct.bwn_phy_g*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 0
  store %struct.bwn_phy* %13, %struct.bwn_phy** %7, align 8
  %14 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %15 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %14, i32 0, i32 0
  store %struct.bwn_phy_g* %15, %struct.bwn_phy_g** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %21 = call i64 @BWN_HAS_LOOPBACK(%struct.bwn_phy* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %75

23:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %28 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %11, align 4
  store i32 32, i32* %10, align 4
  br label %38

38:                                               ; preds = %34, %26
  br label %41

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 9
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %46 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %52

47:                                               ; preds = %41
  %48 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %49 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 8
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @MAX(i32 %53, i32 0)
  %55 = call i32 @MIN(i32 %54, i32 45)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sdiv i32 %56, 3
  %58 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %59 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %61 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 5
  br i1 %63, label %64, label %71

64:                                               ; preds = %52
  %65 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %66 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 5
  store i32 %68, i32* %66, align 4
  %69 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %70 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %69, i32 0, i32 3
  store i32 2, i32* %70, align 4
  br label %74

71:                                               ; preds = %52
  %72 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %73 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %64
  br label %111

75:                                               ; preds = %19
  %76 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %77 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %76, i32 0, i32 3
  store i32 0, i32* %77, align 4
  %78 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %79 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %78, i32 0, i32 0
  store i32 32, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 20
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %84 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %86 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %85, i32 0, i32 2
  store i32 2, i32* %86, align 4
  br label %110

87:                                               ; preds = %75
  %88 = load i32, i32* %5, align 4
  %89 = icmp sge i32 %88, 18
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %92 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %94 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %93, i32 0, i32 2
  store i32 1, i32* %94, align 4
  br label %109

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = icmp sge i32 %96, 15
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %100 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %102 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %101, i32 0, i32 2
  store i32 0, i32* %102, align 4
  br label %108

103:                                              ; preds = %95
  %104 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %105 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %107 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %106, i32 0, i32 2
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %98
  br label %109

109:                                              ; preds = %108, %90
  br label %110

110:                                              ; preds = %109, %82
  br label %111

111:                                              ; preds = %110, %74
  %112 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %113 = call i32 @BWN_RF_READ(%struct.bwn_mac* %112, i32 122)
  store i32 %113, i32* %9, align 4
  %114 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %8, align 8
  %115 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, -9
  store i32 %120, i32* %9, align 4
  br label %124

121:                                              ; preds = %111
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, 8
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %125, i32 122, i32 %126)
  ret void
}

declare dso_local i64 @BWN_HAS_LOOPBACK(%struct.bwn_phy*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
