; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_discard_rx_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_discard_rx_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_rq = type { i32, %struct.TYPE_4__*, i32, %struct.oce_packet_desc*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.oce_packet_desc = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"oce_discard_rx_comp: Invalid RX completion - Queue is empty\0A\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oce_discard_rx_comp(%struct.oce_rq* %0, i32 %1) #0 {
  %3 = alloca %struct.oce_rq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.oce_packet_desc*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.oce_rq* %0, %struct.oce_rq** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.oce_rq*, %struct.oce_rq** %3, align 8
  %9 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %79, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %82

17:                                               ; preds = %13
  %18 = load %struct.oce_rq*, %struct.oce_rq** %3, align 8
  %19 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.oce_rq*, %struct.oce_rq** %3, align 8
  %24 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %22, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %82

34:                                               ; preds = %17
  %35 = load %struct.oce_rq*, %struct.oce_rq** %3, align 8
  %36 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %35, i32 0, i32 3
  %37 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %36, align 8
  %38 = load %struct.oce_rq*, %struct.oce_rq** %3, align 8
  %39 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %37, i64 %42
  store %struct.oce_packet_desc* %43, %struct.oce_packet_desc** %6, align 8
  %44 = load %struct.oce_rq*, %struct.oce_rq** %3, align 8
  %45 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %6, align 8
  %48 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %51 = call i32 @bus_dmamap_sync(i32 %46, i32 %49, i32 %50)
  %52 = load %struct.oce_rq*, %struct.oce_rq** %3, align 8
  %53 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %6, align 8
  %56 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bus_dmamap_unload(i32 %54, i32 %57)
  %59 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %6, align 8
  %60 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %34
  %64 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %6, align 8
  %65 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @m_freem(i32* %66)
  %68 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %6, align 8
  %69 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %34
  %71 = load %struct.oce_rq*, %struct.oce_rq** %3, align 8
  %72 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i32 @RING_GET(%struct.TYPE_4__* %73, i32 1)
  %75 = load %struct.oce_rq*, %struct.oce_rq** %3, align 8
  %76 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %13

82:                                               ; preds = %29, %13
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @RING_GET(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
