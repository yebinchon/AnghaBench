; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pptpgre.c_ng_pptpgre_reorder_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pptpgre.c_ng_pptpgre_reorder_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.ng_pptpgre_roq = type { i32 }

@next = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@sendq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @ng_pptpgre_reorder_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_pptpgre_reorder_timeout(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ng_pptpgre_roq*, align 8
  %13 = alloca %struct.ng_pptpgre_roq*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_9__* @NG_NODE_PRIVATE(i32 %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @SLIST_HEAD_INITIALIZER(i32 %18)
  store i32 %19, i32* %11, align 4
  store %struct.ng_pptpgre_roq* null, %struct.ng_pptpgre_roq** %13, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = call i64 @SLIST_EMPTY(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  br label %106

36:                                               ; preds = %4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = call %struct.ng_pptpgre_roq* @SLIST_FIRST(i32* %38)
  store %struct.ng_pptpgre_roq* %39, %struct.ng_pptpgre_roq** %12, align 8
  store %struct.ng_pptpgre_roq* %39, %struct.ng_pptpgre_roq** %13, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* @next, align 4
  %47 = call i32 @SLIST_REMOVE_HEAD(i32* %45, i32 %46)
  %48 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %12, align 8
  %49 = load i32, i32* @next, align 4
  %50 = call i32 @SLIST_INSERT_HEAD(i32* %11, %struct.ng_pptpgre_roq* %48, i32 %49)
  br label %51

51:                                               ; preds = %70, %36
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = call i64 @SLIST_EMPTY(i32* %53)
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %57, label %84

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = call %struct.ng_pptpgre_roq* @SLIST_FIRST(i32* %59)
  store %struct.ng_pptpgre_roq* %60, %struct.ng_pptpgre_roq** %12, align 8
  %61 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %12, align 8
  %62 = getelementptr inbounds %struct.ng_pptpgre_roq, %struct.ng_pptpgre_roq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %13, align 8
  %65 = getelementptr inbounds %struct.ng_pptpgre_roq, %struct.ng_pptpgre_roq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PPTP_SEQ_DIFF(i32 %63, i32 %66)
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %84

70:                                               ; preds = %57
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* @next, align 4
  %78 = call i32 @SLIST_REMOVE_HEAD(i32* %76, i32 %77)
  %79 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %13, align 8
  %80 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %12, align 8
  %81 = load i32, i32* @next, align 4
  %82 = call i32 @SLIST_INSERT_AFTER(%struct.ng_pptpgre_roq* %79, %struct.ng_pptpgre_roq* %80, i32 %81)
  %83 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %12, align 8
  store %struct.ng_pptpgre_roq* %83, %struct.ng_pptpgre_roq** %13, align 8
  br label %51

84:                                               ; preds = %69, %51
  %85 = load %struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq** %13, align 8
  %86 = getelementptr inbounds %struct.ng_pptpgre_roq, %struct.ng_pptpgre_roq* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = call i64 @SLIST_EMPTY(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %84
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = call i32 @ng_pptpgre_start_reorder_timer(%struct.TYPE_10__* %95)
  br label %97

97:                                               ; preds = %94, %84
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = call i32 @ng_pptpgre_ack(%struct.TYPE_10__* %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = call i32 @ng_pptpgre_sendq(%struct.TYPE_10__* %100, i32* %11, i32* null)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* @MA_NOTOWNED, align 4
  %105 = call i32 @mtx_assert(i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %97, %32
  ret void
}

declare dso_local %struct.TYPE_9__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @SLIST_HEAD_INITIALIZER(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.ng_pptpgre_roq* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.ng_pptpgre_roq*, i32) #1

declare dso_local i32 @PPTP_SEQ_DIFF(i32, i32) #1

declare dso_local i32 @SLIST_INSERT_AFTER(%struct.ng_pptpgre_roq*, %struct.ng_pptpgre_roq*, i32) #1

declare dso_local i32 @ng_pptpgre_start_reorder_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @ng_pptpgre_ack(%struct.TYPE_10__*) #1

declare dso_local i32 @ng_pptpgre_sendq(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
