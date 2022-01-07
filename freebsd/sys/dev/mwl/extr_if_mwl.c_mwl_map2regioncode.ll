; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_map2regioncode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_map2regioncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32, i32 }

@DOMAIN_CODE_FCC = common dso_local global i32 0, align 4
@DOMAIN_CODE_IC = common dso_local global i32 0, align 4
@CTRY_SPAIN = common dso_local global i32 0, align 4
@DOMAIN_CODE_SPAIN = common dso_local global i32 0, align 4
@CTRY_FRANCE = common dso_local global i32 0, align 4
@CTRY_FRANCE2 = common dso_local global i32 0, align 4
@DOMAIN_CODE_FRANCE = common dso_local global i32 0, align 4
@DOMAIN_CODE_ETSI_131 = common dso_local global i32 0, align 4
@DOMAIN_CODE_MKK = common dso_local global i32 0, align 4
@DOMAIN_CODE_DGT = common dso_local global i32 0, align 4
@DOMAIN_CODE_AUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*)* @mwl_map2regioncode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_map2regioncode(%struct.ieee80211_regdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %3, align 8
  %4 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %41 [
    i32 131, label %7
    i32 130, label %7
    i32 135, label %9
    i32 134, label %11
    i32 133, label %11
    i32 132, label %11
    i32 129, label %35
    i32 128, label %37
    i32 138, label %39
    i32 137, label %39
    i32 136, label %39
  ]

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @DOMAIN_CODE_FCC, align 4
  store i32 %8, i32* %2, align 4
  br label %43

9:                                                ; preds = %1
  %10 = load i32, i32* @DOMAIN_CODE_IC, align 4
  store i32 %10, i32* %2, align 4
  br label %43

11:                                               ; preds = %1, %1, %1
  %12 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CTRY_SPAIN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @DOMAIN_CODE_SPAIN, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %11
  %20 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CTRY_FRANCE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CTRY_FRANCE2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %19
  %32 = load i32, i32* @DOMAIN_CODE_FRANCE, align 4
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %25
  %34 = load i32, i32* @DOMAIN_CODE_ETSI_131, align 4
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %1
  %36 = load i32, i32* @DOMAIN_CODE_MKK, align 4
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %1
  %38 = load i32, i32* @DOMAIN_CODE_DGT, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %1, %1, %1
  %40 = load i32, i32* @DOMAIN_CODE_AUS, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @DOMAIN_CODE_FCC, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %39, %37, %35, %33, %31, %17, %9, %7
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
