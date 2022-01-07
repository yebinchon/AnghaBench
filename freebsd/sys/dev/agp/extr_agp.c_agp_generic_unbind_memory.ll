; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_unbind_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_unbind_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i64, i64, i32 }
%struct.agp_softc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"memory is not bound\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AGP_PAGE_SIZE = common dso_local global i64 0, align 8
@PQ_INACTIVE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_generic_unbind_memory(i32 %0, %struct.agp_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca %struct.agp_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.agp_memory* %1, %struct.agp_memory** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.agp_softc* @device_get_softc(i32 %9)
  store %struct.agp_softc* %10, %struct.agp_softc** %6, align 8
  %11 = load %struct.agp_softc*, %struct.agp_softc** %6, align 8
  %12 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %15 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.agp_softc*, %struct.agp_softc** %6, align 8
  %22 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %29 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %35 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @AGP_UNBIND_PAGE(i32 %33, i64 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i64, i64* @AGP_PAGE_SIZE, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @AGP_FLUSH_TLB(i32 %48)
  %50 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %51 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @VM_OBJECT_WLOCK(i32 %52)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %70, %47
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %57 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %62 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @atop(i32 %64)
  %66 = call i32 @vm_page_lookup(i32 %63, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @PQ_INACTIVE, align 4
  %69 = call i32 @vm_page_unwire(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %60
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  br label %54

76:                                               ; preds = %54
  %77 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %78 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @VM_OBJECT_WUNLOCK(i32 %79)
  %81 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %82 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %84 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.agp_softc*, %struct.agp_softc** %6, align 8
  %86 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %85, i32 0, i32 0
  %87 = call i32 @mtx_unlock(i32* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %76, %18
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @AGP_UNBIND_PAGE(i32, i64) #1

declare dso_local i32 @AGP_FLUSH_TLB(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @vm_page_lookup(i32, i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @vm_page_unwire(i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
