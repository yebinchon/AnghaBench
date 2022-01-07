; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_sscop_send_lower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_sscop_send_lower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscop = type { i32 }
%struct.mbuf = type { i32 }
%struct.priv = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sscop*, i8*, %struct.mbuf*)* @sscop_send_lower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sscop_send_lower(%struct.sscop* %0, i8* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.sscop*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.priv*, align 8
  %9 = alloca i32, align 4
  store %struct.sscop* %0, %struct.sscop** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.priv* @NG_NODE_PRIVATE(i32 %12)
  store %struct.priv* %13, %struct.priv** %8, align 8
  %14 = load %struct.priv*, %struct.priv** %8, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %20 = call i32 @m_freem(%struct.mbuf* %19)
  %21 = load %struct.priv*, %struct.priv** %8, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load %struct.priv*, %struct.priv** %8, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.priv*, %struct.priv** %8, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = call i32 @NG_SEND_DATA_ONLY(i32 %32, i32* %35, %struct.mbuf* %36)
  br label %38

38:                                               ; preds = %26, %18
  ret void
}

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
