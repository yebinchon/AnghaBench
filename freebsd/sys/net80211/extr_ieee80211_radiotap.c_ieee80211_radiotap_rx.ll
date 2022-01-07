; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_radiotap.c_ieee80211_radiotap_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_radiotap.c_ieee80211_radiotap_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i64, %struct.ieee80211_radiotap_header* }
%struct.ieee80211_radiotap_header = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"no rx radiotap header\00", align 1
@IEEE80211_FEXT_BPF = common dso_local global i32 0, align 4
@M_BCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_radiotap_rx(%struct.ieee80211vap* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211_radiotap_header*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 2
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  store %struct.ieee80211com* %10, %struct.ieee80211com** %5, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  store %struct.ieee80211_radiotap_header* %13, %struct.ieee80211_radiotap_header** %6, align 8
  %14 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %15 = icmp ne %struct.ieee80211_radiotap_header* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16toh(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IEEE80211_FEXT_BPF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %35 = call i32 @bpf_mtap2(i32 %31, %struct.ieee80211_radiotap_header* %32, i32 %33, %struct.mbuf* %34)
  br label %36

36:                                               ; preds = %28, %2
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @M_BCAST, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %51 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @spam_vaps(%struct.ieee80211vap* %49, %struct.mbuf* %50, %struct.ieee80211_radiotap_header* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %41, %36
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bpf_mtap2(i32, %struct.ieee80211_radiotap_header*, i32, %struct.mbuf*) #1

declare dso_local i32 @spam_vaps(%struct.ieee80211vap*, %struct.mbuf*, %struct.ieee80211_radiotap_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
