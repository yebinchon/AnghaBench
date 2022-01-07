; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/avgen/extr_altera_avgen.c_altera_avgen_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/avgen/extr_altera_avgen.c_altera_avgen_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.altera_avgen_softc* }
%struct.altera_avgen_softc = type { i32, i32 }

@VM_PROT_READ = common dso_local global i32 0, align 4
@ALTERA_AVALON_FLAG_MMAP_READ = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@ALTERA_AVALON_FLAG_MMAP_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@ALTERA_AVALON_FLAG_MMAP_EXEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64*, i32, i32*)* @altera_avgen_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_avgen_mmap(%struct.cdev* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.altera_avgen_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.cdev*, %struct.cdev** %7, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %14, align 8
  store %struct.altera_avgen_softc* %15, %struct.altera_avgen_softc** %12, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @VM_PROT_READ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %12, align 8
  %22 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ALTERA_AVALON_FLAG_MMAP_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @EACCES, align 4
  store i32 %28, i32* %6, align 4
  br label %93

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %5
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @VM_PROT_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %12, align 8
  %37 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ALTERA_AVALON_FLAG_MMAP_WRITE, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EACCES, align 4
  store i32 %43, i32* %6, align 4
  br label %93

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %12, align 8
  %52 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ALTERA_AVALON_FLAG_MMAP_EXEC, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @EACCES, align 4
  store i32 %58, i32* %6, align 4
  br label %93

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @trunc_page(i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %60
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* %8, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %12, align 8
  %73 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @rman_get_size(i32 %74)
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %12, align 8
  %82 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @rman_get_start(i32 %83)
  %85 = load i64, i64* %8, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  br label %92

90:                                               ; preds = %71, %65, %60
  %91 = load i32, i32* @ENODEV, align 4
  store i32 %91, i32* %6, align 4
  br label %93

92:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %90, %57, %42, %27
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local i64 @rman_get_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
