; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_flush_iq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_flush_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.lio_instr_queue*)* }
%struct.lio_instr_queue = type opaque
%struct.lio_instr_queue.0 = type { i64, i64, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@ticks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_flush_iq(%struct.octeon_device* %0, %struct.lio_instr_queue.0* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.lio_instr_queue.0*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store %struct.lio_instr_queue.0* %1, %struct.lio_instr_queue.0** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %12 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %11, i32 0, i32 2
  %13 = call i32 @mtx_trylock(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %96

17:                                               ; preds = %3
  %18 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %19 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %18, i32 0, i32 3
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.lio_instr_queue*)*, i64 (%struct.lio_instr_queue*)** %23, align 8
  %25 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %26 = bitcast %struct.lio_instr_queue.0* %25 to %struct.lio_instr_queue*
  %27 = call i64 %24(%struct.lio_instr_queue* %26)
  %28 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %29 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %73, %17
  %31 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %32 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %35 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %77

39:                                               ; preds = %30
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %44 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub nsw i64 %45, %46
  %48 = call i64 @lio_process_iq_request_list(%struct.octeon_device* %43, %struct.lio_instr_queue.0* %44, i64 %47)
  store i64 %48, i64* %8, align 8
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %51 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %52 = call i64 @lio_process_iq_request_list(%struct.octeon_device* %50, %struct.lio_instr_queue.0* %51, i64 0)
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %58 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %57, i32 0, i32 6
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @atomic_subtract_int(i32* %58, i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %63 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %61
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  br label %69

69:                                               ; preds = %56, %53
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %30, label %77

77:                                               ; preds = %73, %38
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %80, %77
  %86 = load i32, i32* @ticks, align 4
  %87 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %88 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %90 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %89, i32 0, i32 3
  %91 = call i32 @mtx_unlock(i32* %90)
  %92 = load %struct.lio_instr_queue.0*, %struct.lio_instr_queue.0** %6, align 8
  %93 = getelementptr inbounds %struct.lio_instr_queue.0, %struct.lio_instr_queue.0* %92, i32 0, i32 2
  %94 = call i32 @mtx_unlock(i32* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %85, %15
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @mtx_trylock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @lio_process_iq_request_list(%struct.octeon_device*, %struct.lio_instr_queue.0*, i64) #1

declare dso_local i32 @atomic_subtract_int(i32*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
