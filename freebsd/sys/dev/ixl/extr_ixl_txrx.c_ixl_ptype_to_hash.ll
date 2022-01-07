; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_ptype_to_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_ptype_to_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_rx_ptype_decoded = type { i64, i64, i32, i32 }

@M_HASHTYPE_OPAQUE = common dso_local global i32 0, align 4
@I40E_RX_PTYPE_OUTER_L2 = common dso_local global i64 0, align 8
@I40E_RX_PTYPE_OUTER_IPV6 = common dso_local global i64 0, align 8
@M_HASHTYPE_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_UDP_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_IPV6 = common dso_local global i32 0, align 4
@I40E_RX_PTYPE_OUTER_IPV4 = common dso_local global i64 0, align 8
@M_HASHTYPE_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_UDP_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixl_ptype_to_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_ptype_to_hash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_rx_ptype_decoded, align 8
  %5 = alloca %struct.i40e_rx_ptype_decoded, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  call void @decode_rx_desc_ptype(%struct.i40e_rx_ptype_decoded* sret %5, i32 %6)
  %7 = bitcast %struct.i40e_rx_ptype_decoded* %4 to i8*
  %8 = bitcast %struct.i40e_rx_ptype_decoded* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @M_HASHTYPE_OPAQUE, align 4
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @I40E_RX_PTYPE_OUTER_L2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @M_HASHTYPE_OPAQUE, align 4
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @I40E_RX_PTYPE_OUTER_IPV6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %33 [
    i32 129, label %29
    i32 128, label %31
  ]

29:                                               ; preds = %26
  %30 = load i32, i32* @M_HASHTYPE_RSS_TCP_IPV6, align 4
  store i32 %30, i32* %2, align 4
  br label %51

31:                                               ; preds = %26
  %32 = load i32, i32* @M_HASHTYPE_RSS_UDP_IPV6, align 4
  store i32 %32, i32* %2, align 4
  br label %51

33:                                               ; preds = %26
  %34 = load i32, i32* @M_HASHTYPE_RSS_IPV6, align 4
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @I40E_RX_PTYPE_OUTER_IPV4, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %47 [
    i32 129, label %43
    i32 128, label %45
  ]

43:                                               ; preds = %40
  %44 = load i32, i32* @M_HASHTYPE_RSS_TCP_IPV4, align 4
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @M_HASHTYPE_RSS_UDP_IPV4, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @M_HASHTYPE_RSS_IPV4, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %35
  %50 = load i32, i32* @M_HASHTYPE_OPAQUE, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %47, %45, %43, %33, %31, %29, %19, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local void @decode_rx_desc_ptype(%struct.i40e_rx_ptype_decoded* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
