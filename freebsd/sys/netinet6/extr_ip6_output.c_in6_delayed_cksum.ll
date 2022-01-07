; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_in6_delayed_cksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_in6_delayed_cksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_delayed_cksum(%struct.mbuf* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @in_cksum_skip(%struct.mbuf* %8, i64 %11, i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64 65535, i64* %7, align 8
  br label %25

25:                                               ; preds = %24, %21, %3
  %26 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 8
  %34 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = ptrtoint i64* %7 to i32
  %42 = call i32 @m_copyback(%struct.mbuf* %39, i64 %40, i32 8, i32 %41)
  br label %49

43:                                               ; preds = %25
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @mtodo(%struct.mbuf* %45, i64 %46)
  %48 = inttoptr i64 %47 to i64*
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %38
  ret void
}

declare dso_local i64 @in_cksum_skip(%struct.mbuf*, i64, i64) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i64, i32, i32) #1

declare dso_local i64 @mtodo(%struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
