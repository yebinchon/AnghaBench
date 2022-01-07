; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_getmgtframe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_getmgtframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32* }

@MCLBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"802.11 mgt frame too large: %u\00", align 1
@MINCLSIZE = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @ieee80211_getmgtframe(i32** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %9, %10
  %12 = call i64 @roundup2(i32 %11, i32 4)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @MCLBYTES, align 8
  %15 = icmp sle i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %8, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(i32 %16, i8* %18)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @MINCLSIZE, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @MT_DATA, align 4
  %26 = call %struct.mbuf* @m_gethdr(i32 %24, i32 %25)
  store %struct.mbuf* %26, %struct.mbuf** %7, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %28 = icmp ne %struct.mbuf* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @M_ALIGN(%struct.mbuf* %30, i64 %31)
  br label %33

33:                                               ; preds = %29, %23
  br label %46

34:                                               ; preds = %3
  %35 = load i32, i32* @M_NOWAIT, align 4
  %36 = load i32, i32* @MT_DATA, align 4
  %37 = load i32, i32* @M_PKTHDR, align 4
  %38 = call %struct.mbuf* @m_getcl(i32 %35, i32 %36, i32 %37)
  store %struct.mbuf* %38, %struct.mbuf** %7, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %40 = icmp ne %struct.mbuf* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @MC_ALIGN(%struct.mbuf* %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45, %33
  %47 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %48 = icmp ne %struct.mbuf* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = sext i32 %50 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %52, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32**, i32*** %4, align 8
  store i32* %58, i32** %59, align 8
  br label %60

60:                                               ; preds = %49, %46
  %61 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  ret %struct.mbuf* %61
}

declare dso_local i64 @roundup2(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i32 @M_ALIGN(%struct.mbuf*, i64) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @MC_ALIGN(%struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
