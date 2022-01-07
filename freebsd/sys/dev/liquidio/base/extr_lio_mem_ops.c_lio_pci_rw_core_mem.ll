; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_mem_ops.c_lio_pci_rw_core_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_mem_ops.c_lio_pci_rw_core_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.1*, i32, i32)*, i32 (%struct.octeon_device.2*, i32, i32, i32)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.octeon_device.2 = type opaque
%struct.TYPE_3__ = type { i32, i32 }

@MEMOPS_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32, i32*, i32, i32)* @lio_pci_rw_core_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_pci_rw_core_mem(%struct.octeon_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, -4194304
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %22
  %30 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = shl i32 %34, 22
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 4194303
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @lio_pci_fastread(%struct.octeon_device* %42, i32 %43, i32* %44, i32 %45)
  br label %53

47:                                               ; preds = %29
  %48 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @lio_pci_fastwrite(%struct.octeon_device* %48, i32 %49, i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  br label %141

54:                                               ; preds = %22, %5
  %55 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %56 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %55, i32 0, i32 0
  %57 = call i32 @mtx_lock(i32* %56)
  %58 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %59 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.0*, i32)** %60, align 8
  %62 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %63 = bitcast %struct.octeon_device* %62 to %struct.octeon_device.0*
  %64 = load i32, i32* @MEMOPS_IDX, align 4
  %65 = call i32 %61(%struct.octeon_device.0* %63, i32 %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %125, %54
  %67 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %68 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32 (%struct.octeon_device.2*, i32, i32, i32)*, i32 (%struct.octeon_device.2*, i32, i32, i32)** %69, align 8
  %71 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %72 = bitcast %struct.octeon_device* %71 to %struct.octeon_device.2*
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @MEMOPS_IDX, align 4
  %75 = call i32 %70(%struct.octeon_device.2* %72, i32 %73, i32 %74, i32 1)
  %76 = load i32, i32* @MEMOPS_IDX, align 4
  %77 = shl i32 %76, 22
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 4194303
  %80 = add nsw i32 %77, %79
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %84, -4194304
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, -4194304
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %66
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, -4194304
  %92 = load i32, i32* @MEMOPS_IDX, align 4
  %93 = shl i32 %92, 22
  %94 = add nsw i32 %91, %93
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %12, align 4
  br label %99

97:                                               ; preds = %66
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %97, %89
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @lio_pci_fastread(%struct.octeon_device* %103, i32 %104, i32* %105, i32 %106)
  br label %114

108:                                              ; preds = %99
  %109 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @lio_pci_fastwrite(%struct.octeon_device* %109, i32 %110, i32* %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %102
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %8, align 8
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %66, label %128

128:                                              ; preds = %125
  %129 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %130 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32 (%struct.octeon_device.1*, i32, i32)*, i32 (%struct.octeon_device.1*, i32, i32)** %131, align 8
  %133 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %134 = bitcast %struct.octeon_device* %133 to %struct.octeon_device.1*
  %135 = load i32, i32* @MEMOPS_IDX, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 %132(%struct.octeon_device.1* %134, i32 %135, i32 %136)
  %138 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %139 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %138, i32 0, i32 0
  %140 = call i32 @mtx_unlock(i32* %139)
  br label %141

141:                                              ; preds = %128, %53
  ret void
}

declare dso_local i32 @lio_pci_fastread(%struct.octeon_device*, i32, i32*, i32) #1

declare dso_local i32 @lio_pci_fastwrite(%struct.octeon_device*, i32, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
