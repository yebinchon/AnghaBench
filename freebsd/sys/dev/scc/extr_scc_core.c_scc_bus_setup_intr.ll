; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.scc_chan = type { i32, i32* }
%struct.scc_mode = type { i32, i32, i32*, i32**, i8* }
%struct.scc_softc = type { %struct.scc_chan*, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@scc_bfe_intr = common dso_local global i64 0, align 8
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@SCC_ISRCCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scc_bus_setup_intr(i64 %0, i64 %1, %struct.resource* %2, i32 %3, i32* %4, void (i8*)* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca void (i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.scc_chan*, align 8
  %19 = alloca %struct.scc_mode*, align 8
  %20 = alloca %struct.scc_softc*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store void (i8*)* %5, void (i8*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @device_get_parent(i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %9, align 4
  br label %163

30:                                               ; preds = %8
  %31 = load i32*, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @INTR_MPSAFE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %9, align 4
  br label %163

40:                                               ; preds = %33, %30
  %41 = load i64, i64* %10, align 8
  %42 = call %struct.scc_softc* @device_get_softc(i64 %41)
  store %struct.scc_softc* %42, %struct.scc_softc** %20, align 8
  %43 = load %struct.scc_softc*, %struct.scc_softc** %20, align 8
  %44 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %9, align 4
  br label %163

49:                                               ; preds = %40
  %50 = load %struct.scc_softc*, %struct.scc_softc** %20, align 8
  %51 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %49
  %55 = load i32*, i32** %14, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %106

57:                                               ; preds = %54
  %58 = load %struct.scc_softc*, %struct.scc_softc** %20, align 8
  %59 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  store i32 0, i32* %21, align 4
  br label %60

60:                                               ; preds = %102, %57
  %61 = load i32, i32* %21, align 4
  %62 = load %struct.scc_softc*, %struct.scc_softc** %20, align 8
  %63 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %60
  %69 = load %struct.scc_softc*, %struct.scc_softc** %20, align 8
  %70 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %69, i32 0, i32 0
  %71 = load %struct.scc_chan*, %struct.scc_chan** %70, align 8
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %71, i64 %73
  store %struct.scc_chan* %74, %struct.scc_chan** %18, align 8
  %75 = load %struct.scc_chan*, %struct.scc_chan** %18, align 8
  %76 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %102

80:                                               ; preds = %68
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.scc_chan*, %struct.scc_chan** %18, align 8
  %83 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.scc_chan*, %struct.scc_chan** %18, align 8
  %86 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bus_teardown_intr(i64 %81, i32* %84, i32 %87)
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.scc_chan*, %struct.scc_chan** %18, align 8
  %91 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @INTR_TYPE_TTY, align 4
  %94 = load i32, i32* @INTR_MPSAFE, align 4
  %95 = or i32 %93, %94
  %96 = load i64, i64* @scc_bfe_intr, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load %struct.scc_softc*, %struct.scc_softc** %20, align 8
  %99 = load %struct.scc_chan*, %struct.scc_chan** %18, align 8
  %100 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %99, i32 0, i32 0
  %101 = call i32 @bus_setup_intr(i64 %89, i32* %92, i32 %95, i32* null, i32* %97, %struct.scc_softc* %98, i32* %100)
  br label %102

102:                                              ; preds = %80, %79
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %21, align 4
  br label %60

105:                                              ; preds = %60
  br label %106

106:                                              ; preds = %105, %54, %49
  %107 = load i64, i64* %11, align 8
  %108 = call %struct.scc_mode* @device_get_ivars(i64 %107)
  store %struct.scc_mode* %108, %struct.scc_mode** %19, align 8
  %109 = load %struct.scc_mode*, %struct.scc_mode** %19, align 8
  %110 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = icmp ne i32* %111, null
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  %115 = load %struct.scc_mode*, %struct.scc_mode** %19, align 8
  %116 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %14, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load i32*, i32** %14, align 8
  br label %124

121:                                              ; preds = %106
  %122 = load void (i8*)*, void (i8*)** %15, align 8
  %123 = bitcast void (i8*)* %122 to i32*
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi i32* [ %120, %119 ], [ %123, %121 ]
  %126 = load %struct.scc_mode*, %struct.scc_mode** %19, align 8
  %127 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = load %struct.scc_mode*, %struct.scc_mode** %19, align 8
  %130 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  store i32 0, i32* %22, align 4
  %131 = load i32, i32* @SER_INT_OVERRUN, align 4
  store i32 %131, i32* %23, align 4
  br label %132

132:                                              ; preds = %157, %124
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* @SCC_ISRCCNT, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %162

136:                                              ; preds = %132
  %137 = load i64, i64* %11, align 8
  %138 = load i32, i32* %23, align 4
  %139 = call i32* @SERDEV_IHAND(i64 %137, i32 %138)
  %140 = load %struct.scc_mode*, %struct.scc_mode** %19, align 8
  %141 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %140, i32 0, i32 3
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  store i32* %139, i32** %145, align 8
  %146 = load %struct.scc_mode*, %struct.scc_mode** %19, align 8
  %147 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %146, i32 0, i32 3
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %136
  %155 = load %struct.scc_mode*, %struct.scc_mode** %19, align 8
  %156 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %155, i32 0, i32 2
  store i32* null, i32** %156, align 8
  br label %157

157:                                              ; preds = %154, %136
  %158 = load i32, i32* %22, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %22, align 4
  %160 = load i32, i32* %23, align 4
  %161 = shl i32 %160, 1
  store i32 %161, i32* %23, align 4
  br label %132

162:                                              ; preds = %132
  store i32 0, i32* %9, align 4
  br label %163

163:                                              ; preds = %162, %47, %38, %28
  %164 = load i32, i32* %9, align 4
  ret i32 %164
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.scc_softc* @device_get_softc(i64) #1

declare dso_local i32 @bus_teardown_intr(i64, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i64, i32*, i32, i32*, i32*, %struct.scc_softc*, i32*) #1

declare dso_local %struct.scc_mode* @device_get_ivars(i64) #1

declare dso_local i32* @SERDEV_IHAND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
