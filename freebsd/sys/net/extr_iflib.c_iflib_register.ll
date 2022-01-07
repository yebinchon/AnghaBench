; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i8*, i8*, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }

@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can not allocate ifnet structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@iflib_if_init = common dso_local global i32 0, align 4
@iflib_if_ioctl = common dso_local global i32 0, align 4
@iflib_if_transmit = common dso_local global i32 0, align 4
@iflib_if_qflush = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@vlan_config = common dso_local global i32 0, align 4
@iflib_vlan_register = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_FIRST = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@iflib_vlan_unregister = common dso_local global i32 0, align 4
@IFLIB_DRIVER_MEDIA = common dso_local global i32 0, align 4
@IFM_IMASK = common dso_local global i32 0, align 4
@iflib_media_change = common dso_local global i32 0, align 4
@iflib_media_status = common dso_local global i32 0, align 4
@iflib_altq_if_start = common dso_local global i32 0, align 4
@iflib_altq_if_transmit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @iflib_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_register(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 6
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i32 @_iflib_assert(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i32 @CTX_LOCK_INIT(%struct.TYPE_10__* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_get_nameunit(i32 %24)
  %26 = call i32 @STATE_LOCK_INIT(%struct.TYPE_10__* %21, i32 %25)
  %27 = load i32, i32* @IFT_ETHER, align 4
  %28 = call i32* @if_alloc(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  store i32* %28, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %2, align 4
  br label %110

37:                                               ; preds = %1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = ptrtoint %struct.TYPE_10__* %38 to i32
  %40 = load i32*, i32** %5, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 @kobj_init(i32 %39, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @kobj_class_compile(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @device_get_name(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @device_get_unit(i32 %49)
  %51 = call i32 @if_initname(i32* %46, i32 %48, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = call i32 @if_setsoftc(i32* %52, %struct.TYPE_10__* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @if_setdev(i32* %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @iflib_if_init, align 4
  %60 = call i32 @if_setinitfn(i32* %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @iflib_if_ioctl, align 4
  %63 = call i32 @if_setioctlfn(i32* %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @iflib_if_transmit, align 4
  %66 = call i32 @if_settransmitfn(i32* %64, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @iflib_if_qflush, align 4
  %69 = call i32 @if_setqflushfn(i32* %67, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @IFF_BROADCAST, align 4
  %72 = load i32, i32* @IFF_SIMPLEX, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @IFF_MULTICAST, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @if_setflags(i32* %70, i32 %75)
  %77 = load i32, i32* @vlan_config, align 4
  %78 = load i32, i32* @iflib_vlan_register, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %81 = call i8* @EVENTHANDLER_REGISTER(i32 %77, i32 %78, %struct.TYPE_10__* %79, i32 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @vlan_unconfig, align 4
  %85 = load i32, i32* @iflib_vlan_unregister, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %88 = call i8* @EVENTHANDLER_REGISTER(i32 %84, i32 %85, %struct.TYPE_10__* %86, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IFLIB_DRIVER_MEDIA, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %37
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @IFM_IMASK, align 4
  %106 = load i32, i32* @iflib_media_change, align 4
  %107 = load i32, i32* @iflib_media_status, align 4
  %108 = call i32 @ifmedia_init(i32* %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %97, %37
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %33
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @_iflib_assert(%struct.TYPE_9__*) #1

declare dso_local i32 @CTX_LOCK_INIT(%struct.TYPE_10__*) #1

declare dso_local i32 @STATE_LOCK_INIT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @kobj_init(i32, i32) #1

declare dso_local i32 @kobj_class_compile(i32) #1

declare dso_local i32 @if_initname(i32*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @if_setsoftc(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @if_setdev(i32*, i32) #1

declare dso_local i32 @if_setinitfn(i32*, i32) #1

declare dso_local i32 @if_setioctlfn(i32*, i32) #1

declare dso_local i32 @if_settransmitfn(i32*, i32) #1

declare dso_local i32 @if_setqflushfn(i32*, i32) #1

declare dso_local i32 @if_setflags(i32*, i32) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
