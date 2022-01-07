; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_poll_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_poll_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i64, %struct.mlx_softc*, i32*, i32* }
%struct.mlx_softc = type { i32, i32 }

@MLX_STATUS_BUSY = common dso_local global i64 0, align 8
@mc_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"command failed - %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_command*)* @mlx_poll_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_poll_command(%struct.mlx_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx_command*, align 8
  %4 = alloca %struct.mlx_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx_command* %0, %struct.mlx_command** %3, align 8
  %7 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %8 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %7, i32 0, i32 1
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  store %struct.mlx_softc* %9, %struct.mlx_softc** %4, align 8
  %10 = call i32 @debug_called(i32 1)
  %11 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %12 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %11)
  %13 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %14 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %16 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %18 = call i32 @mlx_start(%struct.mlx_command* %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %25 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %24, i32 0, i32 1
  %26 = load %struct.mlx_softc*, %struct.mlx_softc** %25, align 8
  %27 = call i32 @mlx_done(%struct.mlx_softc* %26, i32 1)
  br label %28

28:                                               ; preds = %23
  %29 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %30 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MLX_STATUS_BUSY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = icmp slt i32 %35, 15000000
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i1 [ false, %28 ], [ %37, %34 ]
  br i1 %39, label %23, label %40

40:                                               ; preds = %38
  %41 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %42 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MLX_STATUS_BUSY, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %47, i32 0, i32 1
  %49 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %50 = load i32, i32* @mc_link, align 4
  %51 = call i32 @TAILQ_REMOVE(i32* %48, %struct.mlx_command* %49, i32 %50)
  store i32 0, i32* %2, align 4
  br label %60

52:                                               ; preds = %40
  %53 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %54 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %57 = call i32 @mlx_diagnose_command(%struct.mlx_command* %56)
  %58 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EIO, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %46, %20
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @mlx_start(%struct.mlx_command*) #1

declare dso_local i32 @mlx_done(%struct.mlx_softc*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mlx_command*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mlx_diagnose_command(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
