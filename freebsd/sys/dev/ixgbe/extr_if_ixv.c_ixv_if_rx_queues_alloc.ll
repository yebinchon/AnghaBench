; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_rx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_rx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ix_rx_queue* }
%struct.ix_rx_queue = type { %struct.adapter*, %struct.rx_ring }
%struct.rx_ring = type { i32, %struct.ix_rx_queue*, i64, i32, %union.ixgbe_adv_rx_desc*, i32, %struct.adapter* }
%union.ixgbe_adv_rx_desc = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate TX ring memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"allocated for %d rx queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*, i32, i32)* @ixv_if_rx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixv_if_rx_queues_alloc(i32 %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca %struct.ix_rx_queue*, align 8
  %14 = alloca i32, align 4
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
  %19 = load %struct.adapter*, %struct.adapter** %12, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 64, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @M_DEVBUF, align 4
  %35 = load i32, i32* @M_NOWAIT, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @malloc(i32 %33, i32 %34, i32 %37)
  %39 = inttoptr i64 %38 to %struct.ix_rx_queue*
  %40 = load %struct.adapter*, %struct.adapter** %12, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 1
  store %struct.ix_rx_queue* %39, %struct.ix_rx_queue** %41, align 8
  %42 = load %struct.adapter*, %struct.adapter** %12, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 1
  %44 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %43, align 8
  %45 = icmp ne %struct.ix_rx_queue* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %5
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @iflib_get_dev(i32 %47)
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %15, align 4
  br label %110

51:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  %52 = load %struct.adapter*, %struct.adapter** %12, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 1
  %54 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %53, align 8
  store %struct.ix_rx_queue* %54, %struct.ix_rx_queue** %13, align 8
  br label %55

55:                                               ; preds = %98, %51
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %55
  %60 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  %61 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %60, i32 0, i32 1
  store %struct.rx_ring* %61, %struct.rx_ring** %16, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %64 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.adapter*, %struct.adapter** %12, align 8
  %66 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  %67 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %66, i32 0, i32 0
  store %struct.adapter* %65, %struct.adapter** %67, align 8
  %68 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %69 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %68, i32 0, i32 6
  store %struct.adapter* %65, %struct.adapter** %69, align 8
  %70 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %71 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @IXGBE_VFRDT(i32 %72)
  %74 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %75 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %union.ixgbe_adv_rx_desc*
  %82 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %83 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %82, i32 0, i32 4
  store %union.ixgbe_adv_rx_desc* %81, %union.ixgbe_adv_rx_desc** %83, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %92 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %94 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  %96 = load %struct.rx_ring*, %struct.rx_ring** %16, align 8
  %97 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %96, i32 0, i32 1
  store %struct.ix_rx_queue* %95, %struct.ix_rx_queue** %97, align 8
  br label %98

98:                                               ; preds = %59
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  %101 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  %102 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %101, i32 1
  store %struct.ix_rx_queue* %102, %struct.ix_rx_queue** %13, align 8
  br label %55

103:                                              ; preds = %55
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @iflib_get_dev(i32 %104)
  %106 = load %struct.adapter*, %struct.adapter** %12, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  store i32 0, i32* %6, align 4
  br label %114

110:                                              ; preds = %46
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @ixv_if_queues_free(i32 %111)
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @IXGBE_VFRDT(i32) #1

declare dso_local i32 @ixv_if_queues_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
