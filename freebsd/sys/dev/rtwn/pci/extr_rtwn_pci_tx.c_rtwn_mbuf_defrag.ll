; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_tx.c_rtwn_mbuf_defrag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_tx.c_rtwn_mbuf_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@M_PKTHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"M_PKTHDR flag is absent (m %p)!\00", align 1
@MJUMPAGESIZE = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i64 0, align 8
@MT_DATA = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbuf*, i32)* @rtwn_mbuf_defrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @rtwn_mbuf_defrag(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @M_PKTHDR, align 4
  %11 = and i32 %9, %10
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %13 = bitcast %struct.mbuf* %12 to i8*
  %14 = call i32 @KASSERT(i32 %11, i8* %13)
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MJUMPAGESIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MCLBYTES, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MT_DATA, align 4
  %32 = load i32, i32* @M_PKTHDR, align 4
  %33 = load i64, i64* @MJUMPAGESIZE, align 8
  %34 = call %struct.mbuf* @m_getjcl(i32 %30, i32 %31, i32 %32, i64 %33)
  store %struct.mbuf* %34, %struct.mbuf** %6, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = icmp eq %struct.mbuf* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %70

38:                                               ; preds = %29
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @m_dup_pkthdr(%struct.mbuf* %39, %struct.mbuf* %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %46 = call i32 @m_freem(%struct.mbuf* %45)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %70

47:                                               ; preds = %38
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = load i32, i32* @caddr_t, align 4
  %55 = call i32 @mtod(%struct.mbuf* %53, i32 %54)
  %56 = call i32 @m_copydata(%struct.mbuf* %48, i32 0, i64 %52, i32 %55)
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %64 = call i32 @m_freem(%struct.mbuf* %63)
  %65 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %65, %struct.mbuf** %3, align 8
  br label %70

66:                                               ; preds = %22
  %67 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call %struct.mbuf* @m_defrag(%struct.mbuf* %67, i32 %68)
  store %struct.mbuf* %69, %struct.mbuf** %3, align 8
  br label %70

70:                                               ; preds = %66, %47, %44, %37, %21
  %71 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %71
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i64) #1

declare dso_local i64 @m_dup_pkthdr(%struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i64, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
