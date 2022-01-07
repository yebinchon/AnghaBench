; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_rx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_rx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.em_rx_queue* }
%struct.em_rx_queue = type { i32, %struct.adapter*, %struct.rx_ring }
%struct.rx_ring = type { i32, i32, %union.e1000_rx_desc_extended*, %struct.em_rx_queue*, %struct.adapter* }
%union.e1000_rx_desc_extended = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate queue memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"allocated for %d rx_queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*, i32, i32)* @em_if_rx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_if_rx_queues_alloc(i32 %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.em_rx_queue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rx_ring*, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.adapter* @iflib_get_softc(i32 %17)
  store %struct.adapter* %18, %struct.adapter** %12, align 8
  %19 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.adapter*, %struct.adapter** %12, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.adapter*, %struct.adapter** %12, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @MPASS(i32 %31)
  %33 = load %struct.adapter*, %struct.adapter** %12, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 48, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @M_DEVBUF, align 4
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @malloc(i32 %38, i32 %39, i32 %42)
  %44 = inttoptr i64 %43 to %struct.em_rx_queue*
  %45 = load %struct.adapter*, %struct.adapter** %12, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 1
  store %struct.em_rx_queue* %44, %struct.em_rx_queue** %46, align 8
  %47 = icmp ne %struct.em_rx_queue* %44, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %5
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @iflib_get_dev(i32 %49)
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %13, align 4
  br label %112

53:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %54 = load %struct.adapter*, %struct.adapter** %12, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 1
  %56 = load %struct.em_rx_queue*, %struct.em_rx_queue** %55, align 8
  store %struct.em_rx_queue* %56, %struct.em_rx_queue** %14, align 8
  br label %57

57:                                               ; preds = %96, %53
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %57
  %62 = load %struct.em_rx_queue*, %struct.em_rx_queue** %14, align 8
  %63 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %62, i32 0, i32 2
  store %struct.rx_ring* %63, %struct.rx_ring** %16, align 8
  %64 = load %struct.adapter*, %struct.adapter** %12, align 8
  %65 = load %struct.em_rx_queue*, %struct.em_rx_queue** %14, align 8
  %66 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %65, i32 0, i32 1
  store %struct.adapter* %64, %struct.adapter** %66, align 8
  %67 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %68 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %67, i32 0, i32 4
  store %struct.adapter* %64, %struct.adapter** %68, align 8
  %69 = load %struct.em_rx_queue*, %struct.em_rx_queue** %14, align 8
  %70 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %71 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %70, i32 0, i32 3
  store %struct.em_rx_queue* %69, %struct.em_rx_queue** %71, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %74 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.em_rx_queue*, %struct.em_rx_queue** %14, align 8
  %76 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %77, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %union.e1000_rx_desc_extended*
  %85 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %86 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %85, i32 0, i32 2
  store %union.e1000_rx_desc_extended* %84, %union.e1000_rx_desc_extended** %86, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %95 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %61
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  %99 = load %struct.em_rx_queue*, %struct.em_rx_queue** %14, align 8
  %100 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %99, i32 1
  store %struct.em_rx_queue* %100, %struct.em_rx_queue** %14, align 8
  br label %57

101:                                              ; preds = %57
  %102 = load i64, i64* @bootverbose, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @iflib_get_dev(i32 %105)
  %107 = load %struct.adapter*, %struct.adapter** %12, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %104, %101
  store i32 0, i32* %6, align 4
  br label %116

112:                                              ; preds = %48
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @em_if_queues_free(i32 %113)
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %112, %111
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @em_if_queues_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
