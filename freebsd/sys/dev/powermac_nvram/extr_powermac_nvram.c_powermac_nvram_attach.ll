; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_powermac_nvram_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_powermac_nvram_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powermac_nvram_softc = type { %struct.TYPE_2__*, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.powermac_nvram_softc* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"amd-0137\00", align 1
@FLASH_TYPE_AMD = common dso_local global i32 0, align 4
@FLASH_TYPE_SM = common dso_local global i32 0, align 4
@NVRAM_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"both banks appear to be corrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"bank0 generation %d, bank1 generation %d\0A\00", align 1
@powermac_nvram_cdevsw = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"powermac_nvram\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @powermac_nvram_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powermac_nvram_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.powermac_nvram_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.powermac_nvram_softc* @device_get_softc(i32 %13)
  store %struct.powermac_nvram_softc* %14, %struct.powermac_nvram_softc** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %17 = call i32 @OF_getprop(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %16, i32 12)
  store i32 %17, i32* %10, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %132

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %24 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %27 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i8* @ofw_bus_get_compat(i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i32, i32* @FLASH_TYPE_AMD, align 4
  %35 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %36 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %21
  %38 = load i32, i32* @FLASH_TYPE_SM, align 4
  %39 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %40 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %10, align 4
  %43 = sdiv i32 %42, 4
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NVRAM_SIZE, align 4
  %50 = mul nsw i32 %49, 2
  %51 = call i64 @pmap_mapdev(i32 %48, i32 %50)
  %52 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %53 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  %54 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %55 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @NVRAM_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %61 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %63 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @powermac_nvram_check(i8* %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %68 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @powermac_nvram_check(i8* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %94

74:                                               ; preds = %41
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %79 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %85 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @NVRAM_SIZE, align 4
  %88 = mul nsw i32 %87, 2
  %89 = call i32 @pmap_unmapdev(i64 %86, i32 %88)
  br label %90

90:                                               ; preds = %83, %77
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (i32, i8*, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @ENXIO, align 4
  store i32 %93, i32* %2, align 4
  br label %132

94:                                               ; preds = %74, %41
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %104 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  br label %110

106:                                              ; preds = %94
  %107 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %108 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i64 [ %105, %102 ], [ %109, %106 ]
  %112 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %113 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %115 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %119 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load i32, i32* @NVRAM_SIZE, align 4
  %123 = call i32 @bcopy(i8* %117, i8* %121, i32 %122)
  %124 = call %struct.TYPE_2__* @make_dev(i32* @powermac_nvram_cdevsw, i32 0, i32 0, i32 0, i32 384, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %125 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %126 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %125, i32 0, i32 0
  store %struct.TYPE_2__* %124, %struct.TYPE_2__** %126, align 8
  %127 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %128 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %4, align 8
  %129 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store %struct.powermac_nvram_softc* %127, %struct.powermac_nvram_softc** %131, align 8
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %110, %90, %19
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.powermac_nvram_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i8* @ofw_bus_get_compat(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @pmap_mapdev(i32, i32) #1

declare dso_local i32 @powermac_nvram_check(i8*) #1

declare dso_local i32 @pmap_unmapdev(i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
