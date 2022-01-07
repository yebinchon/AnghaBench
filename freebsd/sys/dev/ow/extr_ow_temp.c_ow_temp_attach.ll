; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow_temp.c_ow_temp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow_temp.c_ow_temp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_temp_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@sysctl_handle_int = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"IK3\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Current Temperature\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"badcrc\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Number of Bad CRC on reading scratchpad\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"badread\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Number of errors on reading scratchpad\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"reading_interval\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"ticks between reads\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"parasite\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"In Parasite mode\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"lock for doing temperature\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ow_temp_event_thread = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"%s event thread\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"unable to create event thread.\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"ow_temp_attach, can't create thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ow_temp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ow_temp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ow_temp_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ow_temp_softc* @device_get_softc(i32 %4)
  store %struct.ow_temp_softc* %5, %struct.ow_temp_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @ow_get_family(i32 %9)
  %11 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @device_get_sysctl_ctx(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_sysctl_tree(i32 %15)
  %17 = call i32 @SYSCTL_CHILDREN(i32 %16)
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = load i32, i32* @CTLTYPE_INT, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %22, i32 0, i32 0
  %24 = load i32, i32* @sysctl_handle_int, align 4
  %25 = call i32 @SYSCTL_ADD_PROC(i32 %14, i32 %17, i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21, i32* %23, i32 0, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @device_get_sysctl_ctx(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @device_get_sysctl_tree(i32 %28)
  %30 = call i32 @SYSCTL_CHILDREN(i32 %29)
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i32, i32* @CTLFLAG_RD, align 4
  %33 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %33, i32 0, i32 1
  %35 = call i32 @SYSCTL_ADD_INT(i32 %27, i32 %30, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32* %34, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @device_get_sysctl_ctx(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @device_get_sysctl_tree(i32 %38)
  %40 = call i32 @SYSCTL_CHILDREN(i32 %39)
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = load i32, i32* @CTLFLAG_RD, align 4
  %43 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %43, i32 0, i32 2
  %45 = call i32 @SYSCTL_ADD_INT(i32 %37, i32 %40, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32* %44, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @device_get_sysctl_ctx(i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @device_get_sysctl_tree(i32 %48)
  %50 = call i32 @SYSCTL_CHILDREN(i32 %49)
  %51 = load i32, i32* @OID_AUTO, align 4
  %52 = load i32, i32* @CTLFLAG_RW, align 4
  %53 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %53, i32 0, i32 3
  %55 = call i32 @SYSCTL_ADD_INT(i32 %47, i32 %50, i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %52, i32* %54, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @device_get_sysctl_ctx(i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @device_get_sysctl_tree(i32 %58)
  %60 = call i32 @SYSCTL_CHILDREN(i32 %59)
  %61 = load i32, i32* @OID_AUTO, align 4
  %62 = load i32, i32* @CTLFLAG_RW, align 4
  %63 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %63, i32 0, i32 4
  %65 = call i32 @SYSCTL_ADD_INT(i32 %57, i32 %60, i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %62, i32* %64, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %66 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 4
  %68 = load i32, i32* @hz, align 4
  %69 = mul nsw i32 10, %68
  %70 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %72, i32 0, i32 6
  %74 = load i32, i32* @MTX_DEF, align 4
  %75 = call i32 @mtx_init(i32* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 %74)
  %76 = load i32, i32* @ow_temp_event_thread, align 4
  %77 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %78 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %78, i32 0, i32 5
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @device_get_nameunit(i32 %80)
  %82 = call i64 @kproc_create(i32 %76, %struct.ow_temp_softc* %77, i32* %79, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %1
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %87 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %1
  ret i32 0
}

declare dso_local %struct.ow_temp_softc* @device_get_softc(i32) #1

declare dso_local i32 @ow_get_family(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @kproc_create(i32, %struct.ow_temp_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
