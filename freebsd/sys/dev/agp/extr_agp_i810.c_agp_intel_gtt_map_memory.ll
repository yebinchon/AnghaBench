; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_intel_gtt_map_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_intel_gtt_map_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.agp_i810_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@M_WAITOK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_intel_gtt_map_memory(i32 %0, i32* %1, i32 %2, %struct.sglist** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sglist**, align 8
  %10 = alloca %struct.agp_i810_softc*, align 8
  %11 = alloca %struct.sglist*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sglist** %3, %struct.sglist*** %9, align 8
  %13 = load %struct.sglist**, %struct.sglist*** %9, align 8
  %14 = load %struct.sglist*, %struct.sglist** %13, align 8
  %15 = icmp ne %struct.sglist* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.agp_i810_softc* @device_get_softc(i32 %18)
  store %struct.agp_i810_softc* %19, %struct.agp_i810_softc** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = call %struct.sglist* @sglist_alloc(i32 %20, i32 %21)
  store %struct.sglist* %22, %struct.sglist** %11, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %49, %17
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VM_PAGE_TO_PHYS(i32 %32)
  %34 = load %struct.sglist*, %struct.sglist** %11, align 8
  %35 = getelementptr inbounds %struct.sglist, %struct.sglist* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %33, i32* %40, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load %struct.sglist*, %struct.sglist** %11, align 8
  %43 = getelementptr inbounds %struct.sglist, %struct.sglist* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %27
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load %struct.sglist*, %struct.sglist** %11, align 8
  %54 = load %struct.sglist**, %struct.sglist*** %9, align 8
  store %struct.sglist* %53, %struct.sglist** %54, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %16
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local %struct.sglist* @sglist_alloc(i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
