; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_fw_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_fw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"physical drive %d:%d not responding\0A\00", align 1
@MLX_SPINUP_REPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"spinning up drives...\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"configuration checksum error\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"mirror race recovery failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"mirror race recovery in progress\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"physical drive %d:%d COD mismatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"logical drive installation aborted\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"mirror race on a critical system drive\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"new controller configuration found\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"FATAL MEMORY PARITY ERROR\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"unknown firmware initialisation error %02x:%02x:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*, i32, i32, i32)* @mlx_fw_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_fw_message(%struct.mlx_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %78 [
    i32 0, label %11
    i32 8, label %18
    i32 48, label %36
    i32 96, label %41
    i32 112, label %46
    i32 144, label %51
    i32 160, label %58
    i32 176, label %63
    i32 208, label %68
    i32 240, label %73
  ]

11:                                               ; preds = %4
  %12 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %13 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (i32, i8*, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %86

18:                                               ; preds = %4
  %19 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %20 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MLX_SPINUP_REPORTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %27 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @MLX_SPINUP_REPORTED, align 4
  %31 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %32 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %25, %18
  br label %86

36:                                               ; preds = %4
  %37 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %38 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %86

41:                                               ; preds = %4
  %42 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %43 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %86

46:                                               ; preds = %4
  %47 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %48 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %86

51:                                               ; preds = %4
  %52 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %53 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %55, i32 %56)
  br label %86

58:                                               ; preds = %4
  %59 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %60 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %86

63:                                               ; preds = %4
  %64 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %65 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %86

68:                                               ; preds = %4
  %69 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %70 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %86

73:                                               ; preds = %4
  %74 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %75 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %87

78:                                               ; preds = %4
  %79 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  %80 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %68, %63, %58, %51, %46, %41, %36, %35, %11
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
