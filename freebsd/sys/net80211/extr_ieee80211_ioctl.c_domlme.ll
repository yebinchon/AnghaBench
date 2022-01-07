; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_domlme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_domlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }
%struct.mlmeop = type { i64, i32, %struct.ieee80211vap* }

@IEEE80211_MLME_DEAUTH = common dso_local global i64 0, align 8
@IEEE80211_FC0_SUBTYPE_DEAUTH = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DISASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @domlme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domlme(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.mlmeop*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mlmeop*
  store %struct.mlmeop* %8, %struct.mlmeop** %5, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 2
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %6, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %13 = load %struct.mlmeop*, %struct.mlmeop** %5, align 8
  %14 = getelementptr inbounds %struct.mlmeop, %struct.mlmeop* %13, i32 0, i32 2
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  %16 = icmp ne %struct.ieee80211vap* %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %58

24:                                               ; preds = %18
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlmeop*, %struct.mlmeop** %5, align 8
  %30 = getelementptr inbounds %struct.mlmeop, %struct.mlmeop* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mlmeop*, %struct.mlmeop** %5, align 8
  %33 = getelementptr inbounds %struct.mlmeop, %struct.mlmeop* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mlmedebug(%struct.ieee80211vap* %25, i32 %28, i64 %31, i32 %34)
  %36 = load %struct.mlmeop*, %struct.mlmeop** %5, align 8
  %37 = getelementptr inbounds %struct.mlmeop, %struct.mlmeop* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IEEE80211_MLME_DEAUTH, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %24
  %42 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %43 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DEAUTH, align 4
  %44 = load %struct.mlmeop*, %struct.mlmeop** %5, align 8
  %45 = getelementptr inbounds %struct.mlmeop, %struct.mlmeop* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %42, i32 %43, i32 %46)
  br label %55

48:                                               ; preds = %24
  %49 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %50 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DISASSOC, align 4
  %51 = load %struct.mlmeop*, %struct.mlmeop** %5, align 8
  %52 = getelementptr inbounds %struct.mlmeop, %struct.mlmeop* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %57 = call i32 @ieee80211_node_leave(%struct.ieee80211_node* %56)
  br label %58

58:                                               ; preds = %55, %23, %17
  ret void
}

declare dso_local i32 @mlmedebug(%struct.ieee80211vap*, i32, i64, i32) #1

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @ieee80211_node_leave(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
