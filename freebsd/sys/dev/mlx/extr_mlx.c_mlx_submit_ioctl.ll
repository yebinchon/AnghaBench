; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_submit_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_submit_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, %struct.mlx_sysdrive* }
%struct.mlx_sysdrive = type { i32 }
%struct.thread = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX_BACKGROUND_CHECK = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx_submit_ioctl(%struct.mlx_softc* %0, %struct.mlx_sysdrive* %1, i32 %2, i64 %3, i32 %4, %struct.thread* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx_softc*, align 8
  %9 = alloca %struct.mlx_sysdrive*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.thread*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %8, align 8
  store %struct.mlx_sysdrive* %1, %struct.mlx_sysdrive** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.thread* %5, %struct.thread** %13, align 8
  %17 = load i64, i64* %11, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %14, align 8
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %79 [
    i32 128, label %20
    i32 129, label %29
  ]

20:                                               ; preds = %6
  %21 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  %22 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %21)
  %23 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %9, align 8
  %24 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %14, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  %28 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %27)
  store i32 0, i32* %7, align 4
  br label %81

29:                                               ; preds = %6
  %30 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  %31 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %30)
  %32 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  %33 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  %38 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %37)
  %39 = load i32*, i32** %14, align 8
  store i32 262, i32* %39, align 4
  %40 = load i32, i32* @EBUSY, align 4
  store i32 %40, i32* %7, align 4
  br label %81

41:                                               ; preds = %29
  %42 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  %43 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %9, align 8
  %44 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  %45 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %44, i32 0, i32 1
  %46 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %45, align 8
  %47 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %46, i64 0
  %48 = ptrtoint %struct.mlx_sysdrive* %43 to i64
  %49 = ptrtoint %struct.mlx_sysdrive* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @mlx_check(%struct.mlx_softc* %42, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  switch i32 %54, label %64 [
    i32 0, label %55
    i32 65536, label %56
    i32 2, label %58
    i32 261, label %60
    i32 262, label %62
  ]

55:                                               ; preds = %41
  store i32 0, i32* %15, align 4
  br label %66

56:                                               ; preds = %41
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %15, align 4
  br label %66

58:                                               ; preds = %41
  %59 = load i32, i32* @EIO, align 4
  store i32 %59, i32* %15, align 4
  br label %66

60:                                               ; preds = %41
  %61 = load i32, i32* @ERANGE, align 4
  store i32 %61, i32* %15, align 4
  br label %66

62:                                               ; preds = %41
  %63 = load i32, i32* @EBUSY, align 4
  store i32 %63, i32* %15, align 4
  br label %66

64:                                               ; preds = %41
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %64, %62, %60, %58, %56, %55
  %67 = load i32, i32* %15, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @MLX_BACKGROUND_CHECK, align 4
  %71 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  %72 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  %75 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %74)
  %76 = load i32, i32* %16, align 4
  %77 = load i32*, i32** %14, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %7, align 4
  br label %81

79:                                               ; preds = %6
  %80 = load i32, i32* @ENOIOCTL, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %73, %36, %20
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @MLX_IO_LOCK(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.mlx_softc*) #1

declare dso_local i32 @mlx_check(%struct.mlx_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
