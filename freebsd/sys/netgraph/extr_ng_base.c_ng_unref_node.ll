; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_unref_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_unref_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ng_deadnode = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@V_ng_named_nodes = common dso_local global i32 0, align 4
@nd_nodes = common dso_local global i32 0, align 4
@V_ng_nodes = common dso_local global i32 0, align 4
@nd_idnodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_unref_node(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = icmp eq %struct.TYPE_11__* %3, @ng_deadnode
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %49

6:                                                ; preds = %1
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CURVNET_SET(i32 %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = call i64 @refcount_release(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %6
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = call i32 (...) @NAMEHASH_WLOCK()
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = call i64 @NG_NODE_HAS_NAME(%struct.TYPE_11__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load i32, i32* @V_ng_named_nodes, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @V_ng_named_nodes, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = load i32, i32* @nd_nodes, align 4
  %31 = call i32 @LIST_REMOVE(%struct.TYPE_11__* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %15
  %33 = call i32 (...) @NAMEHASH_WUNLOCK()
  %34 = call i32 (...) @IDHASH_WLOCK()
  %35 = load i32, i32* @V_ng_nodes, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @V_ng_nodes, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = load i32, i32* @nd_idnodes, align 4
  %39 = call i32 @LIST_REMOVE(%struct.TYPE_11__* %37, i32 %38)
  %40 = call i32 (...) @IDHASH_WUNLOCK()
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = call i32 @mtx_destroy(i32* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = call i32 @NG_FREE_NODE(%struct.TYPE_11__* %45)
  br label %47

47:                                               ; preds = %32, %6
  %48 = call i32 (...) @CURVNET_RESTORE()
  br label %49

49:                                               ; preds = %47, %5
  ret void
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @NAMEHASH_WLOCK(...) #1

declare dso_local i64 @NG_NODE_HAS_NAME(%struct.TYPE_11__*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @NAMEHASH_WUNLOCK(...) #1

declare dso_local i32 @IDHASH_WLOCK(...) #1

declare dso_local i32 @IDHASH_WUNLOCK(...) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @NG_FREE_NODE(%struct.TYPE_11__*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
