; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_seteapolformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_seteapolformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32, %struct.TYPE_2__*, %struct.ieee80211_node* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.mwl_vap = type { i32 }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"state %d\00", align 1
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_FHT_PUREN = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @mwl_seteapolformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_seteapolformat(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.mwl_vap*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %8 = call %struct.mwl_vap* @MWL_VAP(%struct.ieee80211vap* %7)
  store %struct.mwl_vap* %8, %struct.mwl_vap** %3, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 3
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %10, align 8
  store %struct.ieee80211_node* %11, %struct.ieee80211_node** %4, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IEEE80211_S_RUN, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %17, i8* %21)
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ieee80211_chan2mode(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %1
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IEEE80211_FHT_PUREN, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %74

45:                                               ; preds = %30, %1
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IEEE80211_FHT_PUREN, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %73

64:                                               ; preds = %49, %45
  %65 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %66 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %64, %56
  br label %74

74:                                               ; preds = %73, %37
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %77 = call i32 @mwl_calcformat(i32 %75, %struct.ieee80211_node* %76)
  %78 = call i32 @htole16(i32 %77)
  %79 = load %struct.mwl_vap*, %struct.mwl_vap** %3, align 8
  %80 = getelementptr inbounds %struct.mwl_vap, %struct.mwl_vap* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  ret void
}

declare dso_local %struct.mwl_vap* @MWL_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ieee80211_chan2mode(i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @mwl_calcformat(i32, %struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
