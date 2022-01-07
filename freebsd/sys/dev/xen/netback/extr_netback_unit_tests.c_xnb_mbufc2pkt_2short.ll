; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_2short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_2short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xnb_pkt = type { i64, i64, i64, i32, i64 }
%struct.mbuf = type { i64, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@MHLEN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_mbufc2pkt_2short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_mbufc2pkt_2short(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @MHLEN, align 4
  %13 = sub nsw i32 %12, 5
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @MHLEN, align 4
  %16 = sub nsw i32 %15, 15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  store i32 32, i32* %8, align 4
  store i64 14, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @MT_DATA, align 4
  %21 = call %struct.mbuf* @m_getm(%struct.mbuf* null, i64 %18, i32 %19, i32 %20)
  store %struct.mbuf* %21, %struct.mbuf** %10, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @XNB_ASSERT(i32 %24)
  %26 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %27 = icmp eq %struct.mbuf* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %103

29:                                               ; preds = %2
  %30 = load i32, i32* @M_PKTHDR, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = load i32, i32* @MT_DATA, align 4
  %39 = call %struct.mbuf* @m_getm(%struct.mbuf* %35, i64 %36, i32 %37, i32 %38)
  store %struct.mbuf* %39, %struct.mbuf** %11, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %41 = icmp ne %struct.mbuf* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @XNB_ASSERT(i32 %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %45 = icmp eq %struct.mbuf* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %29
  %47 = call i32 @safe_m_freem(%struct.mbuf** %10)
  br label %103

48:                                               ; preds = %29
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %49, %50
  %52 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %58, %struct.xnb_pkt* %5, i64 %59, i32 %60)
  %62 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %63 = call i32 @XNB_ASSERT(i32 %62)
  %64 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %66, %67
  %69 = icmp eq i64 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @XNB_ASSERT(i32 %70)
  %72 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @XNB_ASSERT(i32 %76)
  %78 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %101

82:                                               ; preds = %48
  %83 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @XNB_ASSERT(i32 %87)
  %89 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @XNB_ASSERT(i32 %92)
  %94 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add nsw i64 %96, 1
  %98 = icmp eq i64 %95, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @XNB_ASSERT(i32 %99)
  br label %101

101:                                              ; preds = %82, %48
  %102 = call i32 @safe_m_freem(%struct.mbuf** %11)
  br label %103

103:                                              ; preds = %101, %46, %28
  ret void
}

declare dso_local %struct.mbuf* @m_getm(%struct.mbuf*, i64, i32, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i64, i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
