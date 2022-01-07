; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_rescan_btl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_rescan_btl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32 }
%struct.mly_command = type { i32, %struct.TYPE_7__*, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.mly_command_ioctl = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MLY_CMD_DATAIN = common dso_local global i32 0, align 4
@mly_complete_rescan = common dso_local global i32 0, align 4
@MDACMD_IOCTL = common dso_local global i32 0, align 4
@MLY_TIMEOUT_SECONDS = common dso_local global i32 0, align 4
@MDACIOCTL_GETLOGDEVINFOVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"logical device %d\00", align 1
@MDACIOCTL_GETPHYSDEVINFOVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"physical device %d:%d\00", align 1
@MLY_BTL_RESCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_softc*, i32, i32)* @mly_rescan_btl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_rescan_btl(%struct.mly_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mly_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mly_command*, align 8
  %8 = alloca %struct.mly_command_ioctl*, align 8
  store %struct.mly_softc* %0, %struct.mly_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @debug_called(i32 1)
  %10 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @MLY_BUS_IS_VALID(%struct.mly_softc* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %142

15:                                               ; preds = %3
  %16 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %17 = call i64 @mly_alloc_command(%struct.mly_softc* %16, %struct.mly_command** %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %142

20:                                               ; preds = %15
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call i32* @malloc(i32 4, i32 %21, i32 %24)
  %26 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %27 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = icmp eq i32* %25, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %31 = call i32 @mly_release_command(%struct.mly_command* %30)
  br label %142

32:                                               ; preds = %20
  %33 = load i32, i32* @MLY_CMD_DATAIN, align 4
  %34 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %35 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @mly_complete_rescan, align 4
  %39 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %40 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %42 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to %struct.mly_command_ioctl*
  store %struct.mly_command_ioctl* %45, %struct.mly_command_ioctl** %8, align 8
  %46 = load i32, i32* @MDACMD_IOCTL, align 4
  %47 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %48 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %50 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %54 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 30, i32* %55, align 4
  %56 = load i32, i32* @MLY_TIMEOUT_SECONDS, align 4
  %57 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %58 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @MLY_BUS_IS_VIRTUAL(%struct.mly_softc* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %32
  %65 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %66 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %65, i32 0, i32 0
  store i32 4, i32* %66, align 8
  %67 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %68 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %67, i32 0, i32 0
  store i32 4, i32* %68, align 8
  %69 = load i32, i32* @MDACIOCTL_GETLOGDEVINFOVALID, align 4
  %70 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %71 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @MLY_LOGDEV_ID(%struct.mly_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %77 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %81 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %119

86:                                               ; preds = %32
  %87 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %88 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %87, i32 0, i32 0
  store i32 4, i32* %88, align 8
  %89 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %90 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %89, i32 0, i32 0
  store i32 4, i32* %90, align 8
  %91 = load i32, i32* @MDACIOCTL_GETPHYSDEVINFOVALID, align 4
  %92 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %93 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %95 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %100 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %105 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  %108 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %109 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %8, align 8
  %114 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %117)
  br label %119

119:                                              ; preds = %86, %64
  %120 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %121 = call i64 @mly_start(%struct.mly_command* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %125 = call i32 @mly_release_command(%struct.mly_command* %124)
  br label %142

126:                                              ; preds = %119
  %127 = load i32, i32* @MLY_BTL_RESCAN, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %130 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %131, i64 %133
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %128
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %14, %19, %29, %126, %123
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLY_BUS_IS_VALID(%struct.mly_softc*, i32) #1

declare dso_local i64 @mly_alloc_command(%struct.mly_softc*, %struct.mly_command**) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @mly_release_command(%struct.mly_command*) #1

declare dso_local i64 @MLY_BUS_IS_VIRTUAL(%struct.mly_softc*, i32) #1

declare dso_local i32 @MLY_LOGDEV_ID(%struct.mly_softc*, i32, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i64 @mly_start(%struct.mly_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
