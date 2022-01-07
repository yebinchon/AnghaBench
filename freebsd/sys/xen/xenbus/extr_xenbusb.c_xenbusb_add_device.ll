; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_add_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbusb_softc = type { i32, i32, i32 }
%struct.sbuf = type { i32 }
%struct.xenbus_device_ivars = type { i32, i8*, i32*, %struct.TYPE_4__, i8*, %struct.TYPE_3__, i32, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i8* }
%struct.TYPE_3__ = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@M_XENBUS = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@XST_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XenbusStateInitialising = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"xenbusb_add_device: Device %s ignored. State %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"xdlock\00", align 1
@XDF_CONNECTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"xenbus_update_device: %s no otherend id\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"/state\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s/state\00", align 1
@xenbusb_otherend_watch_cb = common dso_local global i32 0, align 4
@xenbusb_local_watch_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbusb_add_device(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xenbusb_softc*, align 8
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xenbus_device_ivars*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.xenbusb_softc* @device_get_softc(i32* %15)
  store %struct.xenbusb_softc* %16, %struct.xenbusb_softc** %7, align 8
  %17 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %17, %struct.sbuf** %8, align 8
  %18 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %19 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %20 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @sbuf_printf(%struct.sbuf* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i8* %23)
  %25 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %26 = call i32 @sbuf_finish(%struct.sbuf* %25)
  %27 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %28 = call i8* @sbuf_data(%struct.sbuf* %27)
  store i8* %28, i8** %9, align 8
  %29 = load i32, i32* @M_XENBUS, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @malloc(i32 112, i32 %29, i32 %32)
  %34 = bitcast i8* %33 to %struct.xenbus_device_ivars*
  store %struct.xenbus_device_ivars* %34, %struct.xenbus_device_ivars** %10, align 8
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @XST_NIL, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @xs_exists(i32 %36, i8* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %150

40:                                               ; preds = %3
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32* @xenbusb_device_exists(i32* %41, i8* %42)
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %151

47:                                               ; preds = %40
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @xenbus_read_driver_state(i8* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @XenbusStateInitialising, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %55)
  store i32 0, i32* %11, align 4
  br label %151

57:                                               ; preds = %47
  %58 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %59 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %58, i32 0, i32 10
  %60 = call i32 @sx_init(i32* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @XDF_CONNECTING, align 4
  %62 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %63 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @M_XENBUS, align 4
  %66 = call i8* @strdup(i8* %64, i32 %65)
  %67 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %68 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %72 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @M_XENBUS, align 4
  %75 = call i8* @strdup(i8* %73, i32 %74)
  %76 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %77 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @XenbusStateInitialising, align 4
  %79 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %80 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %83 = call i32 @XENBUSB_GET_OTHEREND_NODE(i32* %81, %struct.xenbus_device_ivars* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %57
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  br label %151

89:                                               ; preds = %57
  %90 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %91 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %94 = add nsw i32 %92, %93
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* @M_XENBUS, align 4
  %97 = load i32, i32* @M_WAITOK, align 4
  %98 = call i8* @malloc(i32 %95, i32 %96, i32 %97)
  store i8* %98, i8** %14, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %101 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @sprintf(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  %104 = load i8*, i8** %14, align 8
  %105 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %106 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load i32, i32* @xenbusb_otherend_watch_cb, align 4
  %109 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %110 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %113 = ptrtoint %struct.xenbus_device_ivars* %112 to i64
  %114 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %115 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %118 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %121 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  %123 = load i32, i32* @xenbusb_local_watch_cb, align 4
  %124 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %125 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 8
  %127 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %128 = ptrtoint %struct.xenbus_device_ivars* %127 to i64
  %129 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %130 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  %132 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %133 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %132, i32 0, i32 0
  %134 = call i32 @mtx_lock(i32* %133)
  %135 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %136 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %140 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %139, i32 0, i32 0
  %141 = call i32 @mtx_unlock(i32* %140)
  %142 = load i32*, i32** %4, align 8
  %143 = call i32* @device_add_child(i32* %142, i32* null, i32 -1)
  store i32* %143, i32** %12, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %146 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %145, i32 0, i32 2
  store i32* %144, i32** %146, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %149 = call i32 @device_set_ivars(i32* %147, %struct.xenbus_device_ivars* %148)
  br label %150

150:                                              ; preds = %89, %3
  br label %151

151:                                              ; preds = %150, %86, %53, %46
  %152 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %153 = call i32 @sbuf_delete(%struct.sbuf* %152)
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %158 = call i32 @xenbusb_free_child_ivars(%struct.xenbus_device_ivars* %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load i32, i32* %11, align 4
  ret i32 %160
}

declare dso_local %struct.xenbusb_softc* @device_get_softc(i32*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @xs_exists(i32, i8*, i8*) #1

declare dso_local i32* @xenbusb_device_exists(i32*, i8*) #1

declare dso_local i32 @xenbus_read_driver_state(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @XENBUSB_GET_OTHEREND_NODE(i32*, %struct.xenbus_device_ivars*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.xenbus_device_ivars*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @xenbusb_free_child_ivars(%struct.xenbus_device_ivars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
