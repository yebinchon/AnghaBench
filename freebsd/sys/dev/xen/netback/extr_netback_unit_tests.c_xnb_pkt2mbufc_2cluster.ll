; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_pkt2mbufc_2cluster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_pkt2mbufc_2cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.mbuf = type { %struct.mbuf* }

@MCLBYTES = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_pkt2mbufc_2cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_pkt2mbufc_2cluster(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xnb_pkt, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @MCLBYTES, align 4
  %11 = mul nsw i32 2, %10
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @xnb_get1pkt(%struct.xnb_pkt* %7, i64 %14, i32 0)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 0), align 4
  %17 = call %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt* %7, i32 %16)
  store %struct.mbuf* %17, %struct.mbuf** %8, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %18, %struct.mbuf** %9, align 8
  br label %19

19:                                               ; preds = %27, %2
  %20 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %21 = icmp ne %struct.mbuf* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %24 = call i64 @M_TRAILINGSPACE(%struct.mbuf* %23)
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load %struct.mbuf*, %struct.mbuf** %29, align 8
  store %struct.mbuf* %30, %struct.mbuf** %9, align 8
  br label %19

31:                                               ; preds = %19
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp uge i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @XNB_ASSERT(i32 %35)
  %37 = call i32 @safe_m_freem(%struct.mbuf** %8)
  ret void
}

declare dso_local i32 @xnb_get1pkt(%struct.xnb_pkt*, i64, i32) #1

declare dso_local %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt*, i32) #1

declare dso_local i64 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
