; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_send_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i64, i64, i64, i64, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"WARNING!!!! mtx not owned!!!!\0A\00", align 1
@HDA_CMD_CAD_MASK = common dso_local global i32 0, align 4
@HDA_CMD_CAD_SHIFT = common dso_local global i32 0, align 4
@HDA_INVALID = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@HDAC_CORBWP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Command timeout on address %d\0A\00", align 1
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_softc*, i64, i32)* @hdac_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_send_command(%struct.hdac_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.hdac_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.hdac_softc* %0, %struct.hdac_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %10 = call i32 @hdac_lockowned(%struct.hdac_softc* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %14 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @device_printf(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @HDA_CMD_CAD_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @HDA_CMD_CAD_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @HDA_INVALID, align 4
  %29 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %30 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %28, i32* %34, align 8
  %35 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %36 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %44 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %48 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %51 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = urem i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %55 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %8, align 8
  %59 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %60 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %64 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %68 = call i32 @bus_dmamap_sync(i32 %62, i32 %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @htole32(i32 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %73 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %77 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %81 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %85 = call i32 @bus_dmamap_sync(i32 %79, i32 %83, i32 %84)
  %86 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %87 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %86, i32 0, i32 7
  %88 = load i32, i32* @HDAC_CORBWP, align 4
  %89 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %90 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @HDAC_WRITE_2(i32* %87, i32 %88, i64 %91)
  store i32 10000, i32* %7, align 4
  br label %93

93:                                               ; preds = %113, %17
  %94 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %95 = call i64 @hdac_rirb_flush(%struct.hdac_softc* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 @DELAY(i32 10)
  br label %99

99:                                               ; preds = %97, %93
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %102 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %101, i32 0, i32 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %109, %100
  %114 = phi i1 [ false, %100 ], [ %112, %109 ]
  br i1 %114, label %93, label %115

115:                                              ; preds = %113
  %116 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %117 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %116, i32 0, i32 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %115
  %125 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %126 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %5, align 8
  %129 = call i32 (i32, i8*, ...) @device_printf(i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  %130 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %131 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %130, i32 0, i32 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %124, %115
  %137 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %138 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %141 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %139, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load i32, i32* @taskqueue_thread, align 4
  %146 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %147 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %146, i32 0, i32 5
  %148 = call i32 @taskqueue_enqueue(i32 %145, i32* %147)
  br label %149

149:                                              ; preds = %144, %136
  %150 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %151 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %150, i32 0, i32 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i64, i64* %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  ret i32 %156
}

declare dso_local i32 @hdac_lockowned(%struct.hdac_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @HDAC_WRITE_2(i32*, i32, i64) #1

declare dso_local i64 @hdac_rirb_flush(%struct.hdac_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
