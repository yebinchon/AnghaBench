; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_free_device_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_free_device_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i64, i64*, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@octeon_device = common dso_local global i32** null, align 8
@octeon_device_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_free_device_mem(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %38, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %7 = call i32 @LIO_MAX_OUTPUT_QUEUES(%struct.octeon_device* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %4
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @BIT_ULL(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %9
  %19 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 4
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @M_DEVBUF, align 4
  %36 = call i32 @free(i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %27, %18, %9
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %4

41:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %76, %41
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %45 = call i32 @LIO_MAX_INSTR_QUEUES(%struct.octeon_device* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %42
  %48 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @BIT_ULL(i32 %52)
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %47
  %57 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %58 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %56
  %66 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @M_DEVBUF, align 4
  %74 = call i32 @free(i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %56, %47
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %42

79:                                               ; preds = %42
  %80 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %81 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %3, align 4
  %83 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %84 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @M_DEVBUF, align 4
  %87 = call i32 @free(i64 %85, i32 %86)
  %88 = load i32**, i32*** @octeon_device, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  store i32* null, i32** %91, align 8
  %92 = load i32, i32* @octeon_device_count, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* @octeon_device_count, align 4
  ret void
}

declare dso_local i32 @LIO_MAX_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @LIO_MAX_INSTR_QUEUES(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
