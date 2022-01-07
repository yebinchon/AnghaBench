; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_adb_autopoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_adb_autopoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuda_softc = type { i32, i32 }

@CUDA_PSEUDO = common dso_local global i32 0, align 4
@CMD_AUTOPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cuda_adb_autopoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuda_adb_autopoll(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cuda_softc*, align 8
  %7 = alloca [3 x i32], align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.cuda_softc* @device_get_softc(i32 %8)
  store %struct.cuda_softc* %9, %struct.cuda_softc** %6, align 8
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %11 = load i32, i32* @CUDA_PSEUDO, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @CMD_AUTOPOLL, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %14, align 4
  %18 = load %struct.cuda_softc*, %struct.cuda_softc** %6, align 8
  %19 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %18, i32 0, i32 1
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cuda_softc*, %struct.cuda_softc** %6, align 8
  %24 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.cuda_softc*, %struct.cuda_softc** %6, align 8
  %29 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %28, i32 0, i32 1
  %30 = call i32 @mtx_unlock(i32* %29)
  store i32 0, i32* %3, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.cuda_softc*, %struct.cuda_softc** %6, align 8
  %33 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  %34 = load %struct.cuda_softc*, %struct.cuda_softc** %6, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %36 = call i32 @cuda_send(%struct.cuda_softc* %34, i32 1, i32 3, i32* %35)
  %37 = load %struct.cuda_softc*, %struct.cuda_softc** %6, align 8
  %38 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %37, i32 0, i32 1
  %39 = call i32 @mtx_unlock(i32* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.cuda_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cuda_send(%struct.cuda_softc*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
