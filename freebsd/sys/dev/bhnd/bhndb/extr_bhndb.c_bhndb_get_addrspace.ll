; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_get_addrspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_get_addrspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_softc = type { i32* }
%struct.bhndb_devinfo = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"bhndb address space request for non-child device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhndb_get_addrspace(%struct.bhndb_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.bhndb_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bhndb_devinfo*, align 8
  %6 = alloca i32*, align 8
  store %struct.bhndb_softc* %0, %struct.bhndb_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  store i32* %7, i32** %6, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32* @device_get_parent(i32* %12)
  %14 = load %struct.bhndb_softc*, %struct.bhndb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %13, %16
  br label %18

18:                                               ; preds = %11, %8
  %19 = phi i1 [ false, %8 ], [ %17, %11 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @device_get_parent(i32* %21)
  store i32* %22, i32** %6, align 8
  br label %8

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @device_get_nameunit(i32* %27)
  %29 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.bhndb_devinfo* @device_get_ivars(i32* %31)
  store %struct.bhndb_devinfo* %32, %struct.bhndb_devinfo** %5, align 8
  %33 = load %struct.bhndb_devinfo*, %struct.bhndb_devinfo** %5, align 8
  %34 = getelementptr inbounds %struct.bhndb_devinfo, %struct.bhndb_devinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  ret i32 %35
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local %struct.bhndb_devinfo* @device_get_ivars(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
