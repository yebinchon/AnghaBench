; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_io_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_io_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.exca_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }

@EXCA_IO_WINS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"exca_io_unmap: window out of range\00", align 1
@EXCA_ADDRWIN_ENABLE = common dso_local global i32 0, align 4
@io_map_index = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exca_softc*, i32)* @exca_io_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exca_io_unmap(%struct.exca_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.exca_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @EXCA_IO_WINS, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %12 = load i32, i32* @EXCA_ADDRWIN_ENABLE, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @io_map_index, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @exca_clrb(%struct.exca_softc* %11, i32 %12, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %24 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %28 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %35 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %42 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %49 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %56 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %63 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @exca_clrb(%struct.exca_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
