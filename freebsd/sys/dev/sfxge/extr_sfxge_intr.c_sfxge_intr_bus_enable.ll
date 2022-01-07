; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_bus_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_bus_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32*, %struct.sfxge_intr }
%struct.sfxge_intr = type { i32, i32, %struct.sfxge_intr_hdl* }
%struct.sfxge_intr_hdl = type { i32, i32 }

@sfxge_intr_message = common dso_local global i32* null, align 8
@sfxge_intr_line_filter = common dso_local global i32* null, align 8
@sfxge_intr_line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid interrupt type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*)* @sfxge_intr_bus_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_intr_bus_enable(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sfxge_intr*, align 8
  %5 = alloca %struct.sfxge_intr_hdl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %10, i32 0, i32 2
  store %struct.sfxge_intr* %11, %struct.sfxge_intr** %4, align 8
  %12 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %13 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %12, i32 0, i32 2
  %14 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %13, align 8
  store %struct.sfxge_intr_hdl* %14, %struct.sfxge_intr_hdl** %5, align 8
  %15 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %16 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %23 [
    i32 128, label %18
    i32 129, label %20
  ]

18:                                               ; preds = %1
  store i32* null, i32** %6, align 8
  %19 = load i32*, i32** @sfxge_intr_message, align 8
  store i32* %19, i32** %7, align 8
  br label %26

20:                                               ; preds = %1
  %21 = load i32*, i32** @sfxge_intr_line_filter, align 8
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** @sfxge_intr_line, align 8
  store i32* %22, i32** %7, align 8
  br label %26

23:                                               ; preds = %1
  %24 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %103

26:                                               ; preds = %20, %18
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %75, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %30 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %27
  %34 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %35 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %37, i64 %39
  %41 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INTR_MPSAFE, align 4
  %44 = load i32, i32* @INTR_TYPE_NET, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %49 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %55, i64 %57
  %59 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %58, i32 0, i32 0
  %60 = call i32 @bus_setup_intr(i32 %36, i32 %42, i32 %45, i32* %46, i32* %47, i32 %54, i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %33
  br label %79

63:                                               ; preds = %33
  %64 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %67, i64 %69
  %71 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @bus_bind_intr(i32 %66, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %27

78:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %103

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %84, %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %86 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %88, i64 %90
  %92 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %94, i64 %96
  %98 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bus_teardown_intr(i32 %87, i32 %93, i32 %99)
  br label %80

101:                                              ; preds = %80
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %78, %23
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @bus_bind_intr(i32, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
