; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_comp_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_comp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mbuf = type { i32 }

@PROT_COMPD = common dso_local global i32 0, align 4
@PROT_CRYPTD = common dso_local global i32 0, align 4
@HOOK_INDEX_COMPRESS = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_ppp_comp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_comp_xmit(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 16384
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PROT_COMPD, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PROT_CRYPTD, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* @HOOK_INDEX_COMPRESS, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %41 = call i32 @NGI_GET_M(i32 %39, %struct.mbuf* %40)
  %42 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.mbuf* @ng_ppp_addproto(%struct.mbuf* %42, i32 %43, i32 0)
  store %struct.mbuf* %44, %struct.mbuf** %9, align 8
  %45 = icmp eq %struct.mbuf* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @NG_FREE_ITEM(i32 %47)
  %49 = load i32, i32* @ENOBUFS, align 4
  store i32 %49, i32* %4, align 4
  br label %67

50:                                               ; preds = %38
  %51 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %51, %struct.mbuf** %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* @HOOK_INDEX_COMPRESS, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @NG_FWD_ITEM_HOOK(i32 %52, %struct.mbuf* %53, i32* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %30, %26, %22, %19, %3
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ng_ppp_crypt_xmit(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %50, %46
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @ng_ppp_addproto(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NG_FWD_ITEM_HOOK(i32, %struct.mbuf*, i32*) #1

declare dso_local i32 @ng_ppp_crypt_xmit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
