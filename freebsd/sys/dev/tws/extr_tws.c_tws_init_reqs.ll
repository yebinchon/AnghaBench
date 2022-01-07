; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_init_reqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_init_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, %struct.TYPE_8__*, i64, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.tws_command_packet*, %struct.tws_softc*, i64, i32 }
%struct.tws_command_packet = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [8 x i8] c"phy cmd\00", align 1
@tws_queue_depth = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@TWS_REQ_STATE_FREE = common dso_local global i32 0, align 4
@TWS_RESERVED_REQS = common dso_local global i32 0, align 4
@TWS_FREE_Q = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tws_softc*, i32)* @tws_init_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tws_init_reqs(%struct.tws_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tws_command_packet*, align 8
  %7 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %9 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.tws_command_packet*
  store %struct.tws_command_packet* %11, %struct.tws_command_packet** %6, align 8
  %12 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @bzero(%struct.tws_command_packet* %12, i32 %13)
  %15 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %16 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %17 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %18, i32 0)
  %20 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %21 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %155, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @tws_queue_depth, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %158

27:                                               ; preds = %23
  %28 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %29 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %32 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 6
  %38 = call i64 @bus_dmamap_create(i32 %30, i32 0, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %42 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %41, i32 0, i32 0
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load i32, i32* @FAILURE, align 4
  store i32 %44, i32* %3, align 4
  br label %163

45:                                               ; preds = %27
  %46 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %46, i64 %48
  %50 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %51 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  store %struct.tws_command_packet* %49, %struct.tws_command_packet** %56, align 8
  %57 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %57, i64 %59
  %61 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %60, i32 0, i32 0
  %62 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %63 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %68, align 8
  %69 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %70 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = add i64 %71, %74
  %76 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %77 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %76, i32 0, i32 3
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i64 %75, i64* %82, align 8
  %83 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %84 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 4
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = add i64 %86, %89
  %91 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %92 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  store i64 %90, i64* %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %100 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %98, i32* %105, align 8
  %106 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %107 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %108 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  store %struct.tws_softc* %106, %struct.tws_softc** %113, align 8
  %114 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %115 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load %struct.tws_command_packet*, %struct.tws_command_packet** %120, align 8
  %122 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 128, i32* %124, align 4
  %125 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %126 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = call i32 @callout_init(i32* %131, i32 1)
  %133 = load i32, i32* @TWS_REQ_STATE_FREE, align 4
  %134 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %135 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i32 %133, i32* %140, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @TWS_RESERVED_REQS, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %45
  %145 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %146 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %147 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %150
  %152 = load i32, i32* @TWS_FREE_Q, align 4
  %153 = call i32 @tws_q_insert_tail(%struct.tws_softc* %145, %struct.TYPE_8__* %151, i32 %152)
  br label %154

154:                                              ; preds = %144, %45
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %23

158:                                              ; preds = %23
  %159 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %160 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %159, i32 0, i32 0
  %161 = call i32 @mtx_unlock(i32* %160)
  %162 = load i32, i32* @SUCCESS, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %158, %40
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @bzero(%struct.tws_command_packet*, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i64, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @tws_q_insert_tail(%struct.tws_softc*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
