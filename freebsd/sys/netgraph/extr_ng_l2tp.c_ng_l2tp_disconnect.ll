; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@sessions = common dso_local global i32 0, align 4
@M_NETGRAPH_L2TP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ng_l2tp_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_l2tp_disconnect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @NG_HOOK_NODE(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %4, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  br label %39

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %38

27:                                               ; preds = %18
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @NG_HOOK_PRIVATE(i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @sessions, align 4
  %32 = call i32 @LIST_REMOVE(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @M_NETGRAPH_L2TP, align 4
  %35 = call i32 @free(i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @NG_HOOK_SET_PRIVATE(i32* %36, i32* null)
  br label %38

38:                                               ; preds = %27, %24
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @NG_NODE_NUMHOOKS(i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @NG_NODE_IS_VALID(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ng_rmnode_self(i32 %48)
  br label %50

50:                                               ; preds = %47, %43, %39
  ret i32 0
}

declare dso_local i32 @NG_HOOK_NODE(i32*) #1

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_PRIVATE(i32*) #1

declare dso_local i32 @LIST_REMOVE(i32, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32*, i32*) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
