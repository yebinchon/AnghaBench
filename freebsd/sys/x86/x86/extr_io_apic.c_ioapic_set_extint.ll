; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_set_extint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_set_extint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioapic = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IRQ_EXTINT = common dso_local global i64 0, align 8
@APIC_BUS_UNKNOWN = common dso_local global i32 0, align 4
@enable_extint = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"ioapic%u: Routing external 8259A's -> intpin %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioapic_set_extint(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ioapic*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ioapic*
  store %struct.ioapic* %8, %struct.ioapic** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %11 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %91

16:                                               ; preds = %2
  %17 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %18 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IRQ_EXTINT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %91

27:                                               ; preds = %16
  %28 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %29 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %91

38:                                               ; preds = %27
  %39 = load i32, i32* @APIC_BUS_UNKNOWN, align 4
  %40 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %41 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %39, i32* %45, align 4
  %46 = load i64, i64* @IRQ_EXTINT, align 8
  %47 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %48 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %46, i64* %52, align 8
  %53 = load i64, i64* @enable_extint, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %38
  %56 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %57 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  br label %69

62:                                               ; preds = %38
  %63 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %64 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %55
  %70 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %71 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 1, i32* %75, align 4
  %76 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %77 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i32 1, i32* %81, align 8
  %82 = load i64, i64* @bootverbose, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %69
  %85 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %86 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %87, i64 %88)
  br label %90

90:                                               ; preds = %84, %69
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %36, %26, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @printf(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
