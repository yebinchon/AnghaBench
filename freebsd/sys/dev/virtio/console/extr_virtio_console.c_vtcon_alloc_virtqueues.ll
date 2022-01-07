; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_alloc_virtqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_alloc_virtqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32, i32, %struct.vtcon_softc_port*, i32, i32, i32 }
%struct.vtcon_softc_port = type { i32, i32 }
%struct.vq_alloc_info = type { i32 }

@VTCON_FLAG_MULTIPORT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vtcon_ctrl_event_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s-control rx\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s-control tx\00", align 1
@vtcon_port_intr = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%s-port%d in\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s-port%d out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtcon_softc*)* @vtcon_alloc_virtqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtcon_alloc_virtqueues(%struct.vtcon_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtcon_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vq_alloc_info*, align 8
  %6 = alloca %struct.vtcon_softc_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %3, align 8
  %12 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %10, align 4
  %19 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %20 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VTCON_FLAG_MULTIPORT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %25, %1
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @M_TEMP, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call %struct.vq_alloc_info* @malloc(i32 %32, i32 %33, i32 %34)
  store %struct.vq_alloc_info* %35, %struct.vq_alloc_info** %5, align 8
  %36 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %5, align 8
  %37 = icmp eq %struct.vq_alloc_info* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %120

40:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %106, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sdiv i32 %43, 2
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %111

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %50, i64 %52
  %54 = load i32, i32* @vtcon_ctrl_event_intr, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %58 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %59 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %58, i32 0, i32 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @device_get_nameunit(i32 %60)
  %62 = call i32 (%struct.vq_alloc_info*, i32, i32*, ...) @VQ_ALLOC_INFO_INIT(%struct.vq_alloc_info* %53, i32 0, i32* %56, %struct.vtcon_softc* %57, i32* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %63, i64 %66
  %68 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %69 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %70 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @device_get_nameunit(i32 %71)
  %73 = call i32 (%struct.vq_alloc_info*, i32, i32*, ...) @VQ_ALLOC_INFO_INIT(%struct.vq_alloc_info* %67, i32 0, i32* null, %struct.vtcon_softc* %68, i32* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %106

74:                                               ; preds = %46
  %75 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %76 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %75, i32 0, i32 2
  %77 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %77, i64 %79
  store %struct.vtcon_softc_port* %80, %struct.vtcon_softc_port** %6, align 8
  %81 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %81, i64 %83
  %85 = load i32*, i32** @vtcon_port_intr, align 8
  %86 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %6, align 8
  %87 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %6, align 8
  %88 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %87, i32 0, i32 1
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @device_get_nameunit(i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (%struct.vq_alloc_info*, i32, i32*, ...) @VQ_ALLOC_INFO_INIT(%struct.vq_alloc_info* %84, i32 0, i32* %85, %struct.vtcon_softc_port* %86, i32* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %93, i64 %96
  %98 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %6, align 8
  %99 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %98, i32 0, i32 0
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @device_get_nameunit(i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (%struct.vq_alloc_info*, i32, i32*, ...) @VQ_ALLOC_INFO_INIT(%struct.vq_alloc_info* %97, i32 0, i32* null, i8* null, i32* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %74, %49
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %8, align 4
  br label %41

111:                                              ; preds = %41
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %5, align 8
  %115 = call i32 @virtio_alloc_virtqueues(i32 %112, i32 0, i32 %113, %struct.vq_alloc_info* %114)
  store i32 %115, i32* %11, align 4
  %116 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %5, align 8
  %117 = load i32, i32* @M_TEMP, align 4
  %118 = call i32 @free(%struct.vq_alloc_info* %116, i32 %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %111, %38
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.vq_alloc_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @VQ_ALLOC_INFO_INIT(%struct.vq_alloc_info*, i32, i32*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @virtio_alloc_virtqueues(i32, i32, i32, %struct.vq_alloc_info*) #1

declare dso_local i32 @free(%struct.vq_alloc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
