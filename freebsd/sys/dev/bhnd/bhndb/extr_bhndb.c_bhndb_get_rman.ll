; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_get_rman.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_get_rman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rman = type { i32 }
%struct.bhndb_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rman, %struct.rman, %struct.rman }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rman* (%struct.bhndb_softc*, i32, i32)* @bhndb_get_rman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rman* @bhndb_get_rman(%struct.bhndb_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rman*, align 8
  %5 = alloca %struct.bhndb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bhndb_softc* %0, %struct.bhndb_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.bhndb_softc*, %struct.bhndb_softc** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @bhndb_get_addrspace(%struct.bhndb_softc* %8, i32 %9)
  switch i32 %10, label %33 [
    i32 130, label %11
    i32 131, label %20
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %19 [
    i32 128, label %13
    i32 129, label %18
  ]

13:                                               ; preds = %11
  %14 = load %struct.bhndb_softc*, %struct.bhndb_softc** %5, align 8
  %15 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store %struct.rman* %17, %struct.rman** %4, align 8
  br label %34

18:                                               ; preds = %11
  store %struct.rman* null, %struct.rman** %4, align 8
  br label %34

19:                                               ; preds = %11
  store %struct.rman* null, %struct.rman** %4, align 8
  br label %34

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %32 [
    i32 128, label %22
    i32 129, label %27
  ]

22:                                               ; preds = %20
  %23 = load %struct.bhndb_softc*, %struct.bhndb_softc** %5, align 8
  %24 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store %struct.rman* %26, %struct.rman** %4, align 8
  br label %34

27:                                               ; preds = %20
  %28 = load %struct.bhndb_softc*, %struct.bhndb_softc** %5, align 8
  %29 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.rman* %31, %struct.rman** %4, align 8
  br label %34

32:                                               ; preds = %20
  store %struct.rman* null, %struct.rman** %4, align 8
  br label %34

33:                                               ; preds = %3
  store %struct.rman* null, %struct.rman** %4, align 8
  br label %34

34:                                               ; preds = %33, %32, %27, %22, %19, %18, %13
  %35 = load %struct.rman*, %struct.rman** %4, align 8
  ret %struct.rman* %35
}

declare dso_local i32 @bhndb_get_addrspace(%struct.bhndb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
