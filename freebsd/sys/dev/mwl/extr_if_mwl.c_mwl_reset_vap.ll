; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_reset_vap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_reset_vap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i64, %struct.TYPE_3__*, i32, %struct.ieee80211com* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i64, i32 }
%struct.mwl_hal_vap = type { i32 }
%struct.TYPE_4__ = type { %struct.mwl_hal_vap* }

@IEEE80211_S_RUN = common dso_local global i32 0, align 4
@IEEE80211_FHT_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_FHT_SHORTGI40 = common dso_local global i32 0, align 4
@IEEE80211_PROT_NONE = common dso_local global i64 0, align 8
@HTPROTECT_NONE = common dso_local global i32 0, align 4
@HTPROTECT_AUTO = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_HTINFO_OPMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32)* @mwl_reset_vap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_reset_vap(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl_hal_vap*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %9 = call %struct.TYPE_4__* @MWL_VAP(%struct.ieee80211vap* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %10, align 8
  store %struct.mwl_hal_vap* %11, %struct.mwl_hal_vap** %6, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 4
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IEEE80211_S_RUN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %20 = call i32 @mwl_setrates(%struct.ieee80211vap* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %6, align 8
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mwl_hal_setrtsthreshold(%struct.mwl_hal_vap* %22, i32 %25)
  %27 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %6, align 8
  %28 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IEEE80211_FHT_SHORTGI20, align 4
  %32 = load i32, i32* @IEEE80211_FHT_SHORTGI40, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = call i32 @mwl_hal_sethtgi(%struct.mwl_hal_vap* %27, i32 %37)
  %39 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %6, align 8
  %40 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IEEE80211_PROT_NONE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = load i32, i32* @HTPROTECT_NONE, align 4
  br label %49

47:                                               ; preds = %21
  %48 = load i32, i32* @HTPROTECT_AUTO, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @mwl_hal_setnprot(%struct.mwl_hal_vap* %39, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @IEEE80211_S_RUN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %49
  %56 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67, %61, %55
  %74 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %75 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mwl_setapmode(%struct.ieee80211vap* %74, i32 %79)
  %81 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %6, align 8
  %82 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IEEE80211_HTINFO_OPMODE, align 4
  %86 = call i32 @MS(i32 %84, i32 %85)
  %87 = call i32 @mwl_hal_setnprotmode(%struct.mwl_hal_vap* %81, i32 %86)
  %88 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %89 = call i32 @mwl_beacon_setup(%struct.ieee80211vap* %88)
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %67, %49
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_4__* @MWL_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @mwl_setrates(%struct.ieee80211vap*) #1

declare dso_local i32 @mwl_hal_setrtsthreshold(%struct.mwl_hal_vap*, i32) #1

declare dso_local i32 @mwl_hal_sethtgi(%struct.mwl_hal_vap*, i32) #1

declare dso_local i32 @mwl_hal_setnprot(%struct.mwl_hal_vap*, i32) #1

declare dso_local i32 @mwl_setapmode(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @mwl_hal_setnprotmode(%struct.mwl_hal_vap*, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @mwl_beacon_setup(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
