; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_pause_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_pause_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i32*, i64, %struct.mlx_softc* }
%struct.mlx_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"%s command failed - %s\0A\00", align 1
@MLX_CMD_STOPCHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"channel %d pausing for %ld seconds\0A\00", align 1
@time_second = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"channel %d resuming\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_command*)* @mlx_pause_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_pause_done(%struct.mlx_command* %0) #0 {
  %2 = alloca %struct.mlx_command*, align 8
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx_command* %0, %struct.mlx_command** %2, align 8
  %6 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %7 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %6, i32 0, i32 2
  %8 = load %struct.mlx_softc*, %struct.mlx_softc** %7, align 8
  store %struct.mlx_softc* %8, %struct.mlx_softc** %3, align 8
  %9 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %10 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %15 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 15
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %21 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %20)
  %22 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %23 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MLX_CMD_STOPCHANNEL, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %35 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %36 = call i32 @mlx_diagnose_command(%struct.mlx_command* %35)
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %36)
  br label %61

38:                                               ; preds = %1
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MLX_CMD_STOPCHANNEL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %48 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @time_second, align 8
  %52 = sub nsw i64 %50, %51
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %46, i64 %52)
  br label %60

54:                                               ; preds = %38
  %55 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %42
  br label %61

61:                                               ; preds = %60, %26
  %62 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %63 = call i32 @mlx_releasecmd(%struct.mlx_command* %62)
  ret void
}

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mlx_diagnose_command(%struct.mlx_command*) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
