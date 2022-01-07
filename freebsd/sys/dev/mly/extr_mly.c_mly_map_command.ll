; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_map_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_map_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_command = type { i32, i32, i32, i32*, %struct.mly_softc* }
%struct.mly_softc = type { i32 }

@MLY_CMD_MAPPED = common dso_local global i32 0, align 4
@MLY_CMD_CCB = common dso_local global i32 0, align 4
@mly_map_command_sg = common dso_local global i32 0, align 4
@MLY_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@MLY_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_command*)* @mly_map_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_map_command(%struct.mly_command* %0) #0 {
  %2 = alloca %struct.mly_command*, align 8
  %3 = alloca %struct.mly_softc*, align 8
  store %struct.mly_command* %0, %struct.mly_command** %2, align 8
  %4 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %5 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %4, i32 0, i32 4
  %6 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  store %struct.mly_softc* %6, %struct.mly_softc** %3, align 8
  %7 = call i32 @debug_called(i32 2)
  %8 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %9 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MLY_CMD_MAPPED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %17 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %89

20:                                               ; preds = %15
  %21 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %22 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MLY_CMD_CCB, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %32 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %35 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @mly_map_command_sg, align 4
  %38 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %39 = call i32 @bus_dmamap_load_ccb(i32 %30, i32 %33, i32* %36, i32 %37, %struct.mly_command* %38, i32 0)
  br label %56

40:                                               ; preds = %20
  %41 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %45 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %48 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %51 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @mly_map_command_sg, align 4
  %54 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %55 = call i32 @bus_dmamap_load(i32 %43, i32 %46, i32* %49, i32 %52, i32 %53, %struct.mly_command* %54, i32 0)
  br label %56

56:                                               ; preds = %40, %27
  %57 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %58 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MLY_CMD_DATAIN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %65 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %68 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %71 = call i32 @bus_dmamap_sync(i32 %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %56
  %73 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %74 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MLY_CMD_DATAOUT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %81 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %84 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %87 = call i32 @bus_dmamap_sync(i32 %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %72
  br label %89

89:                                               ; preds = %88, %15
  %90 = load i32, i32* @MLY_CMD_MAPPED, align 4
  %91 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %92 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %14
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, i32*, i32, %struct.mly_command*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.mly_command*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
