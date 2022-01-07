; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_apic_alloc_vectors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_apic_alloc_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [10 x i8] c"bad count\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bad align\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"align < count\00", align 1
@icu_lock = common dso_local global i32 0, align 4
@APIC_NUM_IOINTS = common dso_local global i64 0, align 8
@lapics = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_FREE = common dso_local global i64 0, align 8
@APIC_IO_INTS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"APIC: Couldn't find APIC vectors for %u IRQs\0A\00", align 1
@num_io_irqs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64, i64)* @native_apic_alloc_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @native_apic_alloc_vectors(i64 %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @powerof2(i64 %13)
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @powerof2(i64 %16)
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp uge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %24 = call i32 @mtx_lock_spin(i32* @icu_lock)
  store i64 0, i64* %12, align 8
  br label %25

25:                                               ; preds = %87, %4
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @APIC_NUM_IOINTS, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lapics, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IRQ_FREE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %87

41:                                               ; preds = %29
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, 1
  %48 = and i64 %45, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %87

51:                                               ; preds = %44
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %41
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %87

60:                                               ; preds = %53
  store i64 0, i64* %12, align 8
  br label %61

61:                                               ; preds = %79, %60
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lapics, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %75, %76
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  store i64 %69, i64* %78, align 8
  br label %79

79:                                               ; preds = %65
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %12, align 8
  br label %61

82:                                               ; preds = %61
  %83 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @APIC_IO_INTS, align 8
  %86 = add i64 %84, %85
  store i64 %86, i64* %5, align 8
  br label %94

87:                                               ; preds = %59, %50, %40
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %12, align 8
  br label %25

90:                                               ; preds = %25
  %91 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  store i64 0, i64* %5, align 8
  br label %94

94:                                               ; preds = %90, %82
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @powerof2(i64) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
