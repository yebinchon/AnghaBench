; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_verify_mesh_prep_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_verify_mesh_prep_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_MESHPREP_FLAGS_AE = common dso_local global i32 0, align 4
@IEEE80211_MESHPREP_BASE_SZ_AE = common dso_local global i32 0, align 4
@IEEE80211_MESHPREP_BASE_SZ = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_HWMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PREP (AE=%s) with wrong len\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_frame*, i32*)* @verify_mesh_prep_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_mesh_prep_len(%struct.ieee80211vap* %0, %struct.ieee80211_frame* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_MESHPREP_FLAGS_AE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_MESHPREP_BASE_SZ_AE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @IEEE80211_MESHPREP_BASE_SZ_AE, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %15
  br label %33

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_MESHPREP_BASE_SZ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @IEEE80211_MESHPREP_BASE_SZ, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %24
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %38 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %39 = load i32, i32* @IEEE80211_MSG_HWMP, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IEEE80211_MESHPREP_FLAGS_AE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 @IEEE80211_DISCARD(%struct.ieee80211vap* %37, i32 %40, %struct.ieee80211_frame* %41, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i32 -1, i32* %4, align 4
  br label %52

51:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @IEEE80211_DISCARD(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
