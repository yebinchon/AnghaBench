; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xnb_pkt = type { i64, i64, i32, i32, i64 }
%struct.mbuf = type { i32, %struct.mbuf*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@MCLBYTES = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@NETRXF_extra_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_mbufc2pkt_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_mbufc2pkt_long(i8* %0, i64 %1) #0 {
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
  %12 = load i32, i32* @MCLBYTES, align 4
  %13 = mul nsw i32 14, %12
  %14 = sdiv i32 %13, 3
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  store i32 15, i32* %8, align 4
  store i64 3, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @MT_DATA, align 4
  %19 = call %struct.mbuf* @m_getm(i32* null, i64 %16, i32 %17, i32 %18)
  store %struct.mbuf* %19, %struct.mbuf** %10, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %21 = icmp ne %struct.mbuf* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @XNB_ASSERT(i32 %22)
  %24 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %25 = icmp eq %struct.mbuf* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %100

27:                                               ; preds = %2
  %28 = load i32, i32* @M_PKTHDR, align 4
  %29 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %38, %struct.mbuf** %11, align 8
  br label %39

39:                                               ; preds = %55, %27
  %40 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %41 = icmp ne %struct.mbuf* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %44 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %43)
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @MAX(i32 %44, i64 %45)
  %47 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %42
  %56 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  %58 = load %struct.mbuf*, %struct.mbuf** %57, align 8
  store %struct.mbuf* %58, %struct.mbuf** %11, align 8
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %60, %struct.xnb_pkt* %5, i64 %61, i32 %62)
  %64 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %65 = call i32 @XNB_ASSERT(i32 %64)
  %66 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @XNB_ASSERT(i32 %70)
  %72 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @XNB_ASSERT(i32 %76)
  %78 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 2
  store i32 %80, i32* %81, align 8
  %82 = call i32 @XNB_ASSERT(i32 %80)
  %83 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NETRXF_extra_info, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @XNB_ASSERT(i32 %89)
  %91 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = icmp eq i64 %92, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @XNB_ASSERT(i32 %97)
  %99 = call i32 @safe_m_freem(%struct.mbuf** %10)
  br label %100

100:                                              ; preds = %59, %26
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i64, i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
