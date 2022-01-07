; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_verify_mesh_perr_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_verify_mesh_perr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_MESHPERR_NDEST_OFFSET = common dso_local global i64 0, align 8
@IEEE80211_MESHPERR_MAXDEST = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_HWMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"PERR with wrong number of destionat (>19), %u\00", align 1
@IEEE80211_MESHPERR_FLAGS_AE = common dso_local global i32 0, align 4
@IEEE80211_MESHPERR_DEST_SZ_AE = common dso_local global i32 0, align 4
@IEEE80211_MESHPERR_DEST_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"PERR with wrong len\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_frame*, i32*)* @verify_mesh_perr_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_mesh_perr_len(%struct.ieee80211vap* %0, %struct.ieee80211_frame* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i64, i64* @IEEE80211_MESHPERR_NDEST_OFFSET, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @IEEE80211_MESHPERR_MAXDEST, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %22 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %23 = load i32, i32* @IEEE80211_MSG_HWMP, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i32*, i8*, ...) @IEEE80211_DISCARD(%struct.ieee80211vap* %21, i32 %24, %struct.ieee80211_frame* %25, i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %4, align 4
  br label %80

28:                                               ; preds = %3
  %29 = load i64, i64* @IEEE80211_MESHPERR_NDEST_OFFSET, align 8
  %30 = add i64 %29, 1
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %54, %28
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IEEE80211_MESHPERR_FLAGS_AE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* @IEEE80211_MESHPERR_DEST_SZ_AE, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %9, align 8
  br label %53

48:                                               ; preds = %37
  %49 = load i32, i32* @IEEE80211_MESHPERR_DEST_SZ, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %9, align 8
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %33

57:                                               ; preds = %33
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = sub nsw i64 %63, 2
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %57
  %72 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %73 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %74 = load i32, i32* @IEEE80211_MSG_HWMP, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %77 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i32*, i8*, ...) @IEEE80211_DISCARD(%struct.ieee80211vap* %72, i32 %75, %struct.ieee80211_frame* %76, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %80

78:                                               ; preds = %57
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %71, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @IEEE80211_DISCARD(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
