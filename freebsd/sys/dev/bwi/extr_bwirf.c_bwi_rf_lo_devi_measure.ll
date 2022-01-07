; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_lo_devi_measure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_lo_devi_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy }
%struct.bwi_phy = type { i32 }

@BWI_PHY_F_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*, i32)* @bwi_rf_lo_devi_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_rf_lo_devi_measure(%struct.bwi_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 0
  store %struct.bwi_phy* %9, %struct.bwi_phy** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %11 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 8
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %73, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %76

23:                                               ; preds = %20
  %24 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %25 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %23
  %31 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %32 = call i32 @PHY_WRITE(%struct.bwi_mac* %31, i32 21, i32 58112)
  %33 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, 176
  %36 = call i32 @PHY_WRITE(%struct.bwi_mac* %33, i32 2066, i32 %35)
  %37 = call i32 @DELAY(i32 5)
  %38 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, 178
  %41 = call i32 @PHY_WRITE(%struct.bwi_mac* %38, i32 2066, i32 %40)
  %42 = call i32 @DELAY(i32 2)
  %43 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, 179
  %46 = call i32 @PHY_WRITE(%struct.bwi_mac* %43, i32 2066, i32 %45)
  %47 = call i32 @DELAY(i32 4)
  %48 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %49 = call i32 @PHY_WRITE(%struct.bwi_mac* %48, i32 21, i32 62208)
  br label %65

50:                                               ; preds = %23
  %51 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, 61344
  %54 = call i32 @PHY_WRITE(%struct.bwi_mac* %51, i32 21, i32 %53)
  %55 = call i32 @DELAY(i32 2)
  %56 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, 61408
  %59 = call i32 @PHY_WRITE(%struct.bwi_mac* %56, i32 21, i32 %58)
  %60 = call i32 @DELAY(i32 4)
  %61 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, 65504
  %64 = call i32 @PHY_WRITE(%struct.bwi_mac* %61, i32 21, i32 %63)
  br label %65

65:                                               ; preds = %50, %30
  %66 = call i32 @DELAY(i32 8)
  %67 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %68 = call i64 @PHY_READ(%struct.bwi_mac* %67, i32 45)
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %20

76:                                               ; preds = %20
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @PHY_READ(%struct.bwi_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
