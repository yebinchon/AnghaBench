; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_alloc_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_alloc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i32 }
%struct.otus_data = type { i32*, i32*, i32*, %struct.otus_softc* }

@M_USBDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not allocate buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.otus_softc*, %struct.otus_data*, i32, i32)* @otus_alloc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otus_alloc_list(%struct.otus_softc* %0, %struct.otus_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.otus_softc*, align 8
  %7 = alloca %struct.otus_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.otus_data*, align 8
  store %struct.otus_softc* %0, %struct.otus_softc** %6, align 8
  store %struct.otus_data* %1, %struct.otus_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %48, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load %struct.otus_data*, %struct.otus_data** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %18, i64 %20
  store %struct.otus_data* %21, %struct.otus_data** %12, align 8
  %22 = load %struct.otus_softc*, %struct.otus_softc** %6, align 8
  %23 = load %struct.otus_data*, %struct.otus_data** %12, align 8
  %24 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %23, i32 0, i32 3
  store %struct.otus_softc* %22, %struct.otus_softc** %24, align 8
  %25 = load %struct.otus_data*, %struct.otus_data** %12, align 8
  %26 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @M_USBDEV, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call i32* @malloc(i32 %27, i32 %28, i32 %31)
  %33 = load %struct.otus_data*, %struct.otus_data** %12, align 8
  %34 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.otus_data*, %struct.otus_data** %12, align 8
  %36 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %17
  %40 = load %struct.otus_softc*, %struct.otus_softc** %6, align 8
  %41 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %11, align 4
  br label %52

45:                                               ; preds = %17
  %46 = load %struct.otus_data*, %struct.otus_data** %12, align 8
  %47 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %13

51:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %58

52:                                               ; preds = %39
  %53 = load %struct.otus_softc*, %struct.otus_softc** %6, align 8
  %54 = load %struct.otus_data*, %struct.otus_data** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @otus_free_list(%struct.otus_softc* %53, %struct.otus_data* %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %51
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @otus_free_list(%struct.otus_softc*, %struct.otus_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
