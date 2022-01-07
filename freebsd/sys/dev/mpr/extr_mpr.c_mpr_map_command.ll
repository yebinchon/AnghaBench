; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_map_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_map_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.mpr_command = type { i32, i64, i32*, i32*, i32, i32 }

@MPR_CM_FLAGS_USE_UIO = common dso_local global i32 0, align 4
@mpr_data_cb2 = common dso_local global i32 0, align 4
@MPR_CM_FLAGS_USE_CCB = common dso_local global i32 0, align 4
@mpr_data_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpr_map_command(%struct.mpr_softc* %0, %struct.mpr_command* %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct.mpr_command*, align 8
  %5 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store %struct.mpr_command* %1, %struct.mpr_command** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %7 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MPR_CM_FLAGS_USE_UIO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %17 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %20 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %19, i32 0, i32 5
  %21 = load i32, i32* @mpr_data_cb2, align 4
  %22 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %23 = call i32 @bus_dmamap_load_uio(i32 %15, i32 %18, i32* %20, i32 %21, %struct.mpr_command* %22, i32 0)
  store i32 %23, i32* %5, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %26 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MPR_CM_FLAGS_USE_CCB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %36 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %39 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @mpr_data_cb, align 4
  %42 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %43 = call i32 @bus_dmamap_load_ccb(i32 %34, i32 %37, i32* %40, i32 %41, %struct.mpr_command* %42, i32 0)
  store i32 %43, i32* %5, align 4
  br label %83

44:                                               ; preds = %24
  %45 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %46 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %51 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %59 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %62 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %65 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @mpr_data_cb, align 4
  %68 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %69 = call i32 @bus_dmamap_load(i32 %57, i32 %60, i32* %63, i64 %66, i32 %67, %struct.mpr_command* %68, i32 0)
  store i32 %69, i32* %5, align 4
  br label %82

70:                                               ; preds = %49, %44
  %71 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %72 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %77 = call i32 @mpr_add_dmaseg(%struct.mpr_command* %76, i32 0, i32 0, i32 0, i32 1)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %80 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %81 = call i32 @mpr_enqueue_request(%struct.mpr_softc* %79, %struct.mpr_command* %80)
  br label %82

82:                                               ; preds = %78, %54
  br label %83

83:                                               ; preds = %82, %31
  br label %84

84:                                               ; preds = %83, %12
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @bus_dmamap_load_uio(i32, i32, i32*, i32, %struct.mpr_command*, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, i32*, i32, %struct.mpr_command*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i64, i32, %struct.mpr_command*, i32) #1

declare dso_local i32 @mpr_add_dmaseg(%struct.mpr_command*, i32, i32, i32, i32) #1

declare dso_local i32 @mpr_enqueue_request(%struct.mpr_softc*, %struct.mpr_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
