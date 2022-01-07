; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_free_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.irq = type { i64, i32, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.irq*)* @t4_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_free_irq(%struct.adapter* %0, %struct.irq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.irq*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.irq* %1, %struct.irq** %4, align 8
  %5 = load %struct.irq*, %struct.irq** %4, align 8
  %6 = getelementptr inbounds %struct.irq, %struct.irq* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.irq*, %struct.irq** %4, align 8
  %14 = getelementptr inbounds %struct.irq, %struct.irq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.irq*, %struct.irq** %4, align 8
  %17 = getelementptr inbounds %struct.irq, %struct.irq* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @bus_teardown_intr(i32 %12, i64 %15, i64 %18)
  br label %20

20:                                               ; preds = %9, %2
  %21 = load %struct.irq*, %struct.irq** %4, align 8
  %22 = getelementptr inbounds %struct.irq, %struct.irq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = load %struct.irq*, %struct.irq** %4, align 8
  %31 = getelementptr inbounds %struct.irq, %struct.irq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.irq*, %struct.irq** %4, align 8
  %34 = getelementptr inbounds %struct.irq, %struct.irq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @bus_release_resource(i32 %28, i32 %29, i32 %32, i64 %35)
  br label %37

37:                                               ; preds = %25, %20
  %38 = load %struct.irq*, %struct.irq** %4, align 8
  %39 = call i32 @bzero(%struct.irq* %38, i32 24)
  ret i32 0
}

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @bzero(%struct.irq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
