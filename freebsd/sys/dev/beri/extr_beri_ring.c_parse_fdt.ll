; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_parse_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_parse_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_softc = type { i8*, i8*, i8*, i8*, i8*, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"device_name\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't get device_name\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"data_size\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"data_read\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"data_write\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"control_read\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"control_write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beri_softc*)* @parse_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fdt(%struct.beri_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beri_softc*, align 8
  %4 = alloca [0 x i8*], align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.beri_softc* %0, %struct.beri_softc** %3, align 8
  %7 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %8 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ofw_bus_get_node(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %16 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  %19 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %20 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %19, i32 0, i32 6
  %21 = call i64 @OF_getprop(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %20, i32 4)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %25 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %100

29:                                               ; preds = %14
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @OF_getproplen(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %6, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %100

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @OF_getencprop(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %37, i32 %38)
  %40 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %43 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @OF_getproplen(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %45, i32* %6, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %100

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @OF_getencprop(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %51, i32 %52)
  %54 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %57 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @OF_getproplen(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %59, i32* %6, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %100

63:                                               ; preds = %49
  %64 = load i32, i32* %5, align 4
  %65 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @OF_getencprop(i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %65, i32 %66)
  %68 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %71 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @OF_getproplen(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 %73, i32* %6, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %2, align 4
  br label %100

77:                                               ; preds = %63
  %78 = load i32, i32* %5, align 4
  %79 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @OF_getencprop(i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %79, i32 %80)
  %82 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %85 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @OF_getproplen(i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 %87, i32* %6, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %2, align 4
  br label %100

91:                                               ; preds = %77
  %92 = load i32, i32* %5, align 4
  %93 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @OF_getencprop(i32 %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %93, i32 %94)
  %96 = getelementptr inbounds [0 x i8*], [0 x i8*]* %4, i64 0, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %99 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %91, %89, %75, %61, %47, %33, %23, %12
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
