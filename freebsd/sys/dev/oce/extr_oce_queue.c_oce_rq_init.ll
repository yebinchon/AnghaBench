; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_rq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_rq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_rq = type { i32, i32, %struct.TYPE_7__*, i32, i8*, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@oce_rq_buf_size = common dso_local global i32 0, align 4
@OCE_RQ_PACKET_ARRAY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"RX_lock\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Create RQ failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.oce_rq* (%struct.TYPE_8__*, i32, i32, i32, i32)* @oce_rq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oce_rq* @oce_rq_init(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.oce_rq*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.oce_rq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @OCE_LOG2(i32 %15)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store %struct.oce_rq* null, %struct.oce_rq** %6, align 8
  br label %124

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 1024
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  store %struct.oce_rq* null, %struct.oce_rq** %6, align 8
  br label %124

26:                                               ; preds = %22
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.oce_rq* @malloc(i32 72, i32 %27, i32 %30)
  store %struct.oce_rq* %31, %struct.oce_rq** %12, align 8
  %32 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %33 = icmp ne %struct.oce_rq* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store %struct.oce_rq* null, %struct.oce_rq** %6, align 8
  br label %124

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %38 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %42 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %46 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %49 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %52 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %51, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %55 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %58 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = bitcast %struct.TYPE_8__* %59 to i8*
  %61 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %62 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bus_get_dma_tag(i32 %65)
  %67 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %68 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %69 = load i32, i32* @oce_rq_buf_size, align 4
  %70 = load i32, i32* @oce_rq_buf_size, align 4
  %71 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %72 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %71, i32 0, i32 3
  %73 = call i32 @bus_dma_tag_create(i32 %66, i32 1, i32 0, i32 %67, i32 %68, i32* null, i32* null, i32 %69, i32 1, i32 %70, i32 0, i32* null, i32* null, i32* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %35
  br label %117

77:                                               ; preds = %35
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %98, %77
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @OCE_RQ_PACKET_ARRAY_SIZE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %84 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %87 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = call i32 @bus_dmamap_create(i32 %85, i32 0, i32* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %117

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %78

101:                                              ; preds = %78
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @oce_create_ring_buffer(%struct.TYPE_8__* %102, i32 %103, i32 4)
  %105 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %106 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %108 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %101
  br label %117

112:                                              ; preds = %101
  %113 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %114 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %113, i32 0, i32 0
  %115 = call i32 @LOCK_CREATE(i32* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %116 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  store %struct.oce_rq* %116, %struct.oce_rq** %6, align 8
  br label %124

117:                                              ; preds = %111, %96, %76
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.oce_rq*, %struct.oce_rq** %12, align 8
  %123 = call i32 @oce_rq_free(%struct.oce_rq* %122)
  store %struct.oce_rq* null, %struct.oce_rq** %6, align 8
  br label %124

124:                                              ; preds = %117, %112, %34, %25, %18
  %125 = load %struct.oce_rq*, %struct.oce_rq** %6, align 8
  ret %struct.oce_rq* %125
}

declare dso_local i64 @OCE_LOG2(i32) #1

declare dso_local %struct.oce_rq* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @oce_create_ring_buffer(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @LOCK_CREATE(i32*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @oce_rq_free(%struct.oce_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
