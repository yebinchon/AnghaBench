; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_wait_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_wait_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i64, %struct.mlx_command*, i32*, %struct.mlx_softc* }
%struct.mlx_softc = type { i32, i32 }

@MLX_STATUS_BUSY = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mlxwcmd\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"command failed - %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_command*)* @mlx_wait_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_wait_command(%struct.mlx_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx_command*, align 8
  %4 = alloca %struct.mlx_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx_command* %0, %struct.mlx_command** %3, align 8
  %7 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %8 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %7, i32 0, i32 3
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  store %struct.mlx_softc* %9, %struct.mlx_softc** %4, align 8
  %10 = call i32 @debug_called(i32 1)
  %11 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %12 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %11)
  %13 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %14 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %16 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %17 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %16, i32 0, i32 1
  store %struct.mlx_command* %15, %struct.mlx_command** %17, align 8
  %18 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %19 = call i32 @mlx_start(%struct.mlx_command* %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %35, %23
  %25 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %26 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MLX_STATUS_BUSY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 30
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i1 [ false, %24 ], [ %32, %30 ]
  br i1 %34, label %35, label %46

35:                                               ; preds = %33
  %36 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %37 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %36, i32 0, i32 1
  %38 = load %struct.mlx_command*, %struct.mlx_command** %37, align 8
  %39 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %40 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %39, i32 0, i32 1
  %41 = load i32, i32* @PRIBIO, align 4
  %42 = load i32, i32* @PCATCH, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @hz, align 4
  %45 = call i32 @mtx_sleep(%struct.mlx_command* %38, i32* %40, i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %24

46:                                               ; preds = %33
  %47 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %48 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %56 = call i32 @mlx_diagnose_command(%struct.mlx_command* %55)
  %57 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EIO, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %51, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @mlx_start(%struct.mlx_command*) #1

declare dso_local i32 @mtx_sleep(%struct.mlx_command*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mlx_diagnose_command(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
