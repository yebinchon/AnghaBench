; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfe/extr_cfe_resource.c_cferes_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfe/extr_cfe_resource.c_cferes_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.cferes_softc = type { i32, i32*, %struct.resource** }

@.str = private unnamed_addr constant [7 x i8] c"cferes\00", align 1
@CFE_FLG_FULL_ARENA = common dso_local global i32 0, align 4
@CFE_MI_RESERVED = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: skipping non reserved range 0x%0jx(%jd)\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@MAX_CFE_RESERVATIONS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"CFE reserved memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @cferes_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cferes_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cferes_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @BUS_ADD_CHILD(i32 %14, i32 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @device_set_driver(i32 %16, i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.cferes_softc* @device_get_softc(i32 %19)
  store %struct.cferes_softc* %20, %struct.cferes_softc** %10, align 8
  %21 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %22 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %104, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ult i32 %24, -1
  br i1 %25, label %26, label %107

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @CFE_FLG_FULL_ARENA, align 4
  %29 = call i32 @cfe_enummem(i32 %27, i32 %28, i64* %11, i64* %12, i64* %13)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %107

33:                                               ; preds = %26
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @CFE_MI_RESERVED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @device_getnameunit(i32 %41)
  %43 = load i64, i64* %11, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %12, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %40, %37
  br label %104

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %53 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @bus_set_resource(i32 %50, i32 %51, i32 %54, i64 %55, i64 %56)
  %58 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %59 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SYS_RES_MEMORY, align 4
  %63 = call %struct.resource* @bus_alloc_resource_any(i32 %61, i32 %62, i32* %9, i32 0)
  store %struct.resource* %63, %struct.resource** %7, align 8
  %64 = load %struct.resource*, %struct.resource** %7, align 8
  %65 = icmp eq %struct.resource* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %49
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @SYS_RES_MEMORY, align 4
  %69 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %70 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bus_delete_resource(i32 %67, i32 %68, i32 %71)
  br label %104

73:                                               ; preds = %49
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %76 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %79 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %74, i32* %82, align 4
  %83 = load %struct.resource*, %struct.resource** %7, align 8
  %84 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %85 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %84, i32 0, i32 2
  %86 = load %struct.resource**, %struct.resource*** %85, align 8
  %87 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %88 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.resource*, %struct.resource** %86, i64 %90
  store %struct.resource* %83, %struct.resource** %91, align 8
  %92 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %93 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %97 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @MAX_CFE_RESERVATIONS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %73
  br label %107

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %103, %66, %48
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %23

107:                                              ; preds = %102, %32, %23
  %108 = load %struct.cferes_softc*, %struct.cferes_softc** %10, align 8
  %109 = getelementptr inbounds %struct.cferes_softc, %struct.cferes_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @device_delete_child(i32 %113, i32 %114)
  br label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @device_set_desc(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %112
  ret void
}

declare dso_local i32 @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_set_driver(i32, i32*) #1

declare dso_local %struct.cferes_softc* @device_get_softc(i32) #1

declare dso_local i32 @cfe_enummem(i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i8* @device_getnameunit(i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i64) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
