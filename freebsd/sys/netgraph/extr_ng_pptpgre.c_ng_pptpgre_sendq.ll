; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pptpgre.c_ng_pptpgre_sendq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pptpgre.c_ng_pptpgre_sendq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ng_pptpgre_roq = type { i32 }
%struct.mbuf = type { i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@M_NETGRAPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, %struct.ng_pptpgre_roq*)* @ng_pptpgre_sendq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_pptpgre_sendq(%struct.TYPE_3__* %0, i32* %1, %struct.ng_pptpgre_roq* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ng_pptpgre_roq*, align 8
  %7 = alloca %struct.ng_pptpgre_roq*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ng_pptpgre_roq* %2, %struct.ng_pptpgre_roq** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* @MA_NOTOWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  br label %14

14:                                               ; preds = %46, %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @SLIST_EMPTY(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %47

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.ng_pptpgre_roq* @SLIST_FIRST(i32* %20)
  store %struct.ng_pptpgre_roq* %21, %struct.ng_pptpgre_roq** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @next, align 4
  %24 = call i32 @SLIST_REMOVE_HEAD(i32* %22, i32 %23)
  %25 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %7, align 8
  %26 = getelementptr inbounds %struct.ng_pptpgre_roq, %struct.ng_pptpgre_roq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %29 = call i32 @NGI_GET_M(i32 %27, %struct.mbuf* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %7, align 8
  %32 = getelementptr inbounds %struct.ng_pptpgre_roq, %struct.ng_pptpgre_roq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %38 = call i32 @NG_FWD_NEW_DATA(i32 %30, i32 %33, i32 %36, %struct.mbuf* %37)
  %39 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %7, align 8
  %40 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %6, align 8
  %41 = icmp ne %struct.ng_pptpgre_roq* %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %19
  %43 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %7, align 8
  %44 = load i32, i32* @M_NETGRAPH, align 4
  %45 = call i32 @free(%struct.ng_pptpgre_roq* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %19
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.ng_pptpgre_roq* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FWD_NEW_DATA(i32, i32, i32, %struct.mbuf*) #1

declare dso_local i32 @free(%struct.ng_pptpgre_roq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
