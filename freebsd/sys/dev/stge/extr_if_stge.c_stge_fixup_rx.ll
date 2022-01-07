; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_fixup_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_fixup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32 }
%struct.mbuf = type { i64, i64, %struct.mbuf* }

@MCLBYTES = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.stge_softc*, %struct.mbuf*)* @stge_fixup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @stge_fixup_rx(%struct.stge_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.stge_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.stge_softc* %0, %struct.stge_softc** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MCLBYTES, align 8
  %10 = load i64, i64* @ETHER_HDR_LEN, align 8
  %11 = sub nsw i64 %9, %10
  %12 = icmp sle i64 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ETHER_HDR_LEN, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @bcopy(i64 %16, i64 %21, i64 %24)
  %26 = load i64, i64* @ETHER_HDR_LEN, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %31, %struct.mbuf** %5, align 8
  br label %71

32:                                               ; preds = %2
  %33 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = load i32, i32* @MT_DATA, align 4
  %36 = call i32 @MGETHDR(%struct.mbuf* %33, i32 %34, i32 %35)
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = icmp ne %struct.mbuf* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  %40 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ETHER_HDR_LEN, align 8
  %47 = call i32 @bcopy(i64 %42, i64 %45, i64 %46)
  %48 = load i64, i64* @ETHER_HDR_LEN, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* @ETHER_HDR_LEN, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* @ETHER_HDR_LEN, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = call i32 @M_MOVE_PKTHDR(%struct.mbuf* %61, %struct.mbuf* %62)
  %64 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 2
  store %struct.mbuf* %64, %struct.mbuf** %66, align 8
  br label %70

67:                                               ; preds = %32
  %68 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %69 = call i32 @m_freem(%struct.mbuf* %68)
  br label %70

70:                                               ; preds = %67, %39
  br label %71

71:                                               ; preds = %70, %13
  %72 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %72
}

declare dso_local i32 @bcopy(i64, i64, i64) #1

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @M_MOVE_PKTHDR(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
