; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuda_softc = type { i32 }

@CUDA_PSEUDO = common dso_local global i32 0, align 4
@RB_HALT = common dso_local global i32 0, align 4
@CMD_POWEROFF = common dso_local global i32 0, align 4
@CMD_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @cuda_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuda_shutdown(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cuda_softc*, align 8
  %6 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.cuda_softc*
  store %struct.cuda_softc* %8, %struct.cuda_softc** %5, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* @CUDA_PSEUDO, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RB_HALT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @CMD_POWEROFF, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @CMD_RESET, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.cuda_softc*, %struct.cuda_softc** %5, align 8
  %24 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cuda_poll(i32 %25)
  %27 = load %struct.cuda_softc*, %struct.cuda_softc** %5, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %29 = call i32 @cuda_send(%struct.cuda_softc* %27, i32 1, i32 2, i32* %28)
  br label %30

30:                                               ; preds = %20, %30
  %31 = load %struct.cuda_softc*, %struct.cuda_softc** %5, align 8
  %32 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cuda_poll(i32 %33)
  br label %30
}

declare dso_local i32 @cuda_poll(i32) #1

declare dso_local i32 @cuda_send(%struct.cuda_softc*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
