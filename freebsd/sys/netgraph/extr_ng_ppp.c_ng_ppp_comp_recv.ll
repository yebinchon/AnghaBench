; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_comp_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_comp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mbuf = type { i32 }

@PROT_COMPD = common dso_local global i32 0, align 4
@NG_PPP_DECOMPRESS_FULL = common dso_local global i64 0, align 8
@HOOK_INDEX_DECOMPRESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ng_ppp_comp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_comp_recv(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 16384
  br i1 %17, label %18, label %75

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PROT_COMPD, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NG_PPP_DECOMPRESS_FULL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %28, %22
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* @HOOK_INDEX_DECOMPRESS, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %75

43:                                               ; preds = %35
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NG_PPP_DECOMPRESS_FULL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %53 = call i32 @NGI_GET_M(i32 %51, %struct.mbuf* %52)
  %54 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call %struct.mbuf* @ng_ppp_addproto(%struct.mbuf* %54, i32 %55, i32 0)
  store %struct.mbuf* %56, %struct.mbuf** %12, align 8
  %57 = icmp eq %struct.mbuf* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @NG_FREE_ITEM(i32 %59)
  %61 = load i32, i32* @EIO, align 4
  store i32 %61, i32* %5, align 4
  br label %92

62:                                               ; preds = %50
  %63 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %63, %struct.mbuf** %13, align 8
  br label %64

64:                                               ; preds = %62, %43
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = load i64, i64* @HOOK_INDEX_DECOMPRESS, align 8
  %71 = getelementptr inbounds i32*, i32** %69, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @NG_FWD_ITEM_HOOK(i32 %65, i32 %66, i32* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %92

75:                                               ; preds = %35, %28, %4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @PROT_COMPD, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @ng_ppp_bypass(i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %92

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @ng_ppp_hcomp_recv(i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %79, %64, %58
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @ng_ppp_addproto(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NG_FWD_ITEM_HOOK(i32, i32, i32*) #1

declare dso_local i32 @ng_ppp_bypass(i32, i32, i32, i32) #1

declare dso_local i32 @ng_ppp_hcomp_recv(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
