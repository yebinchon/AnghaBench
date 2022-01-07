; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_ofw_pwmbus.c_ofw_pwmbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_ofw_pwmbus.c_ofw_pwmbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pwmbus_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }
%struct.ofw_pwmbus_ivars = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"No channels on parent %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pwmc\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"failed to add pwmc child  device for channel %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ofw_pwmbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_pwmbus_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ofw_pwmbus_softc*, align 8
  %5 = alloca %struct.ofw_pwmbus_ivars*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.ofw_pwmbus_softc* @device_get_softc(i32* %11)
  store %struct.ofw_pwmbus_softc* %12, %struct.ofw_pwmbus_softc** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.ofw_pwmbus_softc*, %struct.ofw_pwmbus_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ofw_pwmbus_softc, %struct.ofw_pwmbus_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32* %13, i32** %16, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @device_get_parent(i32* %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.ofw_pwmbus_softc*, %struct.ofw_pwmbus_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ofw_pwmbus_softc, %struct.ofw_pwmbus_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i64 @PWMBUS_CHANNEL_COUNT(i32* %19, i64* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.ofw_pwmbus_softc*, %struct.ofw_pwmbus_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ofw_pwmbus_softc, %struct.ofw_pwmbus_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %1
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @device_get_nameunit(i32* %33)
  %35 = call i32 @device_printf(i32* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %121

37:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @ofw_bus_get_node(i32* %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @OF_child(i64 %40)
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %80, %37
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @OF_getencprop(i64 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %9, i32 8)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %80

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.ofw_pwmbus_softc*, %struct.ofw_pwmbus_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ofw_pwmbus_softc, %struct.ofw_pwmbus_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %80

58:                                               ; preds = %50
  %59 = load i32*, i32** %3, align 8
  %60 = call i32* @ofw_pwmbus_add_child(i32* %59, i32 0, i8* null, i32 -1)
  store i32* %60, i32** %7, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %80

63:                                               ; preds = %58
  %64 = load i32*, i32** %7, align 8
  %65 = call %struct.ofw_pwmbus_ivars* @device_get_ivars(i32* %64)
  store %struct.ofw_pwmbus_ivars* %65, %struct.ofw_pwmbus_ivars** %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.ofw_pwmbus_ivars*, %struct.ofw_pwmbus_ivars** %5, align 8
  %68 = getelementptr inbounds %struct.ofw_pwmbus_ivars, %struct.ofw_pwmbus_ivars* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.ofw_pwmbus_ivars*, %struct.ofw_pwmbus_ivars** %5, align 8
  %71 = getelementptr inbounds %struct.ofw_pwmbus_ivars, %struct.ofw_pwmbus_ivars* %70, i32 0, i32 1
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @ofw_bus_gen_setup_devinfo(i32* %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @device_delete_child(i32* %76, i32* %77)
  br label %80

79:                                               ; preds = %63
  store i32 1, i32* %10, align 4
  br label %80

80:                                               ; preds = %79, %75, %62, %57, %49
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @OF_peer(i64 %81)
  store i64 %82, i64* %6, align 8
  br label %42

83:                                               ; preds = %42
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %114, label %86

86:                                               ; preds = %83
  store i64 0, i64* %9, align 8
  br label %87

87:                                               ; preds = %110, %86
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.ofw_pwmbus_softc*, %struct.ofw_pwmbus_softc** %4, align 8
  %90 = getelementptr inbounds %struct.ofw_pwmbus_softc, %struct.ofw_pwmbus_softc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %87
  %95 = load i32*, i32** %3, align 8
  %96 = call i32* @ofw_pwmbus_add_child(i32* %95, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32* %96, i32** %7, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32*, i32** %3, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @device_printf(i32* %100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  br label %110

103:                                              ; preds = %94
  %104 = load i32*, i32** %7, align 8
  %105 = call %struct.ofw_pwmbus_ivars* @device_get_ivars(i32* %104)
  store %struct.ofw_pwmbus_ivars* %105, %struct.ofw_pwmbus_ivars** %5, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.ofw_pwmbus_ivars*, %struct.ofw_pwmbus_ivars** %5, align 8
  %108 = getelementptr inbounds %struct.ofw_pwmbus_ivars, %struct.ofw_pwmbus_ivars* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  br label %110

110:                                              ; preds = %103, %99
  %111 = load i64, i64* %9, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %87

113:                                              ; preds = %87
  br label %114

114:                                              ; preds = %113, %83
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @bus_enumerate_hinted_children(i32* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @bus_generic_probe(i32* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @bus_generic_attach(i32* %119)
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %114, %31
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.ofw_pwmbus_softc* @device_get_softc(i32*) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i64 @PWMBUS_CHANNEL_COUNT(i32*, i64*) #1

declare dso_local i32 @device_printf(i32*, i8*, i64) #1

declare dso_local i64 @device_get_nameunit(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i32* @ofw_pwmbus_add_child(i32*, i32, i8*, i32) #1

declare dso_local %struct.ofw_pwmbus_ivars* @device_get_ivars(i32*) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(i32*, i64) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32*) #1

declare dso_local i32 @bus_generic_probe(i32*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
