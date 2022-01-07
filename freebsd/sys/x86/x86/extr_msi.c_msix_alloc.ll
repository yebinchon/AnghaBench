; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msix_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msix_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_intsrc = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32*, %struct.msi_intsrc*, i32* }
%struct.TYPE_2__ = type { i64 }

@msi_enabled = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@msi_lock = common dso_local global i32 0, align 4
@first_msi_irq = common dso_local global i32 0, align 4
@num_msi_irqs = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"msi: routing MSI-X IRQ %d to local APIC %u vector %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dead MSI-X has handlers\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msix_alloc(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.msi_intsrc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @msi_enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %114

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @bus_get_domain(i32* %16, i32* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %15
  br label %21

21:                                               ; preds = %59, %20
  %22 = call i32 @mtx_lock(i32* @msi_lock)
  %23 = load i32, i32* @first_msi_irq, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %44, %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @first_msi_irq, align 4
  %27 = load i32, i32* @num_msi_irqs, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @intr_lookup_source(i32 %31)
  %33 = inttoptr i64 %32 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %33, %struct.msi_intsrc** %6, align 8
  %34 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %35 = icmp eq %struct.msi_intsrc* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %47

37:                                               ; preds = %30
  %38 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %39 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %38, i32 0, i32 10
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %24

47:                                               ; preds = %42, %36, %24
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @first_msi_irq, align 4
  %50 = load i32, i32* @num_msi_irqs, align 4
  %51 = add nsw i32 %49, %50
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i32 @mtx_unlock(i32* @msi_lock)
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %3, align 4
  br label %114

56:                                               ; preds = %47
  %57 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %58 = icmp eq %struct.msi_intsrc* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = call i32 @mtx_unlock(i32* @msi_lock)
  %61 = call i32 (...) @msi_create_source()
  br label %21

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @intr_next_cpu(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @apic_alloc_vector(i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = call i32 @mtx_unlock(i32* @msi_lock)
  %72 = load i32, i32* @ENOSPC, align 4
  store i32 %72, i32* %3, align 4
  br label %114

73:                                               ; preds = %62
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %76 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %75, i32 0, i32 10
  store i32* %74, i32** %76, align 8
  %77 = load i64, i64* @bootverbose, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %81 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %73
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %89 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %91 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %92 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %91, i32 0, i32 9
  store %struct.msi_intsrc* %90, %struct.msi_intsrc** %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %95 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %97 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %96, i32 0, i32 4
  store i32 1, i32* %97, align 8
  %98 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %99 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %98, i32 0, i32 5
  store i32 1, i32* %99, align 4
  %100 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %101 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %100, i32 0, i32 6
  store i32 1, i32* %101, align 8
  %102 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %103 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %102, i32 0, i32 8
  store i32* null, i32** %103, align 8
  %104 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %105 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @KASSERT(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %111 = call i32 @mtx_unlock(i32* @msi_lock)
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %5, align 8
  store i32 %112, i32* %113, align 4
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %86, %70, %53, %13
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @bus_get_domain(i32*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @intr_lookup_source(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @msi_create_source(...) #1

declare dso_local i32 @intr_next_cpu(i32) #1

declare dso_local i32 @apic_alloc_vector(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
