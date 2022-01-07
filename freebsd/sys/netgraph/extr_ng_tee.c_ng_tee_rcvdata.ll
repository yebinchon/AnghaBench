; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tee.c_ng_tee_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tee.c_ng_tee_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ng_tee_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_tee_rcvdata(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_7__* @NG_HOOK_PRIVATE(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.mbuf* @NGI_M(i32 %12)
  store %struct.mbuf* %13, %struct.mbuf** %8, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %17
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %71

34:                                               ; preds = %2
  %35 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = call %struct.mbuf* @m_dup(%struct.mbuf* %35, i32 %36)
  store %struct.mbuf* %37, %struct.mbuf** %9, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %39 = icmp ne %struct.mbuf* %38, null
  br i1 %39, label %40, label %70

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %49 = call i32 @NG_SEND_DATA_ONLY(i32 %44, i32 %47, %struct.mbuf* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %40
  %53 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %56
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %52, %40
  br label %70

70:                                               ; preds = %69, %34
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %76, label %102

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %6, align 8
  %80 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %81 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %83
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @NG_FWD_ITEM_HOOK(i32 %96, i32 %97, i32 %100)
  br label %105

102:                                              ; preds = %71
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @NG_FREE_ITEM(i32 %103)
  br label %105

105:                                              ; preds = %102, %76
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_7__* @NG_HOOK_PRIVATE(i32) #1

declare dso_local %struct.mbuf* @NGI_M(i32) #1

declare dso_local %struct.mbuf* @m_dup(%struct.mbuf*, i32) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FWD_ITEM_HOOK(i32, i32, i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
