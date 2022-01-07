; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_nospace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_nospace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xnb_pkt = type { i32 }
%struct.mbuf = type { i64, %struct.mbuf*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@MCLBYTES = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_mbufc2pkt_nospace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_mbufc2pkt_nospace(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i32, i32* @MCLBYTES, align 4
  %14 = mul nsw i32 14, %13
  %15 = sdiv i32 %14, 3
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  store i32 2, i32* %8, align 4
  store i32 3, i32* %9, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @MT_DATA, align 4
  %20 = call %struct.mbuf* @m_getm(i32* null, i64 %17, i32 %18, i32 %19)
  store %struct.mbuf* %20, %struct.mbuf** %10, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %22 = icmp ne %struct.mbuf* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @XNB_ASSERT(i32 %23)
  %25 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %26 = icmp eq %struct.mbuf* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %75

28:                                               ; preds = %2
  %29 = load i32, i32* @M_PKTHDR, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %7, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %39, %struct.mbuf** %11, align 8
  br label %40

40:                                               ; preds = %55, %28
  %41 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %42 = icmp ne %struct.mbuf* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %45 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %44)
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @MAX(i32 %45, i64 %46)
  %48 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %43
  %56 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  %58 = load %struct.mbuf*, %struct.mbuf** %57, align 8
  store %struct.mbuf* %58, %struct.mbuf** %11, align 8
  br label %40

59:                                               ; preds = %40
  %60 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %60, %struct.xnb_pkt* %5, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @XNB_ASSERT(i32 %67)
  %69 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @XNB_ASSERT(i32 %72)
  %74 = call i32 @safe_m_freem(%struct.mbuf** %10)
  br label %75

75:                                               ; preds = %59, %27
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i32, i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
