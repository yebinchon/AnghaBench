; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokeys_softc = type { i64, i32*, i32, i32, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i8* }

@ENXIO = common dso_local global i32 0, align 4
@KBD_DRIVER_NAME = common dso_local global i32 0, align 4
@KB_OTHER = common dso_local global i32 0, align 4
@K_XLATE = common dso_local global i32 0, align 4
@key_map = common dso_local global i32 0, align 4
@accent_map = common dso_local global i32 0, align 4
@GPIOKEYS_GLOBAL_NFKEY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpiokeys_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiokeys_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpiokeys_softc*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ofw_bus_get_node(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %145

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.gpiokeys_softc* @device_get_softc(i32 %16)
  store %struct.gpiokeys_softc* %17, %struct.gpiokeys_softc** %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %20 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %22 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %21, i32 0, i32 6
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  %23 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %24 = call i32 @GPIOKEYS_LOCK_INIT(%struct.gpiokeys_softc* %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_unit(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = load i32, i32* @KBD_DRIVER_NAME, align 4
  %29 = load i32, i32* @KB_OTHER, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @kbd_init_struct(%struct.TYPE_13__* %27, i32 %28, i32 %29, i32 %30, i32 0, i32 0, i32 0)
  %32 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %33 = bitcast %struct.gpiokeys_softc* %32 to i8*
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @K_XLATE, align 4
  %37 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %38 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @key_map, align 4
  %40 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %41 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @accent_map, align 4
  %43 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %44 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %47 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %46, i32 0, i32 4
  %48 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %49 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %48, i32 0, i32 3
  %50 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %51 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GPIOKEYS_GLOBAL_NFKEY, align 4
  %54 = call i32 @kbd_set_maps(%struct.TYPE_13__* %45, i32* %47, i32* %49, i32 %52, i32 %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = call i32 @KBD_FOUND_DEVICE(%struct.TYPE_13__* %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = call i32 @gpiokeys_clear_state(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = call i32 @KBD_PROBE_DONE(%struct.TYPE_13__* %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = call i32 @KBD_INIT_DONE(%struct.TYPE_13__* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = call i64 @kbd_register(%struct.TYPE_13__* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %15
  br label %141

67:                                               ; preds = %15
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = call i32 @KBD_CONFIG_DONE(%struct.TYPE_13__* %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = call i32 @gpiokeys_enable(%struct.TYPE_13__* %70)
  %72 = load i64, i64* @bootverbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = call i32 @genkbd_diag(%struct.TYPE_13__* %75, i32 1)
  br label %77

77:                                               ; preds = %74, %67
  store i32 0, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @OF_child(i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %91, %77
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @OF_hasprop(i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %87
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @OF_peer(i32 %92)
  store i32 %93, i32* %8, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %140

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @M_DEVBUF, align 4
  %103 = load i32, i32* @M_WAITOK, align 4
  %104 = load i32, i32* @M_ZERO, align 4
  %105 = or i32 %103, %104
  %106 = call i32* @malloc(i32 %101, i32 %102, i32 %105)
  %107 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %108 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %110 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @OF_child(i32 %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %136, %97
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @OF_hasprop(i32 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  br label %136

121:                                              ; preds = %116
  %122 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %125 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %128 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = call i32 @gpiokeys_attach_key(%struct.gpiokeys_softc* %122, i32 %123, i32* %130)
  %132 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  %133 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %121, %120
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @OF_peer(i32 %137)
  store i32 %138, i32* %8, align 4
  br label %113

139:                                              ; preds = %113
  br label %140

140:                                              ; preds = %139, %94
  store i32 0, i32* %2, align 4
  br label %145

141:                                              ; preds = %66
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @gpiokeys_detach(i32 %142)
  %144 = load i32, i32* @ENXIO, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %141, %140, %13
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.gpiokeys_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIOKEYS_LOCK_INIT(%struct.gpiokeys_softc*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @kbd_init_struct(%struct.TYPE_13__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kbd_set_maps(%struct.TYPE_13__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @KBD_FOUND_DEVICE(%struct.TYPE_13__*) #1

declare dso_local i32 @gpiokeys_clear_state(%struct.TYPE_13__*) #1

declare dso_local i32 @KBD_PROBE_DONE(%struct.TYPE_13__*) #1

declare dso_local i32 @KBD_INIT_DONE(%struct.TYPE_13__*) #1

declare dso_local i64 @kbd_register(%struct.TYPE_13__*) #1

declare dso_local i32 @KBD_CONFIG_DONE(%struct.TYPE_13__*) #1

declare dso_local i32 @gpiokeys_enable(%struct.TYPE_13__*) #1

declare dso_local i32 @genkbd_diag(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @gpiokeys_attach_key(%struct.gpiokeys_softc*, i32, i32*) #1

declare dso_local i32 @gpiokeys_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
