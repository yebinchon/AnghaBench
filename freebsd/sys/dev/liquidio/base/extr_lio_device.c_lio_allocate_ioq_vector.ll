; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_allocate_ioq_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_allocate_ioq_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_2__, %struct.lio_ioq_vector* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lio_ioq_vector = type { i32, i32, i32, %struct.octeon_device* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@LIO_CN23XX_PF_VID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_allocate_ioq_vector(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.lio_ioq_vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %10 = call i64 @LIO_CN23XX_PF(%struct.octeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 24, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @M_DEVBUF, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.lio_ioq_vector* @malloc(i32 %22, i32 %23, i32 %26)
  %28 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 2
  store %struct.lio_ioq_vector* %27, %struct.lio_ioq_vector** %29, align 8
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 2
  %32 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %31, align 8
  %33 = icmp eq %struct.lio_ioq_vector* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %83

35:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %79, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 2
  %43 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %43, i64 %45
  store %struct.lio_ioq_vector* %46, %struct.lio_ioq_vector** %4, align 8
  %47 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %48 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %4, align 8
  %49 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %48, i32 0, i32 3
  store %struct.octeon_device* %47, %struct.octeon_device** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %4, align 8
  %52 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @mp_ncpus, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %4, align 8
  %58 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %57, i32 0, i32 2
  %59 = call i32 @CPU_SETOF(i32 %56, i32* %58)
  %60 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LIO_CN23XX_PF_VID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %40
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %66, %70
  %72 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %4, align 8
  %73 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %78

74:                                               ; preds = %40
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %4, align 8
  %77 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %36

82:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %34
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @LIO_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local %struct.lio_ioq_vector* @malloc(i32, i32, i32) #1

declare dso_local i32 @CPU_SETOF(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
