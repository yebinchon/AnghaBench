; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_apic_alloc_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_apic_alloc_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@num_io_irqs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Invalid IRQ %u\00", align 1
@icu_lock = common dso_local global i32 0, align 4
@APIC_NUM_IOINTS = common dso_local global i64 0, align 8
@lapics = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_FREE = common dso_local global i64 0, align 8
@APIC_IO_INTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @native_apic_alloc_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @native_apic_alloc_vector(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @num_io_irqs, align 8
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @KASSERT(i32 %10, i8* %12)
  %14 = call i32 @mtx_lock_spin(i32* @icu_lock)
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %44, %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @APIC_NUM_IOINTS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lapics, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IRQ_FREE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %44

31:                                               ; preds = %19
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lapics, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %32, i64* %39, align 8
  %40 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @APIC_IO_INTS, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %3, align 8
  br label %49

44:                                               ; preds = %30
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %15

47:                                               ; preds = %15
  %48 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  store i64 0, i64* %3, align 8
  br label %49

49:                                               ; preds = %47, %31
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
