; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_msix_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_msix_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_ioq_vector = type { i64, %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_4__, i32, i32, %struct.lio_instr_queue**, %struct.TYPE_3__, %struct.lio_droq** }
%struct.TYPE_4__ = type { i32* }
%struct.lio_instr_queue = type { i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.lio_ioq_vector.0*)* }
%struct.lio_ioq_vector.0 = type opaque
%struct.lio_droq = type { i64, i32, i32 }

@LIO_MSIX_PO_INT = common dso_local global i32 0, align 4
@LIO_MSIX_PI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lio_msix_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_msix_intr_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lio_ioq_vector*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.lio_droq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lio_instr_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.lio_ioq_vector*
  store %struct.lio_ioq_vector* %11, %struct.lio_ioq_vector** %3, align 8
  %12 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %3, align 8
  %13 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %12, i32 0, i32 1
  %14 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  store %struct.octeon_device* %14, %struct.octeon_device** %4, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 5
  %17 = load %struct.lio_droq**, %struct.lio_droq*** %16, align 8
  %18 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %3, align 8
  %19 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.lio_droq*, %struct.lio_droq** %17, i64 %20
  %22 = load %struct.lio_droq*, %struct.lio_droq** %21, align 8
  store %struct.lio_droq* %22, %struct.lio_droq** %5, align 8
  %23 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.lio_ioq_vector.0*)*, i32 (%struct.lio_ioq_vector.0*)** %25, align 8
  %27 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %3, align 8
  %28 = bitcast %struct.lio_ioq_vector* %27 to %struct.lio_ioq_vector.0*
  %29 = call i32 %26(%struct.lio_ioq_vector.0* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @LIO_MSIX_PO_INT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @LIO_MSIX_PI_INT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %121

39:                                               ; preds = %34, %1
  %40 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %41 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %40, i32 0, i32 3
  %42 = load %struct.lio_instr_queue**, %struct.lio_instr_queue*** %41, align 8
  %43 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %44 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.lio_instr_queue*, %struct.lio_instr_queue** %42, i64 %45
  %47 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %46, align 8
  store %struct.lio_instr_queue* %47, %struct.lio_instr_queue** %7, align 8
  store i32 1, i32* %9, align 4
  %48 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %49 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %50 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %51 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lio_droq_process_packets(%struct.octeon_device* %48, %struct.lio_droq* %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %7, align 8
  %55 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %54, i32 0, i32 2
  %56 = call i64 @atomic_load_acq_int(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %39
  %59 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %60 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %7, align 8
  %61 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %62 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @lio_flush_iq(%struct.octeon_device* %59, %struct.lio_instr_queue* %60, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %58, %39
  %66 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %67 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %103

71:                                               ; preds = %65
  %72 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %7, align 8
  %73 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %103

76:                                               ; preds = %71
  %77 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %7, align 8
  %78 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %77, i32 0, i32 0
  %79 = call i64 @mtx_trylock(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %7, align 8
  %87 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @drbr_empty(i32* %85, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %81
  %92 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %93 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %7, align 8
  %97 = call i32 @lio_mq_start_locked(i32* %95, %struct.lio_instr_queue* %96)
  br label %98

98:                                               ; preds = %91, %81
  %99 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %7, align 8
  %100 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %99, i32 0, i32 0
  %101 = call i32 @mtx_unlock(i32* %100)
  br label %102

102:                                              ; preds = %98, %76
  br label %103

103:                                              ; preds = %102, %71, %65
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %111 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %114 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %113, i32 0, i32 1
  %115 = call i32 @taskqueue_enqueue(i32 %112, i32* %114)
  br label %120

116:                                              ; preds = %106
  %117 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %118 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %7, align 8
  %119 = call i32 @lio_enable_irq(%struct.lio_droq* %117, %struct.lio_instr_queue* %118)
  br label %120

120:                                              ; preds = %116, %109
  br label %121

121:                                              ; preds = %120, %34
  ret void
}

declare dso_local i32 @lio_droq_process_packets(%struct.octeon_device*, %struct.lio_droq*, i32) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @lio_flush_iq(%struct.octeon_device*, %struct.lio_instr_queue*, i32) #1

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @drbr_empty(i32*, i32*) #1

declare dso_local i32 @lio_mq_start_locked(i32*, %struct.lio_instr_queue*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @lio_enable_irq(%struct.lio_droq*, %struct.lio_instr_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
