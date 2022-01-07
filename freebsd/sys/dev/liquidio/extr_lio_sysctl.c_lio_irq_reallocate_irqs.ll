; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_irq_reallocate_irqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_irq_reallocate_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_4__, i32, i32*, i32, i32*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.1*, i32)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.TYPE_3__ = type { i32*, i32, i32* }

@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Setup interuupt failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, i32)* @lio_irq_reallocate_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_irq_reallocate_irqs(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %180

13:                                               ; preds = %2
  %14 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.1*, i32)** %16, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %19 = bitcast %struct.octeon_device* %18 to %struct.octeon_device.1*
  %20 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %21 = call i32 %17(%struct.octeon_device.1* %19, i32 %20)
  %22 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %163

26:                                               ; preds = %13
  %27 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %28 = call i64 @LIO_CN23XX_PF(%struct.octeon_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %26
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %118, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %121

40:                                               ; preds = %36
  %41 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 6
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %40
  %51 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 6
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %63 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %62, i32 0, i32 6
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @bus_teardown_intr(i32 %53, i32* %61, i32* %69)
  %71 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %72 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %71, i32 0, i32 6
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %50, %40
  %79 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %80 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %79, i32 0, i32 6
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %117

88:                                               ; preds = %78
  %89 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %90 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SYS_RES_IRQ, align 4
  %93 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %94 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %93, i32 0, i32 6
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %102 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %101, i32 0, i32 6
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @bus_release_resource(i32 %91, i32 %92, i32 %100, i32* %108)
  %110 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %111 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %110, i32 0, i32 6
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %88, %78
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %36

121:                                              ; preds = %36
  %122 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %123 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %128 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %131 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %134 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @bus_teardown_intr(i32 %129, i32* %132, i32* %135)
  %137 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %138 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %137, i32 0, i32 5
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %126, %121
  %140 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %141 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %158

144:                                              ; preds = %139
  %145 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %146 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SYS_RES_IRQ, align 4
  %149 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %150 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %153 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @bus_release_resource(i32 %147, i32 %148, i32 %151, i32* %154)
  %156 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %157 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %156, i32 0, i32 3
  store i32* null, i32** %157, align 8
  br label %158

158:                                              ; preds = %144, %139
  %159 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %160 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @pci_release_msi(i32 %161)
  br label %163

163:                                              ; preds = %158, %13
  %164 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i64 @lio_setup_interrupt(%struct.octeon_device* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %170 = call i32 @lio_dev_info(%struct.octeon_device* %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %180

171:                                              ; preds = %163
  %172 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %173 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.0*, i32)** %174, align 8
  %176 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %177 = bitcast %struct.octeon_device* %176 to %struct.octeon_device.0*
  %178 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %179 = call i32 %175(%struct.octeon_device.0* %177, i32 %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %171, %168, %12
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i64 @LIO_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i64 @lio_setup_interrupt(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_dev_info(%struct.octeon_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
