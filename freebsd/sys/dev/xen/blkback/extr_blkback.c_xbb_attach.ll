; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { %struct.TYPE_2__, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32*, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Attaching to %s\0A\00", align 1
@xbb_run_queue = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@XST_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"feature-barrier\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"writing %s/feature-barrier\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"feature-flush-cache\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"writing %s/feature-flush-cache\00", align 1
@XBB_MAX_RING_PAGES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"max-ring-page-order\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"writing %s/max-ring-page-order\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Hotplug scripts already executed\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"physical-device-path\00", align 1
@xbb_attach_disk = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"watch node already setup\00", align 1
@M_XENBLOCKBACK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"failed to create watch on %s\00", align 1
@XenbusStateInitWait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @xbb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbb_attach(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.xbb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sbuf*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32* @xenbus_get_node(i64 %8)
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %9)
  %11 = load i64, i64* %3, align 8
  %12 = call %struct.xbb_softc* @device_get_softc(i64 %11)
  store %struct.xbb_softc* %12, %struct.xbb_softc** %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %15 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @xenbus_get_otherend_id(i64 %16)
  %18 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %19 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %21 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %20, i32 0, i32 4
  %22 = load i32, i32* @xbb_run_queue, align 4
  %23 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %24 = call i32 @TASK_INIT(i32* %21, i32 0, i32 %22, %struct.xbb_softc* %23)
  %25 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %26 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %25, i32 0, i32 3
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @device_get_nameunit(i64 %27)
  %29 = load i32, i32* @MTX_DEF, align 4
  %30 = call i32 @mtx_init(i32* %26, i32 %28, i32* null, i32 %29)
  %31 = load i32, i32* @XST_NIL, align 4
  %32 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %33 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32* @xenbus_get_node(i64 %34)
  %36 = call i32 (i32, i32*, i8*, i8*, ...) @xs_printf(i32 %31, i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %1
  %40 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %43 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32* @xenbus_get_node(i64 %44)
  %46 = call i32 @xbb_attach_failed(%struct.xbb_softc* %40, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %149

48:                                               ; preds = %1
  %49 = load i32, i32* @XST_NIL, align 4
  %50 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %51 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32* @xenbus_get_node(i64 %52)
  %54 = call i32 (i32, i32*, i8*, i8*, ...) @xs_printf(i32 %49, i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %61 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32* @xenbus_get_node(i64 %62)
  %64 = call i32 @xbb_attach_failed(%struct.xbb_softc* %58, i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %149

66:                                               ; preds = %48
  %67 = load i32, i32* @XBB_MAX_RING_PAGES, align 4
  %68 = call i64 @flsl(i32 %67)
  %69 = sub nsw i64 %68, 1
  store i64 %69, i64* %6, align 8
  %70 = load i32, i32* @XST_NIL, align 4
  %71 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %72 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32* @xenbus_get_node(i64 %73)
  %75 = load i64, i64* %6, align 8
  %76 = call i32 (i32, i32*, i8*, i8*, ...) @xs_printf(i32 %70, i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %66
  %80 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %83 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32* @xenbus_get_node(i64 %84)
  %86 = call i32 @xbb_attach_failed(%struct.xbb_softc* %80, i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32* %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %149

88:                                               ; preds = %66
  %89 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %90 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @KASSERT(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %96 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %97 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32* @xenbus_get_node(i64 %98)
  %100 = call %struct.sbuf* @xs_join(i32* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store %struct.sbuf* %100, %struct.sbuf** %7, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %103 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load i32, i32* @xbb_attach_disk, align 4
  %106 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %107 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %110 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i32 @KASSERT(i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %116 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %117 = call i32 @sbuf_data(%struct.sbuf* %116)
  %118 = load i32, i32* @M_XENBLOCKBACK, align 4
  %119 = call i32* @strdup(i32 %117, i32 %118)
  %120 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %121 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32* %119, i32** %122, align 8
  %123 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %124 = call i32 @sbuf_delete(%struct.sbuf* %123)
  %125 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %126 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %125, i32 0, i32 0
  %127 = call i32 @xs_register_watch(%struct.TYPE_2__* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %88
  %131 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %134 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @xbb_attach_failed(%struct.xbb_softc* %131, i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32* %136)
  %138 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %139 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @M_XENBLOCKBACK, align 4
  %143 = call i32 @free(i32* %141, i32 %142)
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %149

145:                                              ; preds = %88
  %146 = load i64, i64* %3, align 8
  %147 = load i32, i32* @XenbusStateInitWait, align 4
  %148 = call i32 @xenbus_set_state(i64 %146, i32 %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %145, %130, %79, %57, %39
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @DPRINTF(i8*, i32*) #1

declare dso_local i32* @xenbus_get_node(i64) #1

declare dso_local %struct.xbb_softc* @device_get_softc(i64) #1

declare dso_local i32 @xenbus_get_otherend_id(i64) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.xbb_softc*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i64) #1

declare dso_local i32 @xs_printf(i32, i32*, i8*, i8*, ...) #1

declare dso_local i32 @xbb_attach_failed(%struct.xbb_softc*, i32, i8*, i32*) #1

declare dso_local i64 @flsl(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.sbuf* @xs_join(i32*, i8*) #1

declare dso_local i32* @strdup(i32, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @xs_register_watch(%struct.TYPE_2__*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @xenbus_set_state(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
