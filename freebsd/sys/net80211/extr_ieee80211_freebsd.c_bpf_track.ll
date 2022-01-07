; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_bpf_track.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_bpf_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DLT_IEEE802_11_RADIO = common dso_local global i32 0, align 4
@ieee80211_init = common dso_local global i64 0, align 8
@IEEE80211_FEXT_BPF = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ifnet*, i32, i32)* @bpf_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_track(i8* %0, %struct.ifnet* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211vap*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ifnet* %1, %struct.ifnet** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @DLT_IEEE802_11_RADIO, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %4
  %14 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ieee80211_init, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 1
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %21, align 8
  store %struct.ieee80211vap* %22, %struct.ieee80211vap** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %27 = load i32, i32* @IEEE80211_FEXT_BPF, align 4
  %28 = call i32 @ieee80211_syncflag_ext(%struct.ieee80211vap* %26, i32 %27)
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @atomic_add_int(i32* %38, i32 1)
  br label %40

40:                                               ; preds = %34, %25
  br label %65

41:                                               ; preds = %19
  %42 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bpf_peers_present(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %41
  %48 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %49 = load i32, i32* @IEEE80211_FEXT_BPF, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @ieee80211_syncflag_ext(%struct.ieee80211vap* %48, i32 %50)
  %52 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @atomic_subtract_int(i32* %61, i32 1)
  br label %63

63:                                               ; preds = %57, %47
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %40
  br label %66

66:                                               ; preds = %65, %13, %4
  ret void
}

declare dso_local i32 @ieee80211_syncflag_ext(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @bpf_peers_present(i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
