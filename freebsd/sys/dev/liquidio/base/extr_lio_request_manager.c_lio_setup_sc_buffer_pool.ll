; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_setup_sc_buffer_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_setup_sc_buffer_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.lio_soft_command = type { i32, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"sc_pool_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@LIO_MAX_SOFT_COMMAND_BUFFERS = common dso_local global i32 0, align 4
@LIO_SOFT_COMMAND_BUFFER_SIZE = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_setup_sc_buffer_pool(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.lio_soft_command*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @STAILQ_INIT(i32* %9)
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* @MTX_DEF, align 4
  %15 = call i32 @mtx_init(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %14)
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @atomic_store_rel_int(i32* %18, i32 0)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %48, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @LIO_MAX_SOFT_COMMAND_BUFFERS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load i32, i32* @LIO_SOFT_COMMAND_BUFFER_SIZE, align 4
  %26 = bitcast i64* %5 to i32*
  %27 = call i64 @lio_dma_alloc(i32 %25, i32* %26)
  %28 = inttoptr i64 %27 to %struct.lio_soft_command*
  store %struct.lio_soft_command* %28, %struct.lio_soft_command** %4, align 8
  %29 = load %struct.lio_soft_command*, %struct.lio_soft_command** %4, align 8
  %30 = icmp eq %struct.lio_soft_command* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %33 = call i32 @lio_free_sc_buffer_pool(%struct.octeon_device* %32)
  store i32 1, i32* %2, align 4
  br label %52

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.lio_soft_command*, %struct.lio_soft_command** %4, align 8
  %37 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @LIO_SOFT_COMMAND_BUFFER_SIZE, align 4
  %39 = load %struct.lio_soft_command*, %struct.lio_soft_command** %4, align 8
  %40 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.lio_soft_command*, %struct.lio_soft_command** %4, align 8
  %45 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %44, i32 0, i32 0
  %46 = load i32, i32* @entries, align 4
  %47 = call i32 @STAILQ_INSERT_TAIL(i32* %43, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %20

51:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i64 @lio_dma_alloc(i32, i32*) #1

declare dso_local i32 @lio_free_sc_buffer_pool(%struct.octeon_device*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
