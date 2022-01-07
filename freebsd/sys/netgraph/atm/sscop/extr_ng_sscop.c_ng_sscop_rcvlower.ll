; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_ng_sscop_rcvlower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_ng_sscop_rcvlower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SSCOP_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ng_sscop_rcvlower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sscop_rcvlower(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @NG_HOOK_NODE(i32 %8)
  %10 = call %struct.priv* @NG_NODE_PRIVATE(i32 %9)
  store %struct.priv* %10, %struct.priv** %6, align 8
  %11 = load %struct.priv*, %struct.priv** %6, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @NG_FREE_ITEM(i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.priv*, %struct.priv** %6, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.priv*, %struct.priv** %6, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @sscop_getstate(i32 %27)
  %29 = load i64, i64* @SSCOP_IDLE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %24, %19
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %34 = call i32 @NGI_GET_M(i32 %32, %struct.mbuf* %33)
  %35 = load %struct.priv*, %struct.priv** %6, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.priv*, %struct.priv** %6, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %44 = call i32 @sscop_input(i32 %42, %struct.mbuf* %43)
  br label %51

45:                                               ; preds = %24
  %46 = load %struct.priv*, %struct.priv** %6, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %31
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @NG_FREE_ITEM(i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i64 @sscop_getstate(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @sscop_input(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
