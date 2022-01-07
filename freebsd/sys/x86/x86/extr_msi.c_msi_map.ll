; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_intsrc = type { i32, i32, i32, i32, i32, i32*, %struct.msi_intsrc*, i32 }

@msi_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@first_msi_irq = common dso_local global i32 0, align 4
@num_msi_irqs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_map(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.msi_intsrc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 @mtx_lock(i32* @msi_lock)
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @intr_lookup_source(i32 %11)
  %13 = inttoptr i64 %12 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %13, %struct.msi_intsrc** %8, align 8
  %14 = load %struct.msi_intsrc*, %struct.msi_intsrc** %8, align 8
  %15 = icmp eq %struct.msi_intsrc* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @mtx_unlock(i32* @msi_lock)
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.msi_intsrc*, %struct.msi_intsrc** %8, align 8
  %21 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i32 @mtx_unlock(i32* @msi_lock)
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %19
  %28 = load %struct.msi_intsrc*, %struct.msi_intsrc** %8, align 8
  %29 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = load %struct.msi_intsrc*, %struct.msi_intsrc** %8, align 8
  %34 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %33, i32 0, i32 6
  %35 = load %struct.msi_intsrc*, %struct.msi_intsrc** %34, align 8
  %36 = icmp eq %struct.msi_intsrc* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @mtx_unlock(i32* @msi_lock)
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %4, align 4
  br label %59

40:                                               ; preds = %32
  %41 = load %struct.msi_intsrc*, %struct.msi_intsrc** %8, align 8
  %42 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %41, i32 0, i32 6
  %43 = load %struct.msi_intsrc*, %struct.msi_intsrc** %42, align 8
  store %struct.msi_intsrc* %43, %struct.msi_intsrc** %8, align 8
  br label %44

44:                                               ; preds = %40, %27
  %45 = call i32 @mtx_unlock(i32* @msi_lock)
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.msi_intsrc*, %struct.msi_intsrc** %8, align 8
  %52 = call i32 @INTEL_ADDR(%struct.msi_intsrc* %51)
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.msi_intsrc*, %struct.msi_intsrc** %8, align 8
  %55 = call i32 @INTEL_DATA(%struct.msi_intsrc* %54)
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %50, %44
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %37, %24, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @intr_lookup_source(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @INTEL_ADDR(%struct.msi_intsrc*) #1

declare dso_local i32 @INTEL_DATA(%struct.msi_intsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
