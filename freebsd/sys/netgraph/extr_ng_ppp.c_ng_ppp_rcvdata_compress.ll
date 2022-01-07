; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_rcvdata_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_rcvdata_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PROT_COMPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mbuf*)* @ng_ppp_rcvdata_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_rcvdata_compress(i32 %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @NG_HOOK_NODE(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %44 [
    i32 128, label %19
    i32 129, label %23
  ]

19:                                               ; preds = %2
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call i32 @NG_FREE_ITEM(%struct.mbuf* %20)
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %26 = call i32 @NGI_GET_M(%struct.mbuf* %24, %struct.mbuf* %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %28 = call %struct.mbuf* @ng_ppp_cutproto(%struct.mbuf* %27, i32* %8)
  store %struct.mbuf* %28, %struct.mbuf** %9, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = call i32 @NG_FREE_ITEM(%struct.mbuf* %31)
  %33 = load i32, i32* @EIO, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %23
  %35 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %35, %struct.mbuf** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @PROT_VALID(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %41 = call i32 @NG_FREE_ITEM(%struct.mbuf* %40)
  %42 = load i32, i32* @EIO, align 4
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %34
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @PROT_COMPD, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ng_ppp_crypt_xmit(i32 %47, %struct.mbuf* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %39, %30, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_FREE_ITEM(%struct.mbuf*) #1

declare dso_local i32 @NGI_GET_M(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @ng_ppp_cutproto(%struct.mbuf*, i32*) #1

declare dso_local i32 @PROT_VALID(i32) #1

declare dso_local i32 @ng_ppp_crypt_xmit(i32, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
