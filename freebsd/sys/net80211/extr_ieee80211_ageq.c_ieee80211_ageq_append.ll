; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ageq.c_ieee80211_ageq_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ageq.c_ieee80211_ageq_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ageq = type { i64, i64, i32, %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@.str = private unnamed_addr constant [7 x i8] c"age %d\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ageq_append(%struct.ieee80211_ageq* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_ageq*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_ageq* %0, %struct.ieee80211_ageq** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %9 = call i32 @IEEE80211_AGEQ_LOCK(%struct.ieee80211_ageq* %8)
  %10 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @__predict_true(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %21, i32 0, i32 3
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  %24 = icmp eq %struct.mbuf* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %27, i32 0, i32 4
  store %struct.mbuf* %26, %struct.mbuf** %28, align 8
  br label %43

29:                                               ; preds = %20
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %31, i32 0, i32 3
  %33 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  store %struct.mbuf* %30, %struct.mbuf** %34, align 8
  %35 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %35, i32 0, i32 4
  %37 = load %struct.mbuf*, %struct.mbuf** %36, align 8
  %38 = call i64 @M_AGE_GET(%struct.mbuf* %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %29, %25
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @KASSERT(i32 %46, i8* %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @M_AGE_SET(%struct.mbuf* %51, i32 %52)
  %54 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %55, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %57, i32 0, i32 3
  store %struct.mbuf* %56, %struct.mbuf** %58, align 8
  %59 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %64 = call i32 @IEEE80211_AGEQ_UNLOCK(%struct.ieee80211_ageq* %63)
  store i32 0, i32* %4, align 4
  br label %75

65:                                               ; preds = %3
  %66 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %5, align 8
  %71 = call i32 @IEEE80211_AGEQ_UNLOCK(%struct.ieee80211_ageq* %70)
  %72 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %73 = call i32 @ageq_mfree(%struct.mbuf* %72)
  %74 = load i32, i32* @ENOSPC, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %65, %43
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @IEEE80211_AGEQ_LOCK(%struct.ieee80211_ageq*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i64 @M_AGE_GET(%struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @M_AGE_SET(%struct.mbuf*, i32) #1

declare dso_local i32 @IEEE80211_AGEQ_UNLOCK(%struct.ieee80211_ageq*) #1

declare dso_local i32 @ageq_mfree(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
