; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_generic_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_generic_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_softc = type { %struct.bhndb_resources* }
%struct.bhndb_resources = type { i64, %struct.bhndb_dw_alloc* }
%struct.bhndb_dw_alloc = type { i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"Unable to restore hardware configuration; cannot resume: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhndb_generic_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhndb_softc*, align 8
  %5 = alloca %struct.bhndb_resources*, align 8
  %6 = alloca %struct.bhndb_dw_alloc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.bhndb_softc* @device_get_softc(i32 %9)
  store %struct.bhndb_softc* %10, %struct.bhndb_softc** %4, align 8
  %11 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %12 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %11, i32 0, i32 0
  %13 = load %struct.bhndb_resources*, %struct.bhndb_resources** %12, align 8
  store %struct.bhndb_resources* %13, %struct.bhndb_resources** %5, align 8
  %14 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %15 = call i32 @BHNDB_LOCK(%struct.bhndb_softc* %14)
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %51, %1
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.bhndb_resources*, %struct.bhndb_resources** %5, align 8
  %19 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load %struct.bhndb_resources*, %struct.bhndb_resources** %5, align 8
  %24 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %23, i32 0, i32 1
  %25 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %25, i64 %26
  store %struct.bhndb_dw_alloc* %27, %struct.bhndb_dw_alloc** %6, align 8
  %28 = load %struct.bhndb_resources*, %struct.bhndb_resources** %5, align 8
  %29 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %30 = call i64 @bhndb_dw_is_free(%struct.bhndb_resources* %28, %struct.bhndb_dw_alloc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %34 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %51

38:                                               ; preds = %32, %22
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %41 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %44 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BHNDB_SET_WINDOW_ADDR(i32 %39, i32 %42, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %54

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %16

54:                                               ; preds = %49, %16
  %55 = load %struct.bhndb_softc*, %struct.bhndb_softc** %4, align 8
  %56 = call i32 @BHNDB_UNLOCK(%struct.bhndb_softc* %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @bus_generic_resume(i32 %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local i32 @BHNDB_LOCK(%struct.bhndb_softc*) #1

declare dso_local i64 @bhndb_dw_is_free(%struct.bhndb_resources*, %struct.bhndb_dw_alloc*) #1

declare dso_local i32 @BHNDB_SET_WINDOW_ADDR(i32, i32, i32) #1

declare dso_local i32 @BHNDB_UNLOCK(%struct.bhndb_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
