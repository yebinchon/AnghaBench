; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_unmap_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_unmap_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_command = type { i32, i32, i32*, %struct.mly_softc* }
%struct.mly_softc = type { i32 }

@MLY_CMD_MAPPED = common dso_local global i32 0, align 4
@MLY_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MLY_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_command*)* @mly_unmap_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_unmap_command(%struct.mly_command* %0) #0 {
  %2 = alloca %struct.mly_command*, align 8
  %3 = alloca %struct.mly_softc*, align 8
  store %struct.mly_command* %0, %struct.mly_command** %2, align 8
  %4 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %5 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %4, i32 0, i32 3
  %6 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  store %struct.mly_softc* %6, %struct.mly_softc** %3, align 8
  %7 = call i32 @debug_called(i32 2)
  %8 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %9 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MLY_CMD_MAPPED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %17 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %15
  %21 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %22 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MLY_CMD_DATAIN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %32 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %35 = call i32 @bus_dmamap_sync(i32 %30, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %20
  %37 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %38 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MLY_CMD_DATAOUT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %48 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %51 = call i32 @bus_dmamap_sync(i32 %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %36
  %53 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %57 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bus_dmamap_unload(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %52, %15
  %61 = load i32, i32* @MLY_CMD_MAPPED, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %64 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %60, %14
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
