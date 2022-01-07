; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_rx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_rx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.ix_rx_queue* }
%struct.ix_rx_queue = type { %struct.adapter*, %struct.rx_ring }
%struct.rx_ring = type { %struct.ix_rx_queue*, i64, i32, %union.ixgbe_adv_rx_desc*, i32, i32, %struct.adapter* }
%union.ixgbe_adv_rx_desc = type { i32 }

@M_IXGBE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate TX ring memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"allocated for %d rx queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*, i32, i32)* @ixgbe_if_rx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_rx_queues_alloc(i32 %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca %struct.ix_rx_queue*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rx_ring*, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.adapter* @iflib_get_softc(i32 %16)
  store %struct.adapter* %17, %struct.adapter** %12, align 8
  %18 = load %struct.adapter*, %struct.adapter** %12, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @MPASS(i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %12, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 56, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @M_IXGBE, align 4
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @malloc(i32 %38, i32 %39, i32 %42)
  %44 = inttoptr i64 %43 to %struct.ix_rx_queue*
  %45 = load %struct.adapter*, %struct.adapter** %12, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 3
  store %struct.ix_rx_queue* %44, %struct.ix_rx_queue** %46, align 8
  %47 = load %struct.adapter*, %struct.adapter** %12, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 3
  %49 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %48, align 8
  %50 = icmp ne %struct.ix_rx_queue* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %5
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @iflib_get_dev(i32 %52)
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %6, align 4
  br label %120

56:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  %57 = load %struct.adapter*, %struct.adapter** %12, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 3
  %59 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %58, align 8
  store %struct.ix_rx_queue* %59, %struct.ix_rx_queue** %13, align 8
  br label %60

60:                                               ; preds = %108, %56
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %113

64:                                               ; preds = %60
  %65 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  %66 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %65, i32 0, i32 1
  store %struct.rx_ring* %66, %struct.rx_ring** %15, align 8
  %67 = load %struct.adapter*, %struct.adapter** %12, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.adapter*, %struct.adapter** %12, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @ixgbe_vf_que_index(i32 %69, i32 %72, i32 %73)
  %75 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %76 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.adapter*, %struct.adapter** %12, align 8
  %78 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  %79 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %78, i32 0, i32 0
  store %struct.adapter* %77, %struct.adapter** %79, align 8
  %80 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %81 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %80, i32 0, i32 6
  store %struct.adapter* %77, %struct.adapter** %81, align 8
  %82 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %83 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @IXGBE_RDT(i32 %84)
  %86 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %87 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i64*, i64** %8, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %union.ixgbe_adv_rx_desc*
  %94 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %95 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %94, i32 0, i32 3
  store %union.ixgbe_adv_rx_desc* %93, %union.ixgbe_adv_rx_desc** %95, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %102 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %104 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  %106 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %107 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %106, i32 0, i32 0
  store %struct.ix_rx_queue* %105, %struct.ix_rx_queue** %107, align 8
  br label %108

108:                                              ; preds = %64
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  %111 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  %112 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %111, i32 1
  store %struct.ix_rx_queue* %112, %struct.ix_rx_queue** %13, align 8
  br label %60

113:                                              ; preds = %60
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @iflib_get_dev(i32 %114)
  %116 = load %struct.adapter*, %struct.adapter** %12, align 8
  %117 = getelementptr inbounds %struct.adapter, %struct.adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %113, %51
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @ixgbe_vf_que_index(i32, i32, i32) #1

declare dso_local i32 @IXGBE_RDT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
