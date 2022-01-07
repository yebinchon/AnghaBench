; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_make_node_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_make_node_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_type = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__, i32, %struct.ng_type* }
%struct.TYPE_9__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V_nextID = common dso_local global i32 0, align 4
@V_ng_nodes = common dso_local global i32 0, align 4
@V_ng_ID_hmask = common dso_local global i32 0, align 4
@V_ng_ID_hash = common dso_local global i32* null, align 8
@nd_idnodes = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_make_node_common(%struct.ng_type* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ng_type*, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.ng_type* %0, %struct.ng_type** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  %8 = load %struct.ng_type*, %struct.ng_type** %4, align 8
  %9 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @ng_findtype(i32 %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (...) @TRAP_ERROR()
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = call i32 @NG_ALLOC_NODE(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 (...) @TRAP_ERROR()
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %90

24:                                               ; preds = %16
  %25 = load %struct.ng_type*, %struct.ng_type** %4, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store %struct.ng_type* %25, %struct.ng_type** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = call i32 @NG_NODE_REF(%struct.TYPE_8__* %28)
  %30 = load %struct.ng_type*, %struct.ng_type** %4, align 8
  %31 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = call i32 @NG_QUEUE_LOCK_INIT(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = call i32 @STAILQ_INIT(i32* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = call i32 @LIST_INIT(i32* %45)
  %47 = call i32 (...) @IDHASH_WLOCK()
  br label %48

48:                                               ; preds = %67, %24
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %49 = load i32, i32* @V_nextID, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @V_nextID, align 4
  %51 = sext i32 %49 to i64
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = call i32 @NG_IDHASH_FIND(i64 %56, %struct.TYPE_8__* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = icmp eq %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %68

67:                                               ; preds = %63, %48
  br label %48

68:                                               ; preds = %66
  %69 = load i32, i32* @V_ng_nodes, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @V_ng_nodes, align 4
  %71 = load i32, i32* @V_ng_nodes, align 4
  %72 = mul nsw i32 %71, 2
  %73 = load i32, i32* @V_ng_ID_hmask, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (...) @ng_ID_rehash()
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32*, i32** @V_ng_ID_hash, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @NG_IDHASH_FN(i64 %81)
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = load i32, i32* @nd_idnodes, align 4
  %86 = call i32 @LIST_INSERT_HEAD(i32* %83, %struct.TYPE_8__* %84, i32 %85)
  %87 = call i32 (...) @IDHASH_WUNLOCK()
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %89, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %77, %21, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32* @ng_findtype(i32) #1

declare dso_local i32 @TRAP_ERROR(...) #1

declare dso_local i32 @NG_ALLOC_NODE(%struct.TYPE_8__*) #1

declare dso_local i32 @NG_NODE_REF(%struct.TYPE_8__*) #1

declare dso_local i32 @NG_QUEUE_LOCK_INIT(%struct.TYPE_9__*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @IDHASH_WLOCK(...) #1

declare dso_local i32 @NG_IDHASH_FIND(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @ng_ID_rehash(...) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @NG_IDHASH_FN(i64) #1

declare dso_local i32 @IDHASH_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
