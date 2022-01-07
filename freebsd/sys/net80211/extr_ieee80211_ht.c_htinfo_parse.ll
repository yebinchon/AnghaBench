; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_htinfo_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_htinfo_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i8*, i8*, i8*, i32 }
%struct.ieee80211_ie_htinfo = type { i32, i32, i32, i32 }

@IEEE80211_HTINFO_2NDCHAN = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_OPMODE = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_BASIC_STBCMCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_ie_htinfo*)* @htinfo_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htinfo_parse(%struct.ieee80211_node* %0, %struct.ieee80211_ie_htinfo* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.ieee80211_ie_htinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.ieee80211_ie_htinfo* %1, %struct.ieee80211_ie_htinfo** %4, align 8
  %6 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_HTINFO_2NDCHAN, align 4
  %15 = call i8* @SM(i32 %13, i32 %14)
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %18, i32 0, i32 1
  %20 = call i32 @le16dec(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IEEE80211_HTINFO_OPMODE, align 4
  %23 = call i8* @SM(i32 %21, i32 %22)
  %24 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %26, i32 0, i32 0
  %28 = call i32 @le16dec(i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IEEE80211_HTINFO_BASIC_STBCMCS, align 4
  %31 = call i8* @SM(i32 %29, i32 %30)
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  ret void
}

declare dso_local i8* @SM(i32, i32) #1

declare dso_local i32 @le16dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
