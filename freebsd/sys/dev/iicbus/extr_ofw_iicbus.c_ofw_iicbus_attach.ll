; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ofw_iicbus.c_ofw_iicbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ofw_iicbus.c_ofw_iicbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbus_softc = type { i32, i32 }
%struct.ofw_iicbus_devinfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@IIC_FASTEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"MacRISC\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"i2c-address\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ofw_iicbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_iicbus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iicbus_softc*, align 8
  %4 = alloca %struct.ofw_iicbus_devinfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [255 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.iicbus_softc* @IICBUS_SOFTC(i32 %15)
  store %struct.iicbus_softc* %16, %struct.iicbus_softc** %3, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.iicbus_softc*, %struct.iicbus_softc** %3, align 8
  %19 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.iicbus_softc*, %struct.iicbus_softc** %3, align 8
  %21 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %20, i32 0, i32 0
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @ofw_bus_get_node(i32 %24)
  store i64 %25, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @OF_getencprop(i64 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 4)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @iicbus_init_frequency(i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @IIC_FASTEST, align 4
  %33 = call i32 @iicbus_reset(i32 %31, i32 %32, i32 0, i32* null)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @bus_generic_probe(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @bus_enumerate_hinted_children(i32 %36)
  %38 = call i64 @OF_peer(i64 0)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %41 = call i32 @OF_getprop(i64 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 255)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %66

44:                                               ; preds = %1
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  store i8* %45, i8** %13, align 8
  br label %46

46:                                               ; preds = %59, %44
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = icmp ult i8* %47, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load i8*, i8** %13, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %57, %53
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %13, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = add nsw i64 %61, 1
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %13, align 8
  br label %46

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %1
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @OF_child(i64 %67)
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %131, %66
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %69
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @OF_getencprop(i64 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %9, i32 4)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @OF_getencprop(i64 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32 4)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %131

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %72
  %83 = load i32, i32* @M_DEVBUF, align 4
  %84 = load i32, i32* @M_NOWAIT, align 4
  %85 = load i32, i32* @M_ZERO, align 4
  %86 = or i32 %84, %85
  %87 = call %struct.ofw_iicbus_devinfo* @malloc(i32 12, i32 %83, i32 %86)
  store %struct.ofw_iicbus_devinfo* %87, %struct.ofw_iicbus_devinfo** %4, align 8
  %88 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %4, align 8
  %89 = icmp eq %struct.ofw_iicbus_devinfo* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %131

91:                                               ; preds = %82
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %4, align 8
  %97 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  br label %105

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  %101 = shl i32 %100, 1
  %102 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %4, align 8
  %103 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %4, align 8
  %107 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %106, i32 0, i32 1
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @ofw_bus_gen_setup_devinfo(i32* %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %4, align 8
  %113 = load i32, i32* @M_DEVBUF, align 4
  %114 = call i32 @free(%struct.ofw_iicbus_devinfo* %112, i32 %113)
  br label %131

115:                                              ; preds = %105
  %116 = load i32, i32* %2, align 4
  %117 = call i32 @device_add_child(i32 %116, i32* null, i32 -1)
  store i32 %117, i32* %10, align 4
  %118 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %4, align 8
  %119 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = call i32 @resource_list_init(i32* %120)
  %122 = load i32, i32* %10, align 4
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %4, align 8
  %125 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = call i32 @ofw_bus_intr_to_rl(i32 %122, i64 %123, i32* %126, i32* null)
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %4, align 8
  %130 = call i32 @device_set_ivars(i32 %128, %struct.ofw_iicbus_devinfo* %129)
  br label %131

131:                                              ; preds = %115, %111, %90, %80
  %132 = load i64, i64* %5, align 8
  %133 = call i64 @OF_peer(i64 %132)
  store i64 %133, i64* %5, align 8
  br label %69

134:                                              ; preds = %69
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @OF_xref_from_node(i64 %135)
  %137 = load i32, i32* %2, align 4
  %138 = call i32 @OF_device_register_xref(i32 %136, i32 %137)
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @bus_generic_attach(i32 %139)
  ret i32 %140
}

declare dso_local %struct.iicbus_softc* @IICBUS_SOFTC(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i32 @iicbus_init_frequency(i32, i32) #1

declare dso_local i32 @iicbus_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.ofw_iicbus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(i32*, i64) #1

declare dso_local i32 @free(%struct.ofw_iicbus_devinfo*, i32) #1

declare dso_local i32 @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @ofw_bus_intr_to_rl(i32, i64, i32*, i32*) #1

declare dso_local i32 @device_set_ivars(i32, %struct.ofw_iicbus_devinfo*) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i64) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
