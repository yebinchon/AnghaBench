; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet.c_cvm_do_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet.c_cvm_do_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, i32*, i64, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.mbuf = type { i32 }

@cvm_do_timer.port = internal global i32 0, align 4
@cvm_do_timer.updated = internal global i32 0, align 4
@CVMX_PIP_NUM_INPUT_PORTS = common dso_local global i32 0, align 4
@cvm_oct_device = common dso_local global %struct.TYPE_5__** null, align 8
@cvm_oct_link_taskq = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@cvm_oct_poll_timer = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cvm_do_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_do_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @cvm_do_timer.port, align 4
  %8 = load i32, i32* @CVMX_PIP_NUM_INPUT_PORTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %120

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cvm_oct_device, align 8
  %12 = load i32, i32* @cvm_do_timer.port, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %11, i64 %13
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %114

17:                                               ; preds = %10
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cvm_oct_device, align 8
  %19 = load i32, i32* @cvm_do_timer.port, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %5, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @cvm_oct_common_poll(%struct.TYPE_6__* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %17
  %35 = load i32, i32* @cvm_do_timer.updated, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @cvm_do_timer.updated, align 4
  %37 = load i32, i32* @cvm_oct_link_taskq, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = call i32 @taskqueue_enqueue(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %34, %17
  %42 = load i32, i32* @cvm_do_timer.port, align 4
  %43 = call i32 @cvmx_pko_get_num_queues(i32 %42)
  store i32 %43, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %110, %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %113

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i64 @_IF_QLEN(i32* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %109

57:                                               ; preds = %48
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @IF_LOCK(i32* %63)
  br label %65

65:                                               ; preds = %82, %57
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i64 @_IF_QLEN(i32* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = call i64 @cvmx_fau_fetch_and_add32(i64 %79, i32 0)
  %81 = icmp sgt i64 %72, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %65
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %90 = call i32 @_IF_DEQUEUE(i32* %88, %struct.mbuf* %89)
  %91 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %92 = call i32 @m_freem(%struct.mbuf* %91)
  br label %65

93:                                               ; preds = %65
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @IF_UNLOCK(i32* %99)
  %101 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %102
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %93, %48
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %44

113:                                              ; preds = %44
  br label %114

114:                                              ; preds = %113, %10
  %115 = load i32, i32* @cvm_do_timer.port, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @cvm_do_timer.port, align 4
  %117 = load i32, i32* @hz, align 4
  %118 = sdiv i32 %117, 50
  %119 = call i32 @callout_reset(i32* @cvm_oct_poll_timer, i32 %118, void (i8*)* @cvm_do_timer, i32* null)
  br label %131

120:                                              ; preds = %1
  store i32 0, i32* @cvm_do_timer.port, align 4
  %121 = load i32, i32* @cvm_do_timer.updated, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  store i32 0, i32* @cvm_do_timer.updated, align 4
  %124 = load i32, i32* @hz, align 4
  %125 = sdiv i32 %124, 50
  %126 = call i32 @callout_reset(i32* @cvm_oct_poll_timer, i32 %125, void (i8*)* @cvm_do_timer, i32* null)
  br label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @hz, align 4
  %129 = call i32 @callout_reset(i32* @cvm_oct_poll_timer, i32 %128, void (i8*)* @cvm_do_timer, i32* null)
  br label %130

130:                                              ; preds = %127, %123
  br label %131

131:                                              ; preds = %130, %114
  ret void
}

declare dso_local i32 @cvm_oct_common_poll(%struct.TYPE_6__*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @cvmx_pko_get_num_queues(i32) #1

declare dso_local i64 @_IF_QLEN(i32*) #1

declare dso_local i32 @IF_LOCK(i32*) #1

declare dso_local i64 @cvmx_fau_fetch_and_add32(i64, i32) #1

declare dso_local i32 @_IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @IF_UNLOCK(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
