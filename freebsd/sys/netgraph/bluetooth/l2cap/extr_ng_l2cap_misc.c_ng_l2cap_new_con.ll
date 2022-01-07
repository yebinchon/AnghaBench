; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_new_con.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_new_con.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i32, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ng_l2cap_new_con.fake_con_handle = internal global i32 3840, align 4
@M_NETGRAPH_L2CAP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NG_L2CAP_CON_CLOSED = common dso_local global i32 0, align 4
@NG_L2CAP_FIRST_IDENT = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ng_l2cap_new_con(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %9 = load i32, i32* @M_NETGRAPH_L2CAP, align 4
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.TYPE_8__* @malloc(i32 56, i32 %9, i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %20, align 8
  %21 = load i32, i32* @NG_L2CAP_CON_CLOSED, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @ng_l2cap_new_con.fake_con_handle, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @ng_l2cap_new_con.fake_con_handle, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @ng_l2cap_new_con.fake_con_handle, align 4
  %31 = icmp sgt i32 %30, 4095
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  store i32 3840, i32* @ng_l2cap_new_con.fake_con_handle, align 4
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = call i32 @bcopy(i32 %34, i32* %36, i32 4)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = call i32 @ng_callout_init(i32* %42)
  %44 = load i64, i64* @NG_L2CAP_FIRST_IDENT, align 8
  %45 = sub nsw i64 %44, 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = call i32 @TAILQ_INIT(i32* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = load i32, i32* @next, align 4
  %55 = call i32 @LIST_INSERT_HEAD(i32* %52, %struct.TYPE_8__* %53, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %4, align 8
  br label %57

57:                                               ; preds = %33, %16
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %58
}

declare dso_local %struct.TYPE_8__* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @ng_callout_init(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
