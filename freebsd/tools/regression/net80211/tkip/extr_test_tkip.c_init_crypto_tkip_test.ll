; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/net80211/tkip/extr_test_tkip.c_init_crypto_tkip_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/net80211/tkip/extr_test_tkip.c_init_crypto_tkip_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.ieee80211com*, %struct.ieee80211com*, i32 }
%struct.ieee80211vap = type { i32, %struct.ieee80211vap*, %struct.ieee80211vap*, i32 }
%struct.ifnet = type { i32, %struct.ifnet*, %struct.ifnet*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"test_ccmp\00", align 1
@debug = common dso_local global i64 0, align 8
@IEEE80211_MSG_CRYPTO = common dso_local global i32 0, align 4
@tkiptests = common dso_local global i32* null, align 8
@tests = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%u of %u 802.11i TKIP test vectors passed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_crypto_tkip_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_crypto_tkip_test() #0 {
  %1 = alloca %struct.ieee80211com, align 8
  %2 = alloca %struct.ieee80211vap, align 8
  %3 = alloca %struct.ifnet, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.ieee80211com* %1 to %struct.ifnet*
  %8 = call i32 @memset(%struct.ifnet* %7, i32 0, i32 32)
  %9 = bitcast %struct.ieee80211vap* %2 to %struct.ifnet*
  %10 = call i32 @memset(%struct.ifnet* %9, i32 0, i32 32)
  %11 = call i32 @memset(%struct.ifnet* %3, i32 0, i32 32)
  %12 = bitcast %struct.ieee80211com* %1 to %struct.ifnet*
  %13 = call i32 @ieee80211_crypto_attach(%struct.ifnet* %12)
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %3, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strncpy(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = bitcast %struct.ieee80211com* %1 to %struct.ieee80211vap*
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %2, i32 0, i32 2
  store %struct.ieee80211vap* %17, %struct.ieee80211vap** %18, align 8
  %19 = bitcast %struct.ifnet* %3 to %struct.ieee80211vap*
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %2, i32 0, i32 1
  store %struct.ieee80211vap* %19, %struct.ieee80211vap** %20, align 8
  %21 = load i64, i64* @debug, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %0
  %24 = load i32, i32* @IEEE80211_MSG_CRYPTO, align 4
  %25 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %2, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %0
  %27 = bitcast %struct.ieee80211vap* %2 to %struct.ifnet*
  %28 = call i32 @ieee80211_crypto_vattach(%struct.ifnet* %27)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %54, %26
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** @tkiptests, align 8
  %32 = call i32 @nitems(i32* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load i32, i32* @tests, align 4
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = bitcast %struct.ieee80211vap* %2 to %struct.ifnet*
  %44 = load i32*, i32** @tkiptests, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i64 @runtest(%struct.ifnet* %43, i32* %47)
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %40, %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = bitcast %struct.ieee80211vap* %2 to %struct.ifnet*
  %62 = call i32 @ieee80211_crypto_vdetach(%struct.ifnet* %61)
  %63 = bitcast %struct.ieee80211com* %1 to %struct.ifnet*
  %64 = call i32 @ieee80211_crypto_detach(%struct.ifnet* %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 -1
  ret i32 %69
}

declare dso_local i32 @memset(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ieee80211_crypto_attach(%struct.ifnet*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_crypto_vattach(%struct.ifnet*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i64 @runtest(%struct.ifnet*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @ieee80211_crypto_vdetach(%struct.ifnet*) #1

declare dso_local i32 @ieee80211_crypto_detach(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
