; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_attach_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_attach_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_watch = type { i32*, i64 }
%struct.xbb_softc = type { i32, i64, i32*, i32, i8*, i8*, i32*, i32, i32*, i32* }

@XST_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"physical-device-path\00", align 1
@M_XENBLOCKBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"device-type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"reading backend fields at %s\00", align 1
@XBBF_READ_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xbb\00", align 1
@DEVSTAT_ALL_SUPPORTED = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_DIRECT = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_IF_OTHER = common dso_local global i32 0, align 4
@DEVSTAT_PRIORITY_OTHER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"xbbi\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Unable to create taskqueue\00", align 1
@PWAIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"hotplug-status\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"writing %s/hotplug-status\00", align 1
@XenbusStateInitialised = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xs_watch*, i8**, i32)* @xbb_attach_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_attach_disk(%struct.xs_watch* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.xs_watch*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.xbb_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.xs_watch* %0, %struct.xs_watch** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xs_watch*, %struct.xs_watch** %4, align 8
  %11 = getelementptr inbounds %struct.xs_watch, %struct.xs_watch* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.xbb_softc* @device_get_softc(i64 %13)
  store %struct.xbb_softc* %14, %struct.xbb_softc** %8, align 8
  %15 = load i32, i32* @XST_NIL, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32* @xenbus_get_node(i64 %16)
  %18 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %19 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %18, i32 0, i32 6
  %20 = call i32 @xs_gather(i32 %15, i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null, i32** %19, i32* null)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %171

24:                                               ; preds = %3
  %25 = load %struct.xs_watch*, %struct.xs_watch** %4, align 8
  %26 = call i32 @xs_unregister_watch(%struct.xs_watch* %25)
  %27 = load %struct.xs_watch*, %struct.xs_watch** %4, align 8
  %28 = getelementptr inbounds %struct.xs_watch, %struct.xs_watch* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @M_XENBLOCKBACK, align 4
  %31 = call i32 @free(i32* %29, i32 %30)
  %32 = load %struct.xs_watch*, %struct.xs_watch** %4, align 8
  %33 = getelementptr inbounds %struct.xs_watch, %struct.xs_watch* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* @XST_NIL, align 4
  %35 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %36 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32* @xenbus_get_otherend_path(i64 %37)
  %39 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %40 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %39, i32 0, i32 9
  %41 = call i32 @xs_gather(i32 %34, i32* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null, i32** %40, i32* null)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %24
  %45 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %46 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %45, i32 0, i32 9
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %44, %24
  %48 = load i32, i32* @XST_NIL, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32* @xenbus_get_node(i64 %49)
  %51 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %52 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %51, i32 0, i32 8
  %53 = call i32 @xs_gather(i32 %48, i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, i32** %52, i32* null)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32* @xenbus_get_node(i64 %59)
  %61 = call i32 (%struct.xbb_softc*, i32, i8*, ...) @xbb_attach_failed(%struct.xbb_softc* %57, i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* %60)
  br label %171

62:                                               ; preds = %47
  %63 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %64 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %63, i32 0, i32 8
  %65 = load i32*, i32** %64, align 8
  %66 = call i32* @strchr(i32* %65, i8 signext 119)
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* @XBBF_READ_ONLY, align 4
  %70 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %71 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %76 = call i32 @xbb_open_backend(%struct.xbb_softc* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %83 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 (%struct.xbb_softc*, i32, i8*, ...) @xbb_attach_failed(%struct.xbb_softc* %80, i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %84)
  br label %171

86:                                               ; preds = %74
  %87 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %88 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @device_get_unit(i64 %89)
  %91 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %92 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DEVSTAT_ALL_SUPPORTED, align 4
  %95 = load i32, i32* @DEVSTAT_TYPE_DIRECT, align 4
  %96 = load i32, i32* @DEVSTAT_TYPE_IF_OTHER, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @DEVSTAT_PRIORITY_OTHER, align 4
  %99 = call i8* @devstat_new_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %93, i32 %94, i32 %97, i32 %98)
  %100 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %101 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %103 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @device_get_unit(i64 %104)
  %106 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %107 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @DEVSTAT_ALL_SUPPORTED, align 4
  %110 = load i32, i32* @DEVSTAT_TYPE_DIRECT, align 4
  %111 = load i32, i32* @DEVSTAT_TYPE_IF_OTHER, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @DEVSTAT_PRIORITY_OTHER, align 4
  %114 = call i8* @devstat_new_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %105, i32 %108, i32 %109, i32 %112, i32 %113)
  %115 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %116 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %118 = call i32 @xbb_setup_sysctl(%struct.xbb_softc* %117)
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @device_get_nameunit(i64 %119)
  %121 = load i32, i32* @M_NOWAIT, align 4
  %122 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %123 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %124 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %123, i32 0, i32 2
  %125 = call i32* @taskqueue_create_fast(i32 %120, i32 %121, i32 %122, i32** %124)
  %126 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %127 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %129 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %86
  %133 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 (%struct.xbb_softc*, i32, i8*, ...) @xbb_attach_failed(%struct.xbb_softc* %133, i32 %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %171

136:                                              ; preds = %86
  %137 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %138 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %137, i32 0, i32 2
  %139 = load i32, i32* @PWAIT, align 4
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @device_get_nameunit(i64 %140)
  %142 = call i32 @taskqueue_start_threads(i32** %138, i32 1, i32 %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @XST_NIL, align 4
  %144 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %145 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32* @xenbus_get_node(i64 %146)
  %148 = call i32 @xs_printf(i32 %143, i32* %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %136
  %152 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %155 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32* @xenbus_get_node(i64 %156)
  %158 = call i32 (%struct.xbb_softc*, i32, i8*, ...) @xbb_attach_failed(%struct.xbb_softc* %152, i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32* %157)
  br label %171

159:                                              ; preds = %136
  %160 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %161 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %163 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @xenbus_get_otherend_state(i64 %164)
  %166 = load i64, i64* @XenbusStateInitialised, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load %struct.xbb_softc*, %struct.xbb_softc** %8, align 8
  %170 = call i32 @xbb_connect(%struct.xbb_softc* %169)
  br label %171

171:                                              ; preds = %23, %56, %79, %132, %151, %168, %159
  ret void
}

declare dso_local %struct.xbb_softc* @device_get_softc(i64) #1

declare dso_local i32 @xs_gather(i32, i32*, i8*, i32*, i32**, i32*) #1

declare dso_local i32* @xenbus_get_node(i64) #1

declare dso_local i32 @xs_unregister_watch(%struct.xs_watch*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32* @xenbus_get_otherend_path(i64) #1

declare dso_local i32 @xbb_attach_failed(%struct.xbb_softc*, i32, i8*, ...) #1

declare dso_local i32* @strchr(i32*, i8 signext) #1

declare dso_local i32 @xbb_open_backend(%struct.xbb_softc*) #1

declare dso_local i8* @devstat_new_entry(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i64) #1

declare dso_local i32 @xbb_setup_sysctl(%struct.xbb_softc*) #1

declare dso_local i32* @taskqueue_create_fast(i32, i32, i32, i32**) #1

declare dso_local i32 @device_get_nameunit(i64) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @xs_printf(i32, i32*, i8*, i8*) #1

declare dso_local i64 @xenbus_get_otherend_state(i64) #1

declare dso_local i32 @xbb_connect(%struct.xbb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
