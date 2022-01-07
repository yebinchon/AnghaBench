; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_erp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i32 }

@IEEE80211_ELEMID_ERP = common dso_local global i32 0, align 4
@IEEE80211_ERP_NON_ERP_PRESENT = common dso_local global i32 0, align 4
@IEEE80211_F_USEPROT = common dso_local global i32 0, align 4
@IEEE80211_ERP_USE_PROTECTION = common dso_local global i32 0, align 4
@IEEE80211_F_USEBARKER = common dso_local global i32 0, align 4
@IEEE80211_ERP_LONG_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ieee80211com*)* @ieee80211_add_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee80211_add_erp(i32* %0, %struct.ieee80211com* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211com* %1, %struct.ieee80211com** %4, align 8
  %6 = load i32, i32* @IEEE80211_ELEMID_ERP, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %3, align 8
  store i32 %6, i32* %7, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %3, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @IEEE80211_ERP_NON_ERP_PRESENT, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IEEE80211_F_USEPROT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @IEEE80211_ERP_USE_PROTECTION, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IEEE80211_F_USEBARKER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @IEEE80211_ERP_LONG_PREAMBLE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
