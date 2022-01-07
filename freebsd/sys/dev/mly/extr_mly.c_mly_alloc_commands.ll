; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_alloc_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_alloc_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32, i64, i64, %struct.mly_command*, i32, i32, %struct.TYPE_2__* }
%struct.mly_command = type { i32, i64, i64, i64, %struct.mly_softc* }
%struct.TYPE_2__ = type { i32 }

@MLY_MAX_COMMANDS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mly_alloc_commands_map = common dso_local global i32 0, align 4
@MLY_SLOT_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*)* @mly_alloc_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_alloc_commands(%struct.mly_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca %struct.mly_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %3, align 8
  %7 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %7, i32 0, i32 6
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 4, i32* %6, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @MLY_MAX_COMMANDS, align 4
  %14 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @min(i32 %13, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %24, i32 0, i32 2
  %26 = bitcast i64* %25 to i8**
  %27 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %28 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %28, i32 0, i32 4
  %30 = call i64 @bus_dmamem_alloc(i32 %23, i8** %26, i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %110

34:                                               ; preds = %20
  %35 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @mly_alloc_commands_map, align 4
  %49 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %50 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %51 = call i64 @bus_dmamap_load(i32 %37, i32 %40, i64 %43, i32 %47, i32 %48, %struct.mly_softc* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %2, align 4
  br label %110

55:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %106, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %56
  %61 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %61, i32 0, i32 3
  %63 = load %struct.mly_command*, %struct.mly_command** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %63, i64 %65
  store %struct.mly_command* %66, %struct.mly_command** %4, align 8
  %67 = load %struct.mly_command*, %struct.mly_command** %4, align 8
  %68 = call i32 @bzero(%struct.mly_command* %67, i32 40)
  %69 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %70 = load %struct.mly_command*, %struct.mly_command** %4, align 8
  %71 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %70, i32 0, i32 4
  store %struct.mly_softc* %69, %struct.mly_softc** %71, align 8
  %72 = load i64, i64* @MLY_SLOT_START, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load %struct.mly_command*, %struct.mly_command** %4, align 8
  %77 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  %78 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %79 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load %struct.mly_command*, %struct.mly_command** %4, align 8
  %85 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %87 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = add i64 %88, %91
  %93 = load %struct.mly_command*, %struct.mly_command** %4, align 8
  %94 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %96 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mly_command*, %struct.mly_command** %4, align 8
  %99 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %98, i32 0, i32 0
  %100 = call i32 @bus_dmamap_create(i32 %97, i32 0, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %60
  %103 = load %struct.mly_command*, %struct.mly_command** %4, align 8
  %104 = call i32 @mly_release_command(%struct.mly_command* %103)
  br label %105

105:                                              ; preds = %102, %60
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %56

109:                                              ; preds = %56
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %53, %32
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i64, i32, i32, %struct.mly_softc*, i32) #1

declare dso_local i32 @bzero(%struct.mly_command*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @mly_release_command(%struct.mly_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
