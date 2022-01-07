; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_free_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_free_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i64, i32, i64 }
%struct.agp_i810_softc = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@PQ_INACTIVE = common dso_local global i32 0, align 4
@M_AGP = common dso_local global i32 0, align 4
@am_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.agp_memory*)* @agp_i810_free_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i810_free_memory(i32 %0, %struct.agp_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca %struct.agp_i810_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.agp_memory* %1, %struct.agp_memory** %5, align 8
  %8 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %9 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  store i32 %13, i32* %3, align 4
  br label %83

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.agp_i810_softc* @device_get_softc(i32 %15)
  store %struct.agp_i810_softc* %16, %struct.agp_i810_softc** %6, align 8
  %17 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %18 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %55

21:                                               ; preds = %14
  %22 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %23 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %29 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @VM_OBJECT_WLOCK(i64 %30)
  %32 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %33 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @vm_page_lookup(i64 %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PQ_INACTIVE, align 4
  %38 = call i32 @vm_page_unwire(i32 %36, i32 %37)
  %39 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %40 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @VM_OBJECT_WUNLOCK(i64 %41)
  br label %54

43:                                               ; preds = %21
  %44 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %45 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %48 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @M_AGP, align 4
  %51 = call i32 @contigfree(i32* %46, i32 %49, i32 %50)
  %52 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %53 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %43, %27
  br label %55

55:                                               ; preds = %54, %14
  %56 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %57 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %60 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %65 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %68 = load i32, i32* @am_link, align 4
  %69 = call i32 @TAILQ_REMOVE(i32* %66, %struct.agp_memory* %67, i32 %68)
  %70 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %71 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %55
  %75 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %76 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @vm_object_deallocate(i64 %77)
  br label %79

79:                                               ; preds = %74, %55
  %80 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %81 = load i32, i32* @M_AGP, align 4
  %82 = call i32 @free(%struct.agp_memory* %80, i32 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %12
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i64) #1

declare dso_local i32 @vm_page_lookup(i64, i32) #1

declare dso_local i32 @vm_page_unwire(i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i64) #1

declare dso_local i32 @contigfree(i32*, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.agp_memory*, i32) #1

declare dso_local i32 @vm_object_deallocate(i64) #1

declare dso_local i32 @free(%struct.agp_memory*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
