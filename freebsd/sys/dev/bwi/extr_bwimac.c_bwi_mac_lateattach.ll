; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_lateattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_lateattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BWI_STATE_HI = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@BWI_BBP_ATTEN = common dso_local global i32 0, align 4
@BWI_BBP_ATTEN_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_mac_lateattach(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %5 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %6 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sge i32 %7, 5
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %11 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BWI_STATE_HI, align 4
  %14 = call i32 @CSR_READ_4(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %17 = call i32 @bwi_mac_reset(%struct.bwi_mac* %16, i32 1)
  %18 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %19 = call i32 @bwi_phy_attach(%struct.bwi_mac* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %80

24:                                               ; preds = %15
  %25 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %26 = call i32 @bwi_rf_attach(%struct.bwi_mac* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %80

31:                                               ; preds = %24
  %32 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %33 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %40 = call i32 @bwi_mac_reset(%struct.bwi_mac* %39, i32 0)
  br label %44

41:                                               ; preds = %31
  %42 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %43 = call i32 @bwi_mac_reset(%struct.bwi_mac* %42, i32 1)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %46 = call i32 @bwi_mac_test(%struct.bwi_mac* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %80

51:                                               ; preds = %44
  %52 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %53 = call i32 @bwi_mac_get_property(%struct.bwi_mac* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %80

58:                                               ; preds = %51
  %59 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %60 = call i32 @bwi_rf_map_txpower(%struct.bwi_mac* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %80

65:                                               ; preds = %58
  %66 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %67 = call i32 @bwi_rf_off(%struct.bwi_mac* %66)
  %68 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %69 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %72 = load i32, i32* @BWI_BBP_ATTEN_MAGIC, align 4
  %73 = call i32 @CSR_WRITE_2(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %75 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %78 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %77, i32 0, i32 1
  %79 = call i32 @bwi_regwin_disable(i32 %76, i32* %78, i32 0)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %65, %63, %56, %49, %29, %22
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @CSR_READ_4(i32, i32) #1

declare dso_local i32 @bwi_mac_reset(%struct.bwi_mac*, i32) #1

declare dso_local i32 @bwi_phy_attach(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_attach(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_test(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_get_property(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_map_txpower(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_off(%struct.bwi_mac*) #1

declare dso_local i32 @CSR_WRITE_2(i32, i32, i32) #1

declare dso_local i32 @bwi_regwin_disable(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
