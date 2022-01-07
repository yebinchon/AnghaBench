; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bfe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bfe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_chan = type { i32*, i32, i32, %struct.scc_mode* }
%struct.scc_mode = type { i64, i32 }
%struct.scc_class = type { i32 }
%struct.scc_softc = type { i32, %struct.scc_chan*, i32*, i32, i32, %struct.scc_class* }

@SCC_NMODES = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_SCC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scc_bfe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.scc_chan*, align 8
  %5 = alloca %struct.scc_class*, align 8
  %6 = alloca %struct.scc_mode*, align 8
  %7 = alloca %struct.scc_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.scc_softc* @device_get_softc(i32 %11)
  store %struct.scc_softc* %12, %struct.scc_softc** %7, align 8
  %13 = load %struct.scc_softc*, %struct.scc_softc** %7, align 8
  %14 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %13, i32 0, i32 5
  %15 = load %struct.scc_class*, %struct.scc_class** %14, align 8
  store %struct.scc_class* %15, %struct.scc_class** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %61, %1
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.scc_class*, %struct.scc_class** %5, align 8
  %19 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %16
  %23 = load %struct.scc_softc*, %struct.scc_softc** %7, align 8
  %24 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %23, i32 0, i32 1
  %25 = load %struct.scc_chan*, %struct.scc_chan** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %25, i64 %27
  store %struct.scc_chan* %28, %struct.scc_chan** %4, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %57, %22
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SCC_NMODES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %35 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %34, i32 0, i32 3
  %36 = load %struct.scc_mode*, %struct.scc_mode** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %36, i64 %38
  store %struct.scc_mode* %39, %struct.scc_mode** %6, align 8
  %40 = load %struct.scc_mode*, %struct.scc_mode** %6, align 8
  %41 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %57

45:                                               ; preds = %33
  %46 = load %struct.scc_mode*, %struct.scc_mode** %6, align 8
  %47 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @device_detach(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %9, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load %struct.scc_mode*, %struct.scc_mode** %6, align 8
  %55 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %51
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %29

60:                                               ; preds = %29
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %129

69:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %106, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.scc_class*, %struct.scc_class** %5, align 8
  %73 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %70
  %77 = load %struct.scc_softc*, %struct.scc_softc** %7, align 8
  %78 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %77, i32 0, i32 1
  %79 = load %struct.scc_chan*, %struct.scc_chan** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %79, i64 %81
  store %struct.scc_chan* %82, %struct.scc_chan** %4, align 8
  %83 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %84 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %106

88:                                               ; preds = %76
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %91 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %94 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @bus_teardown_intr(i32 %89, i32* %92, i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @SYS_RES_IRQ, align 4
  %99 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %100 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %103 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @bus_release_resource(i32 %97, i32 %98, i32 %101, i32* %104)
  br label %106

106:                                              ; preds = %88, %87
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %70

109:                                              ; preds = %70
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.scc_softc*, %struct.scc_softc** %7, align 8
  %112 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.scc_softc*, %struct.scc_softc** %7, align 8
  %115 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.scc_softc*, %struct.scc_softc** %7, align 8
  %118 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @bus_release_resource(i32 %110, i32 %113, i32 %116, i32* %119)
  %121 = load %struct.scc_softc*, %struct.scc_softc** %7, align 8
  %122 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %121, i32 0, i32 1
  %123 = load %struct.scc_chan*, %struct.scc_chan** %122, align 8
  %124 = load i32, i32* @M_SCC, align 4
  %125 = call i32 @free(%struct.scc_chan* %123, i32 %124)
  %126 = load %struct.scc_softc*, %struct.scc_softc** %7, align 8
  %127 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %126, i32 0, i32 0
  %128 = call i32 @mtx_destroy(i32* %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %109, %67
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.scc_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.scc_chan*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
