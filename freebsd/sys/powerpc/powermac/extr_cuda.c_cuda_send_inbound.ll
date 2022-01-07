; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_send_inbound.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_send_inbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuda_softc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cuda_packet = type { i32, i32, i32* }

@pkt_q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown CUDA command %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cuda_softc*)* @cuda_send_inbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuda_send_inbound(%struct.cuda_softc* %0) #0 {
  %2 = alloca %struct.cuda_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cuda_packet*, align 8
  store %struct.cuda_softc* %0, %struct.cuda_softc** %2, align 8
  %5 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %6 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %9 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %8, i32 0, i32 1
  %10 = call i32 @mtx_lock(i32* %9)
  br label %11

11:                                               ; preds = %106, %1
  %12 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %13 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %12, i32 0, i32 5
  %14 = call %struct.cuda_packet* @STAILQ_FIRST(i32* %13)
  store %struct.cuda_packet* %14, %struct.cuda_packet** %4, align 8
  %15 = icmp ne %struct.cuda_packet* %14, null
  br i1 %15, label %16, label %115

16:                                               ; preds = %11
  %17 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %18 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %17, i32 0, i32 5
  %19 = load i32, i32* @pkt_q, align 4
  %20 = call i32 @STAILQ_REMOVE_HEAD(i32* %18, i32 %19)
  %21 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %22 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %21, i32 0, i32 1
  %23 = call i32 @mtx_unlock(i32* %22)
  %24 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %25 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %100 [
    i32 130, label %27
    i32 128, label %71
    i32 129, label %99
  ]

27:                                               ; preds = %16
  %28 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %29 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %34 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %37 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %42 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %47 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 2
  %50 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %51 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = call i32 @adb_receive_raw_packet(i32 %35, i32 %40, i32 %45, i32 %49, i32* %53)
  br label %70

55:                                               ; preds = %27
  %56 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %57 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %60 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %65 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @adb_receive_raw_packet(i32 %58, i32 %63, i32 %68, i32 0, i32* null)
  br label %70

70:                                               ; preds = %55, %32
  br label %106

71:                                               ; preds = %16
  %72 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %73 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %72, i32 0, i32 1
  %74 = call i32 @mtx_lock(i32* %73)
  %75 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %76 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %95 [
    i32 133, label %80
    i32 132, label %83
    i32 131, label %94
  ]

80:                                               ; preds = %71
  %81 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %82 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  br label %95

83:                                               ; preds = %71
  %84 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %85 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %84, i32 0, i32 3
  %86 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %87 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = call i32 @memcpy(i32* %85, i32* %89, i32 4)
  %91 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %92 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %91, i32 0, i32 3
  %93 = call i32 @wakeup(i32* %92)
  br label %95

94:                                               ; preds = %71
  br label %95

95:                                               ; preds = %71, %94, %83, %80
  %96 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %97 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %96, i32 0, i32 1
  %98 = call i32 @mtx_unlock(i32* %97)
  br label %106

99:                                               ; preds = %16
  br label %106

100:                                              ; preds = %16
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %103 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %99, %95, %70
  %107 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %108 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %107, i32 0, i32 1
  %109 = call i32 @mtx_lock(i32* %108)
  %110 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %111 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %110, i32 0, i32 2
  %112 = load %struct.cuda_packet*, %struct.cuda_packet** %4, align 8
  %113 = load i32, i32* @pkt_q, align 4
  %114 = call i32 @STAILQ_INSERT_TAIL(i32* %111, %struct.cuda_packet* %112, i32 %113)
  br label %11

115:                                              ; preds = %11
  %116 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %117 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %116, i32 0, i32 1
  %118 = call i32 @mtx_unlock(i32* %117)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.cuda_packet* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @adb_receive_raw_packet(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cuda_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
