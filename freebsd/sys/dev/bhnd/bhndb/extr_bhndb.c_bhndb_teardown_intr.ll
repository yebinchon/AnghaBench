; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhndb_softc = type { i32 }
%struct.bhndb_intr_handler = type { i32, %struct.bhndb_intr_isrc* }
%struct.bhndb_intr_isrc = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"%s requested teardown of invalid cookiep %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i8*)* @bhndb_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_teardown_intr(i32 %0, i32 %1, %struct.resource* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bhndb_softc*, align 8
  %11 = alloca %struct.bhndb_intr_handler*, align 8
  %12 = alloca %struct.bhndb_intr_isrc*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.resource* %2, %struct.resource** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.bhndb_softc* @device_get_softc(i32 %14)
  store %struct.bhndb_softc* %15, %struct.bhndb_softc** %10, align 8
  %16 = load %struct.bhndb_softc*, %struct.bhndb_softc** %10, align 8
  %17 = call i32 @BHNDB_LOCK(%struct.bhndb_softc* %16)
  %18 = load %struct.bhndb_softc*, %struct.bhndb_softc** %10, align 8
  %19 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call %struct.bhndb_intr_handler* @bhndb_find_intr_handler(i32 %20, i8* %21)
  store %struct.bhndb_intr_handler* %22, %struct.bhndb_intr_handler** %11, align 8
  %23 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %11, align 8
  %24 = icmp eq %struct.bhndb_intr_handler* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @device_get_nameunit(i32 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28)
  br label %30

30:                                               ; preds = %25, %4
  %31 = load %struct.bhndb_softc*, %struct.bhndb_softc** %10, align 8
  %32 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %11, align 8
  %35 = call i32 @bhndb_deregister_intr_handler(i32 %33, %struct.bhndb_intr_handler* %34)
  %36 = load %struct.bhndb_softc*, %struct.bhndb_softc** %10, align 8
  %37 = call i32 @BHNDB_UNLOCK(%struct.bhndb_softc* %36)
  %38 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %11, align 8
  %39 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %38, i32 0, i32 1
  %40 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %39, align 8
  store %struct.bhndb_intr_isrc* %40, %struct.bhndb_intr_isrc** %12, align 8
  %41 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %12, align 8
  %42 = getelementptr inbounds %struct.bhndb_intr_isrc, %struct.bhndb_intr_isrc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %12, align 8
  %45 = getelementptr inbounds %struct.bhndb_intr_isrc, %struct.bhndb_intr_isrc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %11, align 8
  %48 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @bus_teardown_intr(i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %30
  %54 = load %struct.bhndb_softc*, %struct.bhndb_softc** %10, align 8
  %55 = call i32 @BHNDB_LOCK(%struct.bhndb_softc* %54)
  %56 = load %struct.bhndb_softc*, %struct.bhndb_softc** %10, align 8
  %57 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %11, align 8
  %60 = call i32 @bhndb_register_intr_handler(i32 %58, %struct.bhndb_intr_handler* %59)
  %61 = load %struct.bhndb_softc*, %struct.bhndb_softc** %10, align 8
  %62 = call i32 @BHNDB_UNLOCK(%struct.bhndb_softc* %61)
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %67

64:                                               ; preds = %30
  %65 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %11, align 8
  %66 = call i32 @bhndb_free_intr_handler(%struct.bhndb_intr_handler* %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %53
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local i32 @BHNDB_LOCK(%struct.bhndb_softc*) #1

declare dso_local %struct.bhndb_intr_handler* @bhndb_find_intr_handler(i32, i8*) #1

declare dso_local i32 @panic(i8*, i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bhndb_deregister_intr_handler(i32, %struct.bhndb_intr_handler*) #1

declare dso_local i32 @BHNDB_UNLOCK(%struct.bhndb_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bhndb_register_intr_handler(i32, %struct.bhndb_intr_handler*) #1

declare dso_local i32 @bhndb_free_intr_handler(%struct.bhndb_intr_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
