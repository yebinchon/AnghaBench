; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_fetch_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_fetch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i64, i64 }
%struct.mly_command = type { i32, %struct.TYPE_7__*, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.mly_command_ioctl = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MLY_CMD_DATAIN = common dso_local global i32 0, align 4
@mly_complete_event = common dso_local global i32 0, align 4
@MDACMD_IOCTL = common dso_local global i32 0, align 4
@MLY_TIMEOUT_SECONDS = common dso_local global i32 0, align 4
@MDACIOCTL_GETEVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fetch event %u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"couldn't fetch event %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_softc*)* @mly_fetch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_fetch_event(%struct.mly_softc* %0) #0 {
  %2 = alloca %struct.mly_softc*, align 8
  %3 = alloca %struct.mly_command*, align 8
  %4 = alloca %struct.mly_command_ioctl*, align 8
  %5 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %2, align 8
  %6 = call i32 @debug_called(i32 1)
  %7 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %8 = call i64 @mly_alloc_command(%struct.mly_softc* %7, %struct.mly_command** %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %109

11:                                               ; preds = %1
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i32* @malloc(i32 4, i32 %12, i32 %15)
  %17 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %18 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = icmp eq i32* %16, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %22 = call i32 @mly_release_command(%struct.mly_command* %21)
  br label %109

23:                                               ; preds = %11
  %24 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %25 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load i32, i32* @MLY_CMD_DATAIN, align 4
  %27 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %28 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @mly_complete_event, align 4
  %32 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %33 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %35 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %38 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %43 = call i32 @mly_release_command(%struct.mly_command* %42)
  br label %109

44:                                               ; preds = %23
  %45 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = trunc i64 %47 to i32
  store i32 %49, i32* %5, align 4
  %50 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %51 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to %struct.mly_command_ioctl*
  store %struct.mly_command_ioctl* %54, %struct.mly_command_ioctl** %4, align 8
  %55 = load i32, i32* @MDACMD_IOCTL, align 4
  %56 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %57 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %59 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %58, i32 0, i32 0
  store i32 4, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %64 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = ashr i32 %67, 24
  %69 = and i32 %68, 255
  %70 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %71 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %75 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %79 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %83 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 30, i32* %84, align 4
  %85 = load i32, i32* @MLY_TIMEOUT_SECONDS, align 4
  %86 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %87 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @MDACIOCTL_GETEVENT, align 4
  %90 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %91 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, 65535
  %94 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %4, align 8
  %95 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @debug(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %101 = call i64 @mly_start(%struct.mly_command* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %44
  %104 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @mly_printf(%struct.mly_softc* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %108 = call i32 @mly_release_command(%struct.mly_command* %107)
  br label %109

109:                                              ; preds = %10, %20, %41, %103, %44
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @mly_alloc_command(%struct.mly_softc*, %struct.mly_command**) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @mly_release_command(%struct.mly_command*) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i64 @mly_start(%struct.mly_command*) #1

declare dso_local i32 @mly_printf(%struct.mly_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
