; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_add_meshpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_add_meshpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"localid == 0\00", align 1
@IEEE80211_ELEMID_MESHPEER = common dso_local global i32 0, align 4
@IEEE80211_MPM_BASE_SZ = common dso_local global i32 0, align 4
@IEEE80211_MPPID_MPM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"sending peer confirm without peer id\00", align 1
@IEEE80211_MPM_MAX_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_add_meshpeer(i32* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @IEEE80211_ELEMID_MESHPEER, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %76 [
    i32 128, label %19
    i32 129, label %29
    i32 130, label %47
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* @IEEE80211_MPM_BASE_SZ, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* @IEEE80211_MPPID_MPM, align 8
  %25 = call i32 @ADDSHORT(i32* %23, i64 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @ADDSHORT(i32* %26, i64 %27)
  br label %76

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @IEEE80211_MPM_BASE_SZ, align 4
  %35 = add nsw i32 %34, 2
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* @IEEE80211_MPPID_MPM, align 8
  %40 = call i32 @ADDSHORT(i32* %38, i64 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @ADDSHORT(i32* %41, i64 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @ADDSHORT(i32* %44, i64 %45)
  br label %76

47:                                               ; preds = %5
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @IEEE80211_MPM_MAX_SZ, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %59

54:                                               ; preds = %47
  %55 = load i32, i32* @IEEE80211_MPM_BASE_SZ, align 4
  %56 = add nsw i32 %55, 2
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* @IEEE80211_MPPID_MPM, align 8
  %62 = call i32 @ADDSHORT(i32* %60, i64 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @ADDSHORT(i32* %63, i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @ADDSHORT(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @ADDSHORT(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %5, %72, %29, %19
  %77 = load i32*, i32** %6, align 8
  ret i32* %77
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ADDSHORT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
