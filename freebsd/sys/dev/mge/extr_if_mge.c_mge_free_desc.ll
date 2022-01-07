; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_free_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_free_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32 }
%struct.mge_desc_wrapper = type { i64, i32, i32, i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*, %struct.mge_desc_wrapper*, i32, i32, i64)* @mge_free_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_free_desc(%struct.mge_softc* %0, %struct.mge_desc_wrapper* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.mge_softc*, align 8
  %7 = alloca %struct.mge_desc_wrapper*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mge_desc_wrapper*, align 8
  %12 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %6, align 8
  store %struct.mge_desc_wrapper* %1, %struct.mge_desc_wrapper** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %87, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %13
  %18 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %7, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %18, i64 %20
  store %struct.mge_desc_wrapper* %21, %struct.mge_desc_wrapper** %11, align 8
  %22 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %23 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %17
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %32 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %35 = call i32 @bus_dmamap_sync(i32 %30, i64 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %38 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bus_dmamap_unload(i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %44 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @bus_dmamap_destroy(i32 %42, i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %51 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @m_freem(i32 %52)
  br label %54

54:                                               ; preds = %49, %41
  br label %55

55:                                               ; preds = %54, %17
  %56 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %57 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %62 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %65 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %68 = call i32 @bus_dmamap_sync(i32 %63, i64 %66, i32 %67)
  %69 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %70 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %73 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @bus_dmamap_unload(i32 %71, i64 %74)
  %76 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %77 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %80 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %11, align 8
  %83 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @bus_dmamem_free(i32 %78, i32 %81, i64 %84)
  br label %86

86:                                               ; preds = %60, %55
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %13

90:                                               ; preds = %13
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i64, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i64) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i64) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
