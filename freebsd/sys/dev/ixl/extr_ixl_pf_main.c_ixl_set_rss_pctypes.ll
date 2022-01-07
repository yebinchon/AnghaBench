; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_set_rss_pctypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_set_rss_pctypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@I40E_MAC_X722 = common dso_local global i64 0, align 8
@IXL_DEFAULT_RSS_HENA_X722 = common dso_local global i32 0, align 4
@IXL_DEFAULT_RSS_HENA_XL710 = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_FRAG_IPV6 = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV4_OTHER = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV4_TCP = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV4_UDP = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV6_OTHER = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV6_TCP = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV6_UDP = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV4 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV6 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV6_EX = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_UDP_IPV4 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_UDP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_set_rss_pctypes(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %6 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %7 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %6, i32 0, i32 0
  store %struct.i40e_hw* %7, %struct.i40e_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @I40E_MAC_X722, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @IXL_DEFAULT_RSS_HENA_X722, align 4
  store i32 %15, i32* %4, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @IXL_DEFAULT_RSS_HENA_XL710, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %20 = call i32 @I40E_PFQF_HENA(i32 0)
  %21 = call i64 @i40e_read_rx_ctl(%struct.i40e_hw* %19, i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %24 = call i32 @I40E_PFQF_HENA(i32 1)
  %25 = call i64 @i40e_read_rx_ctl(%struct.i40e_hw* %23, i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 32
  %28 = or i32 %22, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %33 = call i32 @I40E_PFQF_HENA(i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %32, i32 %33, i32 %34)
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %37 = call i32 @I40E_PFQF_HENA(i32 1)
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 32
  %40 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %36, i32 %37, i32 %39)
  ret void
}

declare dso_local i64 @i40e_read_rx_ctl(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_PFQF_HENA(i32) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
