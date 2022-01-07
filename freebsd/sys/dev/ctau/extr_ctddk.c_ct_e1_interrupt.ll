; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_e1_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_e1_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@E1SR_SCC_IRQ = common dso_local global i8 0, align 1
@E1SR_E0_IRQ1 = common dso_local global i8 0, align 1
@E1SR_E1_IRQ1 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @ct_e1_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_e1_interrupt(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @E1SR(i32 %6)
  %8 = call zeroext i8 @inb(i32 %7)
  store i8 %8, i8* %3, align 1
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @E1SR_SCC_IRQ, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = call i32 @ct_scc_interrupt(%struct.TYPE_4__* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @E1SR_E0_IRQ1, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 0
  %30 = call i32 @ct_e1timer_interrupt(i64 %29)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i8, i8* %3, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @E1SR_E1_IRQ1, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @ct_e1timer_interrupt(i64 %42)
  br label %44

44:                                               ; preds = %38, %31
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @E1SR(i32) #1

declare dso_local i32 @ct_scc_interrupt(%struct.TYPE_4__*) #1

declare dso_local i32 @ct_e1timer_interrupt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
