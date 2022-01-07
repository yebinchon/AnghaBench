; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuda_softc = type { i64, i64, i32, i64, i32, i32, i32 }
%struct.cuda_packet = type { i32, i32, i32 }

@CUDA_NOTREADY = common dso_local global i64 0, align 8
@pkt_q = common dso_local global i32 0, align 4
@cold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*)* @cuda_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuda_send(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cuda_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cuda_packet*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.cuda_softc*
  store %struct.cuda_softc* %14, %struct.cuda_softc** %10, align 8
  %15 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %16 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %19 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CUDA_NOTREADY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %93

24:                                               ; preds = %4
  %25 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %26 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %25, i32 0, i32 2
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %29 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %28, i32 0, i32 5
  %30 = call %struct.cuda_packet* @STAILQ_FIRST(i32* %29)
  store %struct.cuda_packet* %30, %struct.cuda_packet** %12, align 8
  %31 = load %struct.cuda_packet*, %struct.cuda_packet** %12, align 8
  %32 = icmp eq %struct.cuda_packet* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %35 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %34, i32 0, i32 2
  %36 = call i32 @mtx_unlock(i32* %35)
  store i32 -1, i32* %5, align 4
  br label %93

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.cuda_packet*, %struct.cuda_packet** %12, align 8
  %41 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cuda_packet*, %struct.cuda_packet** %12, align 8
  %46 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cuda_packet*, %struct.cuda_packet** %12, align 8
  %48 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load %struct.cuda_packet*, %struct.cuda_packet** %12, align 8
  %53 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32 %49, i32* %51, i32 %54)
  %56 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %57 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %56, i32 0, i32 5
  %58 = load i32, i32* @pkt_q, align 4
  %59 = call i32 @STAILQ_REMOVE_HEAD(i32* %57, i32 %58)
  %60 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %61 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %60, i32 0, i32 4
  %62 = load %struct.cuda_packet*, %struct.cuda_packet** %12, align 8
  %63 = load i32, i32* @pkt_q, align 4
  %64 = call i32 @STAILQ_INSERT_TAIL(i32* %61, %struct.cuda_packet* %62, i32 %63)
  %65 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %66 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %37
  %70 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %71 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %70, i32 0, i32 2
  %72 = call i32 @mtx_unlock(i32* %71)
  store i32 0, i32* %5, align 4
  br label %93

73:                                               ; preds = %37
  %74 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %75 = call i32 @cuda_send_outbound(%struct.cuda_softc* %74)
  %76 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %77 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %76, i32 0, i32 2
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load %struct.cuda_softc*, %struct.cuda_softc** %10, align 8
  %80 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @cold, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %83, %73
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @cuda_poll(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %69, %33, %23
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.cuda_packet* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cuda_packet*, i32) #1

declare dso_local i32 @cuda_send_outbound(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
