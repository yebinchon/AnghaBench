; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, i32, %struct.mlx_command**, i64 (%struct.mlx_softc*, i64*, i64*)* }
%struct.mlx_command = type { i64 }

@MLX_STATUS_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"duplicate done event for slot %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"done event for nonbusy slot %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*, i32)* @mlx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_done(%struct.mlx_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mlx_softc* %0, %struct.mlx_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @debug_called(i32 2)
  %10 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %11 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %62, %2
  %13 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %13, i32 0, i32 3
  %15 = load i64 (%struct.mlx_softc*, i64*, i64*)*, i64 (%struct.mlx_softc*, i64*, i64*)** %14, align 8
  %16 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %17 = call i64 %15(%struct.mlx_softc* %16, i64* %7, i64* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  %20 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %20, i32 0, i32 2
  %22 = load %struct.mlx_command**, %struct.mlx_command*** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.mlx_command*, %struct.mlx_command** %22, i64 %23
  %25 = load %struct.mlx_command*, %struct.mlx_command** %24, align 8
  store %struct.mlx_command* %25, %struct.mlx_command** %5, align 8
  %26 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %27 = icmp ne %struct.mlx_command* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %19
  %29 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %30 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MLX_STATUS_BUSY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %37 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %38, i32 0, i32 2
  %40 = load %struct.mlx_command**, %struct.mlx_command*** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.mlx_command*, %struct.mlx_command** %40, i64 %41
  store %struct.mlx_command* null, %struct.mlx_command** %42, align 8
  %43 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  br label %53

47:                                               ; preds = %28
  %48 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %47, %34
  br label %60

54:                                               ; preds = %19
  %55 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %54, %53
  br label %62

61:                                               ; preds = %12
  br label %63

62:                                               ; preds = %60
  br label %12

63:                                               ; preds = %61
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %71 = call i32 @mlx_startio(%struct.mlx_softc* %70)
  br label %72

72:                                               ; preds = %69, %66, %63
  %73 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %74 = call i32 @mlx_complete(%struct.mlx_softc* %73)
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @mlx_startio(%struct.mlx_softc*) #1

declare dso_local i32 @mlx_complete(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
