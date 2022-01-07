; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_send_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_send_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_bridge_send_ctx = type { i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ng_bridge_send_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_bridge_send_ctx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ng_bridge_send_ctx*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ng_bridge_send_ctx*
  store %struct.ng_bridge_send_ctx* %11, %struct.ng_bridge_send_ctx** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_7__* @NG_HOOK_PRIVATE(i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = load %struct.ng_bridge_send_ctx*, %struct.ng_bridge_send_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.ng_bridge_send_ctx, %struct.ng_bridge_send_ctx* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp eq %struct.TYPE_7__* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %95

20:                                               ; preds = %2
  %21 = load %struct.ng_bridge_send_ctx*, %struct.ng_bridge_send_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.ng_bridge_send_ctx, %struct.ng_bridge_send_ctx* %21, i32 0, i32 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load %struct.ng_bridge_send_ctx*, %struct.ng_bridge_send_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.ng_bridge_send_ctx, %struct.ng_bridge_send_ctx* %27, i32 0, i32 4
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %28, align 8
  store i32 1, i32* %3, align 4
  br label %95

29:                                               ; preds = %20
  %30 = load %struct.ng_bridge_send_ctx*, %struct.ng_bridge_send_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.ng_bridge_send_ctx, %struct.ng_bridge_send_ctx* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = call %struct.mbuf* @m_dup(i32 %32, i32 %33)
  store %struct.mbuf* %34, %struct.mbuf** %8, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %36 = icmp eq %struct.mbuf* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = load %struct.ng_bridge_send_ctx*, %struct.ng_bridge_send_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.ng_bridge_send_ctx, %struct.ng_bridge_send_ctx* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @ENOBUFS, align 4
  %46 = load %struct.ng_bridge_send_ctx*, %struct.ng_bridge_send_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.ng_bridge_send_ctx, %struct.ng_bridge_send_ctx* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %95

48:                                               ; preds = %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %57
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.ng_bridge_send_ctx*, %struct.ng_bridge_send_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.ng_bridge_send_ctx, %struct.ng_bridge_send_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %68 [
    i32 1, label %69
    i32 2, label %75
  ]

68:                                               ; preds = %48
  br label %81

69:                                               ; preds = %48
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %81

75:                                               ; preds = %48
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %69, %68
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %87 = call i32 @NG_SEND_DATA_ONLY(i32 %82, i32 %85, %struct.mbuf* %86)
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.ng_bridge_send_ctx*, %struct.ng_bridge_send_ctx** %6, align 8
  %93 = getelementptr inbounds %struct.ng_bridge_send_ctx, %struct.ng_bridge_send_ctx* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %81
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %37, %25, %19
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_7__* @NG_HOOK_PRIVATE(i32) #1

declare dso_local %struct.mbuf* @m_dup(i32, i32) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
