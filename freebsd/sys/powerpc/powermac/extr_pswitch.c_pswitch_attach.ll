; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pswitch.c_pswitch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pswitch.c_pswitch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pswitch_softc = type { i32*, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"programmer-switch\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"could not find correct node\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"could not get interrupt\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@pswitch_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"could not setup interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pswitch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pswitch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pswitch_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca [2 x i8], align 1
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.pswitch_softc* @device_get_softc(i32 %9)
  store %struct.pswitch_softc* %10, %struct.pswitch_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @macio_get_node(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @OF_child(i64 %13)
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %21 = call i32 @OF_getprop(i64 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %20, i32 32)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %33

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @OF_peer(i64 %31)
  store i64 %32, i64* %6, align 8
  br label %15

33:                                               ; preds = %28, %15
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %98

40:                                               ; preds = %33
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %43 = call i32 @OF_getprop(i64 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %42, i32 2)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %98

49:                                               ; preds = %40
  %50 = load %struct.pswitch_softc*, %struct.pswitch_softc** %4, align 8
  %51 = getelementptr inbounds %struct.pswitch_softc, %struct.pswitch_softc* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_IRQ, align 4
  %54 = load %struct.pswitch_softc*, %struct.pswitch_softc** %4, align 8
  %55 = getelementptr inbounds %struct.pswitch_softc, %struct.pswitch_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = load i32, i32* @RF_ACTIVE, align 4
  %61 = call i32* @bus_alloc_resource(i32 %52, i32 %53, i64* %55, i8 signext %57, i8 signext %59, i32 1, i32 %60)
  %62 = load %struct.pswitch_softc*, %struct.pswitch_softc** %4, align 8
  %63 = getelementptr inbounds %struct.pswitch_softc, %struct.pswitch_softc* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load %struct.pswitch_softc*, %struct.pswitch_softc** %4, align 8
  %65 = getelementptr inbounds %struct.pswitch_softc, %struct.pswitch_softc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %49
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %98

72:                                               ; preds = %49
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.pswitch_softc*, %struct.pswitch_softc** %4, align 8
  %75 = getelementptr inbounds %struct.pswitch_softc, %struct.pswitch_softc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @INTR_TYPE_MISC, align 4
  %78 = load i32, i32* @pswitch_intr, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.pswitch_softc*, %struct.pswitch_softc** %4, align 8
  %81 = getelementptr inbounds %struct.pswitch_softc, %struct.pswitch_softc* %80, i32 0, i32 2
  %82 = call i64 @bus_setup_intr(i32 %73, i32* %76, i32 %77, i32 %78, i32* null, i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %72
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @SYS_RES_IRQ, align 4
  %89 = load %struct.pswitch_softc*, %struct.pswitch_softc** %4, align 8
  %90 = getelementptr inbounds %struct.pswitch_softc, %struct.pswitch_softc* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.pswitch_softc*, %struct.pswitch_softc** %4, align 8
  %93 = getelementptr inbounds %struct.pswitch_softc, %struct.pswitch_softc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @bus_release_resource(i32 %87, i32 %88, i64 %91, i32* %94)
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %84, %68, %45, %36
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.pswitch_softc* @device_get_softc(i32) #1

declare dso_local i64 @macio_get_node(i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i64*, i8 signext, i8 signext, i32, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
