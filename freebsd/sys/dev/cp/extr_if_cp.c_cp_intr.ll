; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.mbuf = type { i32 }

@cp_destroy = common dso_local global i64 0, align 8
@led_timo = common dso_local global i32* null, align 8
@hz = common dso_local global i32 0, align 4
@cp_led_off = common dso_local global i32 0, align 4
@NCHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %4, align 8
  %14 = call i32 (...) @splimp()
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @cp_destroy, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @splx(i32 %18)
  br label %108

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = call i32 @CP_LOCK(%struct.TYPE_14__* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = call i32 @cp_interrupt_poll(%struct.TYPE_13__* %28, i32 1)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = call i32 @CP_UNLOCK(%struct.TYPE_14__* %30)
  br label %108

32:                                               ; preds = %20
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = call i32 @cp_led(%struct.TYPE_13__* %33, i32 1)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = call i32 @cp_interrupt(%struct.TYPE_13__* %35)
  %37 = load i32*, i32** @led_timo, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* @hz, align 4
  %43 = sdiv i32 %42, 20
  %44 = load i32, i32* @cp_led_off, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = call i32 @callout_reset(i32* %41, i32 %43, i32 %44, %struct.TYPE_13__* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = call i32 @CP_UNLOCK(%struct.TYPE_14__* %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @splx(i32 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %105, %32
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @NCHAN, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %55, %51
  %66 = phi i1 [ false, %51 ], [ %64, %55 ]
  br i1 %66, label %67, label %108

67:                                               ; preds = %65
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %7, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = icmp ne %struct.TYPE_12__* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78, %67
  br label %105

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %98, %97, %84
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = call i64 @_IF_QLEN(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %94 = call i32 @IF_DEQUEUE(i32* %92, %struct.mbuf* %93)
  %95 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %96 = icmp ne %struct.mbuf* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %85

98:                                               ; preds = %90
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %103 = call i32 @sppp_input(i32 %101, %struct.mbuf* %102)
  br label %85

104:                                              ; preds = %85
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %51

108:                                              ; preds = %17, %27, %65
  ret void
}

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @CP_LOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @cp_interrupt_poll(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @CP_UNLOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @cp_led(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @cp_interrupt(%struct.TYPE_13__*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @_IF_QLEN(i32*) #1

declare dso_local i32 @IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @sppp_input(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
