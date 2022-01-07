; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_crypt_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_crypt_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mbuf = type { i32 }

@PROT_CRYPTD = common dso_local global i32 0, align 4
@HOOK_INDEX_ENCRYPT = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_ppp_crypt_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_crypt_xmit(i32 %0, i32 %1, i32 %2) #0 {
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
  br i1 %18, label %19, label %58

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 16384
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PROT_CRYPTD, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* @HOOK_INDEX_ENCRYPT, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %37 = call i32 @NGI_GET_M(i32 %35, %struct.mbuf* %36)
  %38 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.mbuf* @ng_ppp_addproto(%struct.mbuf* %38, i32 %39, i32 0)
  store %struct.mbuf* %40, %struct.mbuf** %9, align 8
  %41 = icmp eq %struct.mbuf* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @NG_FREE_ITEM(i32 %43)
  %45 = load i32, i32* @ENOBUFS, align 4
  store i32 %45, i32* %4, align 4
  br label %63

46:                                               ; preds = %34
  %47 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %47, %struct.mbuf** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @HOOK_INDEX_ENCRYPT, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @NG_FWD_ITEM_HOOK(i32 %48, %struct.mbuf* %49, i32* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %26, %22, %19, %3
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @ng_ppp_mp_xmit(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %46, %42
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @ng_ppp_addproto(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NG_FWD_ITEM_HOOK(i32, %struct.mbuf*, i32*) #1

declare dso_local i32 @ng_ppp_mp_xmit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
