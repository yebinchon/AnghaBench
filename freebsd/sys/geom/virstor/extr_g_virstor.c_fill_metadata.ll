; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_fill_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_fill_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_virstor_softc = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.g_virstor_component* }
%struct.TYPE_4__ = type { i32 }
%struct.g_virstor_component = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.g_virstor_metadata = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@G_VIRSTOR_MAGIC = common dso_local global i32 0, align 4
@G_VIRSTOR_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_virstor_softc*, %struct.g_virstor_metadata*, i64, i64)* @fill_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_metadata(%struct.g_virstor_softc* %0, %struct.g_virstor_metadata* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.g_virstor_softc*, align 8
  %6 = alloca %struct.g_virstor_metadata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.g_virstor_component*, align 8
  store %struct.g_virstor_softc* %0, %struct.g_virstor_softc** %5, align 8
  store %struct.g_virstor_metadata* %1, %struct.g_virstor_metadata** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %11 = call i32 @bzero(%struct.g_virstor_metadata* %10, i32 64)
  %12 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %13 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %12, i32 0, i32 5
  %14 = load %struct.g_virstor_component*, %struct.g_virstor_component** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %14, i64 %15
  store %struct.g_virstor_component* %16, %struct.g_virstor_component** %9, align 8
  %17 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %18 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @G_VIRSTOR_MAGIC, align 4
  %21 = call i32 @strncpy(i32 %19, i32 %20, i32 4)
  %22 = load i32, i32* @G_VIRSTOR_VERSION, align 4
  %23 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %24 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 4
  %25 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %26 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %29 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strncpy(i32 %27, i32 %32, i32 4)
  %34 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %35 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %38 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %37, i32 0, i32 10
  store i32 %36, i32* %38, align 4
  %39 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %40 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %43 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 8
  %44 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %45 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %48 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %50 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %53 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %4
  %57 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %58 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.g_virstor_component*, %struct.g_virstor_component** %9, align 8
  %61 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %60, i32 0, i32 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strncpy(i32 %59, i32 %66, i32 4)
  br label %68

68:                                               ; preds = %56, %4
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %71 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.g_virstor_component*, %struct.g_virstor_component** %9, align 8
  %73 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %72, i32 0, i32 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %80 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.g_virstor_component*, %struct.g_virstor_component** %9, align 8
  %82 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %85 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.g_virstor_component*, %struct.g_virstor_component** %9, align 8
  %87 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %90 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.g_virstor_component*, %struct.g_virstor_component** %9, align 8
  %92 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %95 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.g_virstor_component*, %struct.g_virstor_component** %9, align 8
  %97 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %6, align 8
  %100 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.g_virstor_metadata*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
