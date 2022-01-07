; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"marvell,mv88e6085\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"marvell,mv88e6190\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Found switch_node: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"e6000sw_tmp\00", align 1
@SWITCH_ID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Marvell 88E6141\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Marvell 88E6341\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Marvell 88E6352\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Marvell 88E6172\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Marvell 88E6176\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Marvell 88E6190\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Unrecognized device, id 0x%x.\0A\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @e6000sw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_7__* @device_get_softc(i32 %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 @ofw_bus_find_compatible(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 @ofw_bus_find_compatible(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %115

20:                                               ; preds = %13
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 130, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i64, i64* @bootverbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 5
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = call i64 @OF_getencprop(i64 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %41, i32 4)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %115

46:                                               ; preds = %30
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 32
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %115

58:                                               ; preds = %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = call i32 @sx_init(i32* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = call i32 @E6000SW_LOCK(%struct.TYPE_7__* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = call i32 @REG_PORT(%struct.TYPE_7__* %65, i32 0)
  %67 = load i32, i32* @SWITCH_ID, align 4
  %68 = call i32 @e6000sw_readreg(%struct.TYPE_7__* %64, i32 %66, i32 %67)
  %69 = and i32 %68, 65520
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = call i32 @E6000SW_UNLOCK(%struct.TYPE_7__* %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = call i32 @sx_destroy(i32* %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %102 [
    i32 133, label %80
    i32 129, label %85
    i32 128, label %90
    i32 132, label %93
    i32 131, label %96
    i32 130, label %99
  ]

80:                                               ; preds = %58
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32 16, i32* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i32 6, i32* %84, align 4
  br label %110

85:                                               ; preds = %58
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i32 16, i32* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  store i32 6, i32* %89, align 4
  br label %110

90:                                               ; preds = %58
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  store i32 7, i32* %92, align 4
  br label %110

93:                                               ; preds = %58
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  store i32 7, i32* %95, align 4
  br label %110

96:                                               ; preds = %58
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  store i32 7, i32* %98, align 4
  br label %110

99:                                               ; preds = %58
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store i32 11, i32* %101, align 4
  br label %110

102:                                              ; preds = %58
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* @ENXIO, align 4
  store i32 %109, i32* %2, align 4
  br label %115

110:                                              ; preds = %99, %96, %93, %90, %85, %80
  %111 = load i32, i32* %3, align 4
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @device_set_desc(i32 %111, i8* %112)
  %114 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %110, %102, %56, %44, %18
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_7__* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_find_compatible(i32, i8*) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @E6000SW_LOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @e6000sw_readreg(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @REG_PORT(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @E6000SW_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
