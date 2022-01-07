; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_rebuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 }
%struct.mlx_command = type { i32 }

@MLX_CMD_REBUILDASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"REBUILD ASYNC failed - %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"drive rebuild started for %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*, i32, i32)* @mlx_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_rebuild(%struct.mlx_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx_command*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @debug_called(i32 1)
  %10 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %11 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %10)
  store i32 65536, i32* %8, align 4
  %12 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %13 = call %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc* %12)
  store %struct.mlx_command* %13, %struct.mlx_command** %7, align 8
  %14 = icmp eq %struct.mlx_command* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %54

16:                                               ; preds = %3
  %17 = load %struct.mlx_command*, %struct.mlx_command** %7, align 8
  %18 = call i64 @mlx_getslot(%struct.mlx_command* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %54

21:                                               ; preds = %16
  %22 = load %struct.mlx_command*, %struct.mlx_command** %7, align 8
  %23 = load i32, i32* @MLX_CMD_REBUILDASYNC, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @mlx_make_type2(%struct.mlx_command* %22, i32 %23, i32 %24, i32 %25, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %27 = load %struct.mlx_command*, %struct.mlx_command** %7, align 8
  %28 = call i64 @mlx_wait_command(%struct.mlx_command* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %54

31:                                               ; preds = %21
  %32 = load %struct.mlx_command*, %struct.mlx_command** %7, align 8
  %33 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %38 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx_command*, %struct.mlx_command** %7, align 8
  %41 = call i32 @mlx_diagnose_command(%struct.mlx_command* %40)
  %42 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.mlx_command*, %struct.mlx_command** %7, align 8
  %52 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %30, %20, %15
  %55 = load %struct.mlx_command*, %struct.mlx_command** %7, align 8
  %56 = icmp ne %struct.mlx_command* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.mlx_command*, %struct.mlx_command** %7, align 8
  %59 = call i32 @mlx_releasecmd(%struct.mlx_command* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc*) #1

declare dso_local i64 @mlx_getslot(%struct.mlx_command*) #1

declare dso_local i32 @mlx_make_type2(%struct.mlx_command*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx_wait_command(%struct.mlx_command*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @mlx_diagnose_command(%struct.mlx_command*) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
