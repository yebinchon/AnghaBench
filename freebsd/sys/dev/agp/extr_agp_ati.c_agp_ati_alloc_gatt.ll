; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_alloc_gatt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_alloc_gatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_ati_softc = type { i32, i32*, i32*, i8* }

@AGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GATT allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"pagedir allocation failed\0A\00", align 1
@AGP_APBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_ati_alloc_gatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ati_alloc_gatt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_ati_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.agp_ati_softc* @device_get_softc(i32 %11)
  store %struct.agp_ati_softc* %12, %struct.agp_ati_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @AGP_GET_APERTURE(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AGP_PAGE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %20 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %29 = call i64 @kmem_alloc_attr(i32 %24, i32 %27, i32 0, i32 -1, i32 %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %33 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %35 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %1
  %39 = load i64, i64* @bootverbose, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %123

46:                                               ; preds = %1
  %47 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %48 = load i32, i32* @M_NOWAIT, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %52 = call i64 @kmem_alloc_attr(i32 %47, i32 %50, i32 0, i32 -1, i32 %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %56 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %58 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %46
  %62 = load i64, i64* @bootverbose, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %69 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = ptrtoint i32* %70 to i32
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 @kmem_free(i32 %71, i32 %75)
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %2, align 4
  br label %123

78:                                               ; preds = %46
  %79 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %80 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = ptrtoint i32* %81 to i32
  %83 = call i8* @vtophys(i32 %82)
  %84 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %85 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @AGP_APBASE, align 4
  %88 = call i32 @pci_read_config(i32 %86, i32 %87, i32 4)
  %89 = ashr i32 %88, 22
  store i32 %89, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %119, %78
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %93 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %94, 1024
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %90
  %98 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %99 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = ptrtoint i32* %100 to i32
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i8* @vtophys(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, 1
  %111 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %112 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  store i32 %110, i32* %118, align 4
  br label %119

119:                                              ; preds = %97
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %90

122:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %67, %44
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.agp_ati_softc* @device_get_softc(i32) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local i64 @kmem_alloc_attr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @kmem_free(i32, i32) #1

declare dso_local i8* @vtophys(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
