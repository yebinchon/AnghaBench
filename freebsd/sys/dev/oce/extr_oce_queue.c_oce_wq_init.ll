; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_wq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_wq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_wq = type { i32, %struct.TYPE_10__, %struct.TYPE_10__, i32, %struct.TYPE_8__*, i32, i8*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Invalid q length. Must be [256, 2000]: 0x%x\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@OCE_DEFAULT_WQ_EQD = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@OCE_MAX_TX_SIZE = common dso_local global i32 0, align 4
@OCE_MAX_TX_ELEMENTS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@OCE_WQ_PACKET_ARRAY_SIZE = common dso_local global i32 0, align 4
@NIC_WQE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TX_lock\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"WQ_HANDLER_LOCK\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Create WQ failed\0A\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.oce_wq* (%struct.TYPE_9__*, i32, i32)* @oce_wq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oce_wq* @oce_wq_init(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oce_wq*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.oce_wq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 2048
  br i1 %15, label %16, label %22

16:                                               ; preds = %13, %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.oce_wq* null, %struct.oce_wq** %4, align 8
  br label %131

22:                                               ; preds = %13
  %23 = load i32, i32* @M_DEVBUF, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.oce_wq* @malloc(i32 64, i32 %23, i32 %26)
  store %struct.oce_wq* %27, %struct.oce_wq** %8, align 8
  %28 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %29 = icmp ne %struct.oce_wq* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store %struct.oce_wq* null, %struct.oce_wq** %4, align 8
  br label %131

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %34 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %39 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  store i64 %37, i64* %40, align 8
  %41 = load i32, i32* @OCE_DEFAULT_WQ_EQD, align 4
  %42 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %43 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %46 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 2, %48
  %50 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %51 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %54 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 2, %56
  %58 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %59 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = bitcast %struct.TYPE_9__* %61 to i8*
  %63 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %64 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bus_get_dma_tag(i32 %67)
  %69 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %70 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %71 = load i32, i32* @OCE_MAX_TX_SIZE, align 4
  %72 = load i32, i32* @OCE_MAX_TX_ELEMENTS, align 4
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %75 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %74, i32 0, i32 5
  %76 = call i32 @bus_dma_tag_create(i32 %68, i32 1, i32 0, i32 %69, i32 %70, i32* null, i32* null, i32 %71, i32 %72, i32 %73, i32 0, i32* null, i32* null, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %31
  br label %124

80:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %101, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @OCE_WQ_PACKET_ARRAY_SIZE, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %87 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %90 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %89, i32 0, i32 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = call i32 @bus_dmamap_create(i32 %88, i32 0, i32* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %124

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %81

104:                                              ; preds = %81
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @NIC_WQE_SIZE, align 4
  %108 = call i32 @oce_create_ring_buffer(%struct.TYPE_9__* %105, i32 %106, i32 %107)
  %109 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %110 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %112 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  br label %124

116:                                              ; preds = %104
  %117 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %118 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %117, i32 0, i32 1
  %119 = call i32 @LOCK_CREATE(%struct.TYPE_10__* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %121 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %120, i32 0, i32 2
  %122 = call i32 @LOCK_CREATE(%struct.TYPE_10__* %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %123 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  store %struct.oce_wq* %123, %struct.oce_wq** %4, align 8
  br label %131

124:                                              ; preds = %115, %99, %79
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, ...) @device_printf(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %129 = load %struct.oce_wq*, %struct.oce_wq** %8, align 8
  %130 = call i32 @oce_wq_free(%struct.oce_wq* %129)
  store %struct.oce_wq* null, %struct.oce_wq** %4, align 8
  br label %131

131:                                              ; preds = %124, %116, %30, %16
  %132 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  ret %struct.oce_wq* %132
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.oce_wq* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @oce_create_ring_buffer(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @LOCK_CREATE(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @oce_wq_free(%struct.oce_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
