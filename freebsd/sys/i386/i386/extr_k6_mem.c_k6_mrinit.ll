; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_k6_mem.c_k6_mrinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_k6_mem.c_k6_mrinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range_softc = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@M_MEMDESC = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"k6_mrinit: malloc returns NULL\00", align 1
@UWCCR = common dso_local global i32 0, align 4
@MDF_WRITECOMBINE = common dso_local global i32 0, align 4
@MDF_UNCACHEABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"K6-family MTRR support enabled (%d registers)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_range_softc*)* @k6_mrinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k6_mrinit(%struct.mem_range_softc* %0) #0 {
  %2 = alloca %struct.mem_range_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_range_softc* %0, %struct.mem_range_softc** %2, align 8
  %10 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %11 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %12, i32 0, i32 0
  store i32 2, i32* %13, align 8
  %14 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @M_MEMDESC, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.TYPE_2__* @malloc(i32 %19, i32 %20, i32 %23)
  %25 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %25, i32 0, i32 1
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp eq %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %1
  %34 = load i32, i32* @UWCCR, align 4
  %35 = call i32 @rdmsr(i32 %34)
  store i32 %35, i32* %3, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %103, %33
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %106

42:                                               ; preds = %36
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 32, %44
  %46 = shl i32 -1, %45
  %47 = and i32 %43, %46
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 32, %48
  %50 = lshr i32 %47, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @K6_REG_GET(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %59 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ffs(i32 %65)
  %67 = shl i32 %66, 17
  %68 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %69 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %67, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %42
  %78 = load i32, i32* @MDF_WRITECOMBINE, align 4
  %79 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %80 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %78
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %77, %42
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32, i32* @MDF_UNCACHEABLE, align 4
  %93 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %94 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %92
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %91, %88
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %36

106:                                              ; preds = %36
  %107 = load %struct.mem_range_softc*, %struct.mem_range_softc** %2, align 8
  %108 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  ret void
}

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @K6_REG_GET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
