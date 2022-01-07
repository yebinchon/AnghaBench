; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_etf.c_ng_etf_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_etf.c_ng_etf_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.filter = type { i64 }

@HASHSIZE = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@M_NETGRAPH_ETF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ng_etf_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_etf_disconnect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.filter*, align 8
  %6 = alloca %struct.filter*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @NG_HOOK_NODE(i64 %7)
  %9 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %44, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @HASHSIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call %struct.filter* @LIST_FIRST(i32* %20)
  store %struct.filter* %21, %struct.filter** %5, align 8
  br label %22

22:                                               ; preds = %41, %14
  %23 = load %struct.filter*, %struct.filter** %5, align 8
  %24 = icmp ne %struct.filter* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load %struct.filter*, %struct.filter** %5, align 8
  %27 = load i32, i32* @next, align 4
  %28 = call %struct.filter* @LIST_NEXT(%struct.filter* %26, i32 %27)
  store %struct.filter* %28, %struct.filter** %6, align 8
  %29 = load %struct.filter*, %struct.filter** %5, align 8
  %30 = getelementptr inbounds %struct.filter, %struct.filter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.filter*, %struct.filter** %5, align 8
  %36 = load i32, i32* @next, align 4
  %37 = call i32 @LIST_REMOVE(%struct.filter* %35, i32 %36)
  %38 = load %struct.filter*, %struct.filter** %5, align 8
  %39 = load i32, i32* @M_NETGRAPH_ETF, align 4
  %40 = call i32 @free(%struct.filter* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %25
  %42 = load %struct.filter*, %struct.filter** %6, align 8
  store %struct.filter* %42, %struct.filter** %5, align 8
  br label %22

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load i64, i64* %2, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %80

58:                                               ; preds = %47
  %59 = load i64, i64* %2, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %79

69:                                               ; preds = %58
  %70 = load i64, i64* %2, align 8
  %71 = call %struct.filter* @NG_HOOK_PRIVATE(i64 %70)
  %72 = icmp ne %struct.filter* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i64, i64* %2, align 8
  %75 = call %struct.filter* @NG_HOOK_PRIVATE(i64 %74)
  %76 = load i32, i32* @M_NETGRAPH_ETF, align 4
  %77 = call i32 @free(%struct.filter* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %69
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %54
  %81 = load i64, i64* %2, align 8
  %82 = call i32 @NG_HOOK_SET_PRIVATE(i64 %81, i32* null)
  %83 = load i64, i64* %2, align 8
  %84 = call i32 @NG_HOOK_NODE(i64 %83)
  %85 = call i64 @NG_NODE_NUMHOOKS(i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load i64, i64* %2, align 8
  %89 = call i32 @NG_HOOK_NODE(i64 %88)
  %90 = call i64 @NG_NODE_IS_VALID(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i64, i64* %2, align 8
  %94 = call i32 @NG_HOOK_NODE(i64 %93)
  %95 = call i32 @ng_rmnode_self(i32 %94)
  br label %96

96:                                               ; preds = %92, %87, %80
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i64) #1

declare dso_local %struct.filter* @LIST_FIRST(i32*) #1

declare dso_local %struct.filter* @LIST_NEXT(%struct.filter*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.filter*, i32) #1

declare dso_local i32 @free(%struct.filter*, i32) #1

declare dso_local %struct.filter* @NG_HOOK_PRIVATE(i64) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i64, i32*) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
