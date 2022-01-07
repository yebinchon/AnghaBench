; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_verify_meshpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_verify_meshpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211_meshpeer_ie = type { i64, i64, i32, i32 }

@IEEE80211_MPM_BASE_SZ = common dso_local global i64 0, align 8
@IEEE80211_MPM_MAX_SZ = common dso_local global i64 0, align 8
@IEEE80211_MPPID_MPM = common dso_local global i64 0, align 8
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_MESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Only MPM protocol is supported (proto: 0x%02X)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32*)* @mesh_verify_meshpeer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_verify_meshpeer(%struct.ieee80211vap* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_meshpeer_ie*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = bitcast i32* %9 to %struct.ieee80211_meshpeer_ie*
  store %struct.ieee80211_meshpeer_ie* %10, %struct.ieee80211_meshpeer_ie** %8, align 8
  %11 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %12 = icmp eq %struct.ieee80211_meshpeer_ie* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IEEE80211_MPM_BASE_SZ, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %21 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_MPM_MAX_SZ, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13, %3
  store i32 1, i32* %4, align 4
  br label %89

26:                                               ; preds = %19
  %27 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE80211_MPPID_MPM, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %34 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %35 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %38 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %33, i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %39)
  store i32 1, i32* %4, align 4
  br label %89

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %88 [
    i32 128, label %43
    i32 129, label %51
    i32 130, label %60
  ]

43:                                               ; preds = %41
  %44 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %45 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IEEE80211_MPM_BASE_SZ, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %89

50:                                               ; preds = %43
  br label %88

51:                                               ; preds = %41
  %52 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IEEE80211_MPM_BASE_SZ, align 8
  %56 = add nsw i64 %55, 2
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %89

59:                                               ; preds = %51
  br label %88

60:                                               ; preds = %41
  %61 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IEEE80211_MPM_BASE_SZ, align 8
  %65 = add nsw i64 %64, 2
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %89

68:                                               ; preds = %60
  %69 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IEEE80211_MPM_BASE_SZ, align 8
  %73 = add nsw i64 %72, 2
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %89

81:                                               ; preds = %75, %68
  %82 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %89

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %41, %87, %59, %50
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %86, %80, %67, %58, %49, %32, %25
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @IEEE80211_DPRINTF(%struct.ieee80211vap*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
