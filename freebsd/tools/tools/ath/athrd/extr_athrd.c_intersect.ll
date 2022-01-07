; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_intersect.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_channel*, i64*, i32*, %struct.ieee80211_channel*, i64*, i32)* @intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intersect(%struct.ieee80211_channel* %0, i64* %1, i32* %2, %struct.ieee80211_channel* %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %95, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %96

22:                                               ; preds = %17
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %28, i64 %30
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i64 %36
  %38 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %33, %39
  br label %41

41:                                               ; preds = %27, %23
  %42 = phi i1 [ false, %23 ], [ %40, %27 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %23

47:                                               ; preds = %41
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %47
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %56, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %51
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %83, %63
  %68 = load i32, i32* %15, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %73, i64 %75
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %77, i64 %79
  %81 = bitcast %struct.ieee80211_channel* %76 to i8*
  %82 = bitcast %struct.ieee80211_channel* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %67

88:                                               ; preds = %67
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 4
  br label %95

92:                                               ; preds = %51, %47
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %88
  br label %17

96:                                               ; preds = %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
