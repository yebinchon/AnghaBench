; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_v5_tryqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_v5_tryqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 }
%struct.mlx_command = type { i32* }

@MLX_V5_IDB_EMPTY = common dso_local global i32 0, align 4
@MLX_V5_IDB_HWMBOX_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*, %struct.mlx_command*)* @mlx_v5_tryqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_v5_tryqueue(%struct.mlx_softc* %0, %struct.mlx_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx_softc*, align 8
  %5 = alloca %struct.mlx_command*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %4, align 8
  store %struct.mlx_command* %1, %struct.mlx_command** %5, align 8
  %7 = call i32 @debug_called(i32 2)
  %8 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %9 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %8)
  %10 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %11 = call i32 @MLX_V5_GET_IDBR(%struct.mlx_softc* %10)
  %12 = load i32, i32* @MLX_V5_IDB_EMPTY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 13
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %23 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MLX_V5_PUT_MAILBOX(%struct.mlx_softc* %20, i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %35 = load i32, i32* @MLX_V5_IDB_HWMBOX_CMD, align 4
  %36 = call i32 @MLX_V5_PUT_IDBR(%struct.mlx_softc* %34, i32 %35)
  store i32 1, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V5_GET_IDBR(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V5_PUT_MAILBOX(%struct.mlx_softc*, i32, i32) #1

declare dso_local i32 @MLX_V5_PUT_IDBR(%struct.mlx_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
