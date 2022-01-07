; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_ibss_node_check_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_ibss_node_check_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ieee80211_scanparams = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ibss_node_check_new(%struct.ieee80211_node* %0, %struct.ieee80211_scanparams* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211_scanparams*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.ieee80211_scanparams* %1, %struct.ieee80211_scanparams** %5, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 0
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %6, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_scanparams*, %struct.ieee80211_scanparams** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_scanparams, %struct.ieee80211_scanparams* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %97

21:                                               ; preds = %15, %2
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %struct.ieee80211_scanparams*, %struct.ieee80211_scanparams** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_scanparams, %struct.ieee80211_scanparams* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = icmp eq i64* %31, null
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %96

38:                                               ; preds = %21
  %39 = load %struct.ieee80211_scanparams*, %struct.ieee80211_scanparams** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_scanparams, %struct.ieee80211_scanparams* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = icmp eq i64* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %96

44:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %92, %44
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %45
  %52 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ieee80211_scanparams*, %struct.ieee80211_scanparams** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_scanparams, %struct.ieee80211_scanparams* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %92

67:                                               ; preds = %51
  %68 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ieee80211_scanparams*, %struct.ieee80211_scanparams** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_scanparams, %struct.ieee80211_scanparams* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 2
  %80 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @memcmp(i32 %75, i64* %79, i64 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %67
  br label %97

91:                                               ; preds = %67
  br label %92

92:                                               ; preds = %91, %66
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %45

95:                                               ; preds = %45
  br label %96

96:                                               ; preds = %95, %43, %37
  store i32 0, i32* %3, align 4
  br label %98

97:                                               ; preds = %90, %20
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @memcmp(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
