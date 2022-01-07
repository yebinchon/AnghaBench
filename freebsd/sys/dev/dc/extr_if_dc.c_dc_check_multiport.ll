; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_check_multiport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_check_multiport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i64, i32*, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Using station address of %s as base\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not allocate SROM buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*)* @dc_check_multiport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_check_multiport(%struct.dc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.dc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %3, align 8
  %9 = call i32 @devclass_find(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %131, %1
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @devclass_get_maxunit(i32 %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %134

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32* @devclass_get_device(i32 %16, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %131

22:                                               ; preds = %15
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %131

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @device_get_parent(i32* %30)
  %32 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @device_get_parent(i32* %34)
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %131

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %41 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @device_get_unit(i32* %42)
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %131

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @device_is_attached(i32* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %131

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = call %struct.dc_softc* @device_get_softc(i32* %52)
  store %struct.dc_softc* %53, %struct.dc_softc** %4, align 8
  %54 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %55 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @device_get_nameunit(i32* %57)
  %59 = call i32 (i32*, i8*, ...) @device_printf(i32* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %61 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %64 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %67 = call i32 @bcopy(i32* %62, i32* %65, i32 %66)
  %68 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %69 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %76 = call i64 @DC_IS_INTEL(%struct.dc_softc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %130

78:                                               ; preds = %51
  %79 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %80 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %130

83:                                               ; preds = %78
  %84 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %85 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %130

88:                                               ; preds = %83
  %89 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %90 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @M_DEVBUF, align 4
  %93 = call i32 @free(i32* %91, i32 %92)
  %94 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %95 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %98 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %100 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @DC_ROM_SIZE(i64 %101)
  %103 = load i32, i32* @M_DEVBUF, align 4
  %104 = load i32, i32* @M_NOWAIT, align 4
  %105 = call i32* @malloc(i32 %102, i32 %103, i32 %104)
  %106 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %107 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %109 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %88
  %113 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %114 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 (i32*, i8*, ...) @device_printf(i32* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  store i32 %117, i32* %2, align 4
  br label %136

118:                                              ; preds = %88
  %119 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %120 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %123 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %126 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @DC_ROM_SIZE(i64 %127)
  %129 = call i32 @bcopy(i32* %121, i32* %124, i32 %128)
  br label %130

130:                                              ; preds = %118, %83, %78, %51
  store i32 0, i32* %2, align 4
  br label %136

131:                                              ; preds = %50, %45, %37, %28, %21
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %10

134:                                              ; preds = %10
  %135 = load i32, i32* @ENOENT, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %130, %112
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @devclass_get_maxunit(i32) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i64 @device_get_parent(i32*) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i64 @device_is_attached(i32*) #1

declare dso_local %struct.dc_softc* @device_get_softc(i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @DC_IS_INTEL(%struct.dc_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @DC_ROM_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
