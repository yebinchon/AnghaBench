; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_set_tpctl_11bg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_set_tpctl_11bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.TYPE_2__, %struct.bwi_tpctl, %struct.bwi_rf }
%struct.TYPE_2__ = type { i64 }
%struct.bwi_tpctl = type { i64, i64, i64 }
%struct.bwi_rf = type { i32, i64 }

@BWI_BBP_ATTEN_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"bbp_atten %d\00", align 1
@BWI_RF_ATTEN_MAX0 = common dso_local global i64 0, align 8
@BWI_RF_ATTEN_MAX1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"rf_atten %d\00", align 1
@BWI_TPCTL1_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"tp_ctrl1 %d\00", align 1
@BWI_RFR_ATTEN = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_RF_ATTEN = common dso_local global i32 0, align 4
@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@BWI_RFR_TXPWR = common dso_local global i32 0, align 4
@BWI_RFR_TXPWR1_MASK = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_mac_set_tpctl_11bg(%struct.bwi_mac* %0, %struct.bwi_tpctl* %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_tpctl*, align 8
  %5 = alloca %struct.bwi_rf*, align 8
  %6 = alloca %struct.bwi_tpctl*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store %struct.bwi_tpctl* %1, %struct.bwi_tpctl** %4, align 8
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 2
  store %struct.bwi_rf* %8, %struct.bwi_rf** %5, align 8
  %9 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %10 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %9, i32 0, i32 1
  store %struct.bwi_tpctl* %10, %struct.bwi_tpctl** %6, align 8
  %11 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %12 = icmp ne %struct.bwi_tpctl* %11, null
  br i1 %12, label %13, label %71

13:                                               ; preds = %2
  %14 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %15 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BWI_BBP_ATTEN_MAX, align 8
  %18 = icmp sle i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %21 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %19, i8* %23)
  %25 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %26 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %29 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %34

32:                                               ; preds = %13
  %33 = load i64, i64* @BWI_RF_ATTEN_MAX0, align 8
  br label %36

34:                                               ; preds = %13
  %35 = load i64, i64* @BWI_RF_ATTEN_MAX1, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = icmp sle i64 %27, %37
  %39 = zext i1 %38 to i32
  %40 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %41 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %39, i8* %43)
  %45 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %46 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BWI_TPCTL1_MAX, align 8
  %49 = icmp sle i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %52 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @KASSERT(i32 %50, i8* %54)
  %56 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %57 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %60 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %62 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %65 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %67 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %70 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %36, %2
  %72 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %73 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %74 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @bwi_phy_set_bbp_atten(%struct.bwi_mac* %72, i64 %75)
  %77 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %78 = load i32, i32* @BWI_RFR_ATTEN, align 4
  %79 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %80 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @RF_WRITE(%struct.bwi_mac* %77, i32 %78, i64 %81)
  %83 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %84 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %85 = load i32, i32* @BWI_COMM_MOBJ_RF_ATTEN, align 4
  %86 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %87 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %83, i32 %84, i32 %85, i64 %88)
  %90 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %91 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %71
  %96 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %97 = load i32, i32* @BWI_RFR_TXPWR, align 4
  %98 = load i32, i32* @BWI_RFR_TXPWR1_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %101 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @BWI_RFR_TXPWR1_MASK, align 4
  %104 = call i32 @__SHIFTIN(i64 %102, i32 %103)
  %105 = call i32 @RF_FILT_SETBITS(%struct.bwi_mac* %96, i32 %97, i32 %99, i32 %104)
  br label %106

106:                                              ; preds = %95, %71
  %107 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %108 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %115 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %116 = call i32 @bwi_rf_lo_adjust(%struct.bwi_mac* %114, %struct.bwi_tpctl* %115)
  br label %117

117:                                              ; preds = %113, %106
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_phy_set_bbp_atten(%struct.bwi_mac*, i64) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i64) #1

declare dso_local i32 @MOBJ_WRITE_2(%struct.bwi_mac*, i32, i32, i64) #1

declare dso_local i32 @RF_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @__SHIFTIN(i64, i32) #1

declare dso_local i32 @bwi_rf_lo_adjust(%struct.bwi_mac*, %struct.bwi_tpctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
