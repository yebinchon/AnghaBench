; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_mem_set_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_mem_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"set_memory_offset: specified resource not active\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EXCA_MEM_PAGESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exca_mem_set_offset(%struct.exca_softc* %0, %struct.resource* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.exca_softc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %6, align 8
  store %struct.resource* %1, %struct.resource** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %13 = load %struct.resource*, %struct.resource** %7, align 8
  %14 = call i32 @exca_mem_findmap(%struct.exca_softc* %12, %struct.resource* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %19 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %5, align 4
  br label %92

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @EXCA_MEM_PAGESIZE, align 4
  %26 = call i32 @rounddown2(i32 %24, i32 %25)
  %27 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %28 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %26, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EXCA_MEM_PAGESIZE, align 4
  %36 = srem i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %23
  %43 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %44 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @EXCA_MEM_PAGESIZE, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %57 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %64 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %72 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EXCA_MEM_PAGESIZE, align 4
  %80 = srem i32 %78, %79
  %81 = sub nsw i32 %70, %80
  %82 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %83 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %81, i32* %88, align 4
  %89 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @exca_do_mem_map(%struct.exca_softc* %89, i32 %90)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %42, %17
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @exca_mem_findmap(%struct.exca_softc*, %struct.resource*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @exca_do_mem_map(%struct.exca_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
