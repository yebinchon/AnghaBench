; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ageq.c_ieee80211_ageq_age.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ageq.c_ieee80211_ageq_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.ieee80211_ageq = type { i64, i32*, %struct.mbuf* }

@.str = private unnamed_addr constant [10 x i8] c"aq len %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @ieee80211_ageq_age(%struct.ieee80211_ageq* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_ageq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.ieee80211_ageq* %0, %struct.ieee80211_ageq** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.mbuf** %5, %struct.mbuf*** %6, align 8
  %8 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %3, align 8
  %14 = call i32 @IEEE80211_AGEQ_LOCK(%struct.ieee80211_ageq* %13)
  br label %15

15:                                               ; preds = %37, %12
  %16 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %16, i32 0, i32 2
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  store %struct.mbuf* %18, %struct.mbuf** %7, align 8
  %19 = icmp ne %struct.mbuf* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %22 = call i32 @M_AGE_GET(%struct.mbuf* %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %56

27:                                               ; preds = %25
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load %struct.mbuf*, %struct.mbuf** %29, align 8
  %31 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %31, i32 0, i32 2
  store %struct.mbuf* %30, %struct.mbuf** %32, align 8
  %33 = icmp eq %struct.mbuf* %30, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @KASSERT(i32 %42, i8* %46)
  %48 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %53 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %52, %struct.mbuf** %53, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 0
  store %struct.mbuf** %55, %struct.mbuf*** %6, align 8
  br label %15

56:                                               ; preds = %25
  %57 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %58 = icmp ne %struct.mbuf* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @M_AGE_SUB(%struct.mbuf* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %3, align 8
  %65 = call i32 @IEEE80211_AGEQ_UNLOCK(%struct.ieee80211_ageq* %64)
  br label %66

66:                                               ; preds = %63, %2
  %67 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %67, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %68
}

declare dso_local i32 @IEEE80211_AGEQ_LOCK(%struct.ieee80211_ageq*) #1

declare dso_local i32 @M_AGE_GET(%struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @M_AGE_SUB(%struct.mbuf*, i32) #1

declare dso_local i32 @IEEE80211_AGEQ_UNLOCK(%struct.ieee80211_ageq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
