; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_authenticator_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_authenticator_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_authenticator = type { i32 }

@IEEE80211_AUTH_MAX = common dso_local global i32 0, align 4
@authenticators = common dso_local global %struct.ieee80211_authenticator** null, align 8
@auth_modnames = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_authenticator* @ieee80211_authenticator_get(i32 %0) #0 {
  %2 = alloca %struct.ieee80211_authenticator*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @IEEE80211_AUTH_MAX, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.ieee80211_authenticator* null, %struct.ieee80211_authenticator** %2, align 8
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.ieee80211_authenticator**, %struct.ieee80211_authenticator*** @authenticators, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ieee80211_authenticator*, %struct.ieee80211_authenticator** %9, i64 %11
  %13 = load %struct.ieee80211_authenticator*, %struct.ieee80211_authenticator** %12, align 8
  %14 = icmp eq %struct.ieee80211_authenticator* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load i32*, i32** @auth_modnames, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ieee80211_load_module(i32 %20)
  br label %22

22:                                               ; preds = %15, %8
  %23 = load %struct.ieee80211_authenticator**, %struct.ieee80211_authenticator*** @authenticators, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ieee80211_authenticator*, %struct.ieee80211_authenticator** %23, i64 %25
  %27 = load %struct.ieee80211_authenticator*, %struct.ieee80211_authenticator** %26, align 8
  store %struct.ieee80211_authenticator* %27, %struct.ieee80211_authenticator** %2, align 8
  br label %28

28:                                               ; preds = %22, %7
  %29 = load %struct.ieee80211_authenticator*, %struct.ieee80211_authenticator** %2, align 8
  ret %struct.ieee80211_authenticator* %29
}

declare dso_local i32 @ieee80211_load_module(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
