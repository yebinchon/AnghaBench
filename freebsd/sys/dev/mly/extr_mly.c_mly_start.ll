; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_command = type { %struct.TYPE_10__*, i32, i32, i32, i32, %struct.mly_softc* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mly_softc = type { i32, i64, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %union.mly_command_packet* }
%union.mly_command_packet = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@MLY_STATE_MMBOX_ACTIVE = common dso_local global i32 0, align 4
@MLY_HM_CMDSENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MLY_CMD_BUSY = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@MLY_AM_CMDSENT = common dso_local global i32 0, align 4
@MLY_MMBOX_COMMANDS = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_command*)* @mly_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_start(%struct.mly_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mly_command*, align 8
  %4 = alloca %struct.mly_softc*, align 8
  %5 = alloca %union.mly_command_packet*, align 8
  store %struct.mly_command* %0, %struct.mly_command** %3, align 8
  %6 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %7 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %6, i32 0, i32 5
  %8 = load %struct.mly_softc*, %struct.mly_softc** %7, align 8
  store %struct.mly_softc* %8, %struct.mly_softc** %4, align 8
  %9 = call i32 @debug_called(i32 2)
  %10 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %11 = call i32 @MLY_ASSERT_LOCKED(%struct.mly_softc* %10)
  %12 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %13 = call i32 @mly_map_command(%struct.mly_command* %12)
  %14 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %15 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %18 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 8
  %22 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %23 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MLY_STATE_MMBOX_ACTIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %1
  %29 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %30 = load i32, i32* @MLY_HM_CMDSENT, align 4
  %31 = call i64 @MLY_IDBR_TRUE(%struct.mly_softc* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @EBUSY, align 4
  store i32 %34, i32* %2, align 4
  br label %125

35:                                               ; preds = %28
  %36 = load i32, i32* @MLY_CMD_BUSY, align 4
  %37 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %38 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %42 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %46 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %45, i32 0, i32 2
  %47 = call i32 @MLY_SET_MBOX(%struct.mly_softc* %41, i32 %44, i32* %46)
  %48 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %49 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %50 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MLY_HM_CMDSENT, align 4
  %53 = call i32 @MLY_SET_REG(%struct.mly_softc* %48, i32 %51, i32 %52)
  br label %122

54:                                               ; preds = %1
  %55 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %56 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %55, i32 0, i32 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %union.mly_command_packet*, %union.mly_command_packet** %58, align 8
  %60 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %union.mly_command_packet, %union.mly_command_packet* %59, i64 %62
  store %union.mly_command_packet* %63, %union.mly_command_packet** %5, align 8
  %64 = load %union.mly_command_packet*, %union.mly_command_packet** %5, align 8
  %65 = bitcast %union.mly_command_packet* %64 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = load i32, i32* @EBUSY, align 4
  store i32 %70, i32* %2, align 4
  br label %125

71:                                               ; preds = %54
  %72 = load i32, i32* @MLY_CMD_BUSY, align 4
  %73 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %74 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %78 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %union.mly_command_packet*, %union.mly_command_packet** %5, align 8
  %84 = bitcast %union.mly_command_packet* %83 to %struct.TYPE_8__*
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @bcopy(i32 %82, i32 %86, i32 4)
  %88 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %89 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %92 = call i32 @bus_barrier(i32 %90, i32 0, i32 0, i32 %91)
  %93 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %94 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %union.mly_command_packet*, %union.mly_command_packet** %5, align 8
  %100 = bitcast %union.mly_command_packet* %99 to %struct.TYPE_8__*
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %103 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %106 = call i32 @bus_barrier(i32 %104, i32 0, i32 0, i32 %105)
  %107 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %108 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %109 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MLY_AM_CMDSENT, align 4
  %112 = call i32 @MLY_SET_REG(%struct.mly_softc* %107, i32 %110, i32 %111)
  %113 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %114 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  %117 = load i32, i32* @MLY_MMBOX_COMMANDS, align 4
  %118 = sext i32 %117 to i64
  %119 = urem i64 %116, %118
  %120 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %121 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %71, %35
  %123 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %124 = call i32 @mly_enqueue_busy(%struct.mly_command* %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %122, %69, %33
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLY_ASSERT_LOCKED(%struct.mly_softc*) #1

declare dso_local i32 @mly_map_command(%struct.mly_command*) #1

declare dso_local i64 @MLY_IDBR_TRUE(%struct.mly_softc*, i32) #1

declare dso_local i32 @MLY_SET_MBOX(%struct.mly_softc*, i32, i32*) #1

declare dso_local i32 @MLY_SET_REG(%struct.mly_softc*, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i32 @mly_enqueue_busy(%struct.mly_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
