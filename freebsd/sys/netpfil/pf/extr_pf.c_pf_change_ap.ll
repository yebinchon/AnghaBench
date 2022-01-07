; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_change_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_change_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pf_addr = type { i32* }

@CSUM_DELAY_DATA = common dso_local global i32 0, align 4
@CSUM_DELAY_DATA_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.pf_addr*, i32*, i32*, i32*, %struct.pf_addr*, i32, i32, i32)* @pf_change_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_change_ap(%struct.mbuf* %0, %struct.pf_addr* %1, i32* %2, i32* %3, i32* %4, %struct.pf_addr* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.pf_addr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.pf_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.pf_addr, align 8
  %20 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %10, align 8
  store %struct.pf_addr* %1, %struct.pf_addr** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.pf_addr* %5, %struct.pf_addr** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %20, align 4
  %23 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %24 = load i32, i32* %18, align 4
  %25 = call i32 @PF_ACPY(%struct.pf_addr* %19, %struct.pf_addr* %23, i32 %24)
  %26 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %27 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %28 = load i32, i32* %18, align 4
  %29 = call i32 @PF_ACPY(%struct.pf_addr* %26, %struct.pf_addr* %27, i32 %28)
  %30 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CSUM_DELAY_DATA, align 4
  %35 = load i32, i32* @CSUM_DELAY_DATA_IPV6, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %9
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = load i32*, i32** %14, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %9
  %45 = load i32, i32* %16, align 4
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %18, align 4
  switch i32 %47, label %48 [
  ]

48:                                               ; preds = %44
  %49 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CSUM_DELAY_DATA, align 4
  %54 = load i32, i32* @CSUM_DELAY_DATA_IPV6, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %48
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, -1
  %62 = load i32*, i32** %14, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = load i32*, i32** %14, align 8
  store i32 65535, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %58
  br label %69

69:                                               ; preds = %68, %48
  ret void
}

declare dso_local i32 @PF_ACPY(%struct.pf_addr*, %struct.pf_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
