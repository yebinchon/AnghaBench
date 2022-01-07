; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_verify_mesh_preq_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_verify_mesh_preq_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_MESHPREQ_FLAGS_AE = common dso_local global i32 0, align 4
@IEEE80211_MESHPREQ_BASE_SZ_AE = common dso_local global i32 0, align 4
@IEEE80211_MESHPREQ_TCNT_OFFSET_AE = common dso_local global i64 0, align 8
@IEEE80211_MESHPREQ_BASE_SZ = common dso_local global i32 0, align 4
@IEEE80211_MESHPREQ_TCNT_OFFSET = common dso_local global i64 0, align 8
@IEEE80211_MESHPREQ_TRGT_SZ = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_HWMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PREQ (AE=%s) with wrong len\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_frame*, i32*)* @verify_mesh_preq_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_mesh_preq_len(%struct.ieee80211vap* %0, %struct.ieee80211_frame* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEEE80211_MESHPREQ_FLAGS_AE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @IEEE80211_MESHPREQ_BASE_SZ_AE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* @IEEE80211_MESHPREQ_TCNT_OFFSET_AE, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  br label %28

22:                                               ; preds = %3
  %23 = load i32, i32* @IEEE80211_MESHPREQ_BASE_SZ, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* @IEEE80211_MESHPREQ_TCNT_OFFSET, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @IEEE80211_MESHPREQ_TRGT_SZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %28
  %40 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %41 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %42 = load i32, i32* @IEEE80211_MSG_HWMP, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_MESHPREQ_FLAGS_AE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @IEEE80211_DISCARD(%struct.ieee80211vap* %40, i32 %43, %struct.ieee80211_frame* %44, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %52)
  store i32 -1, i32* %4, align 4
  br label %56

54:                                               ; preds = %28
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %39
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @IEEE80211_DISCARD(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
