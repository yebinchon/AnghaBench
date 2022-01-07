; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 }
%struct.mlx_command = type { i64 }

@MLX_CMD_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FLUSH failed - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*)* @mlx_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_flush(%struct.mlx_softc* %0) #0 {
  %2 = alloca %struct.mlx_softc*, align 8
  %3 = alloca %struct.mlx_command*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %2, align 8
  %5 = call i32 @debug_called(i32 1)
  %6 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %7 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %6)
  store i32 1, i32* %4, align 4
  %8 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %9 = call %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc* %8)
  store %struct.mlx_command* %9, %struct.mlx_command** %3, align 8
  %10 = icmp eq %struct.mlx_command* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %14 = call i64 @mlx_getslot(%struct.mlx_command* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %38

17:                                               ; preds = %12
  %18 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %19 = load i32, i32* @MLX_CMD_FLUSH, align 4
  %20 = call i32 @mlx_make_type2(%struct.mlx_command* %18, i32 %19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %21 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %22 = call i64 @mlx_poll_command(%struct.mlx_command* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %38

25:                                               ; preds = %17
  %26 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %27 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %35 = call i32 @mlx_diagnose_command(%struct.mlx_command* %34)
  %36 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %30, %24, %16, %11
  %39 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %40 = icmp ne %struct.mlx_command* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %43 = call i32 @mlx_releasecmd(%struct.mlx_command* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc*) #1

declare dso_local i64 @mlx_getslot(%struct.mlx_command*) #1

declare dso_local i32 @mlx_make_type2(%struct.mlx_command*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx_poll_command(%struct.mlx_command*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mlx_diagnose_command(%struct.mlx_command*) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
