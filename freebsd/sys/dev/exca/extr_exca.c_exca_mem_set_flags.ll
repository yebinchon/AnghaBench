; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_mem_set_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_mem_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"set_res_flags: specified resource not active\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PCCARD_MEM_ATTR = common dso_local global i32 0, align 4
@PCCARD_MEM_16BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exca_mem_set_flags(%struct.exca_softc* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exca_softc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %10 = load %struct.resource*, %struct.resource** %6, align 8
  %11 = call i32 @exca_mem_findmap(%struct.exca_softc* %9, %struct.resource* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %16 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %68 [
    i32 129, label %22
    i32 128, label %33
    i32 131, label %45
    i32 130, label %56
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @PCCARD_MEM_ATTR, align 4
  %24 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %25 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %23
  store i32 %32, i32* %30, align 4
  br label %68

33:                                               ; preds = %20
  %34 = load i32, i32* @PCCARD_MEM_ATTR, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %37 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %35
  store i32 %44, i32* %42, align 4
  br label %68

45:                                               ; preds = %20
  %46 = load i32, i32* @PCCARD_MEM_16BIT, align 4
  %47 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %48 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %46
  store i32 %55, i32* %53, align 4
  br label %68

56:                                               ; preds = %20
  %57 = load i32, i32* @PCCARD_MEM_16BIT, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %60 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %58
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %20, %56, %45, %33, %22
  %69 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @exca_do_mem_map(%struct.exca_softc* %69, i32 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %14
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @exca_mem_findmap(%struct.exca_softc*, %struct.resource*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @exca_do_mem_map(%struct.exca_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
