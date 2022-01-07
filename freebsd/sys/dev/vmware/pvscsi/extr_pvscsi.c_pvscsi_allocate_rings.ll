; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_allocate_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_allocate_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32, i32, i32, i32*, i32, i32*, i32*, i32*, %struct.TYPE_2__, i32*, i64, %struct.TYPE_2__, i32*, %struct.TYPE_2__, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [42 x i8] c"Error allocating rings state, error = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Error allocating req ring pages, error = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Error allocating cmp ring pages, error = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"rings_state: %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"req_ring: %p - %u pages\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cmp_ring: %p - %u pages\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"msg_ring: %p - %u pages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_softc*)* @pvscsi_allocate_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_allocate_rings(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca %struct.pvscsi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %2, align 8
  %4 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %5 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %5, i32 0, i32 15
  %7 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %7, i32 0, i32 16
  %9 = call i32 @pvscsi_dma_alloc_ppns(%struct.pvscsi_softc* %4, %struct.TYPE_2__* %6, i32* %8, i32 1)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %14 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %145

18:                                               ; preds = %1
  %19 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %19, i32 0, i32 15
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %24 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %23, i32 0, i32 7
  store i32* %22, i32** %24, align 8
  %25 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %26 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %27 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %26, i32 0, i32 13
  %28 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %28, i32 0, i32 14
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %32 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pvscsi_dma_alloc_ppns(%struct.pvscsi_softc* %25, %struct.TYPE_2__* %27, i32* %30, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %18
  %38 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %39 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %145

43:                                               ; preds = %18
  %44 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %45 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %44, i32 0, i32 13
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %49 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %48, i32 0, i32 6
  store i32* %47, i32** %49, align 8
  %50 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %51 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %52 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %51, i32 0, i32 11
  %53 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %54 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %53, i32 0, i32 12
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %57 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pvscsi_dma_alloc_ppns(%struct.pvscsi_softc* %50, %struct.TYPE_2__* %52, i32* %55, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %43
  %63 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %64 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %145

68:                                               ; preds = %43
  %69 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %70 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %69, i32 0, i32 11
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %74 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %73, i32 0, i32 5
  store i32* %72, i32** %74, align 8
  %75 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %76 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %75, i32 0, i32 3
  store i32* null, i32** %76, align 8
  %77 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %78 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %77, i32 0, i32 10
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %68
  %82 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %83 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %84 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %83, i32 0, i32 8
  %85 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %86 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %85, i32 0, i32 9
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %89 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pvscsi_dma_alloc_ppns(%struct.pvscsi_softc* %82, %struct.TYPE_2__* %84, i32* %87, i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %81
  %95 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %96 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %145

100:                                              ; preds = %81
  %101 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %102 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %106 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  br label %107

107:                                              ; preds = %100, %68
  %108 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %109 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %112 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 (i32, i32, i8*, i32*, ...) @DEBUG_PRINTF(i32 1, i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %113)
  %115 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %116 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %119 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %122 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i32, i8*, i32*, ...) @DEBUG_PRINTF(i32 1, i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32* %120, i32 %123)
  %125 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %126 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %129 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %132 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i32, i8*, i32*, ...) @DEBUG_PRINTF(i32 1, i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %130, i32 %133)
  %135 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %136 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %139 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %142 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i32, i8*, i32*, ...) @DEBUG_PRINTF(i32 1, i32 %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32* %140, i32 %143)
  br label %145

145:                                              ; preds = %107, %94, %62, %37, %12
  %146 = load i32, i32* %3, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %150 = call i32 @pvscsi_free_rings(%struct.pvscsi_softc* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @pvscsi_dma_alloc_ppns(%struct.pvscsi_softc*, %struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @DEBUG_PRINTF(i32, i32, i8*, i32*, ...) #1

declare dso_local i32 @pvscsi_free_rings(%struct.pvscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
