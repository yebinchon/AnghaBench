; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_disk.c_mlxd_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_disk.c_mlxd_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlxd_softc* }
%struct.mlxd_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@MLX_SYSD_OFFLINE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @mlxd_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxd_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.mlxd_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.mlxd_softc*, %struct.mlxd_softc** %7, align 8
  store %struct.mlxd_softc* %8, %struct.mlxd_softc** %3, align 8
  %9 = call i32 @debug_called(i32 1)
  %10 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %11 = icmp eq %struct.mlxd_softc* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @BIO_ERROR, align 4
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %56

21:                                               ; preds = %1
  %22 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @MLX_IO_LOCK(i32 %24)
  %26 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MLX_SYSD_OFFLINE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %21
  %34 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @MLX_IO_UNLOCK(i32 %36)
  %38 = load i32, i32* @ENXIO, align 4
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @BIO_ERROR, align 4
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %56

46:                                               ; preds = %21
  %47 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %48 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bio*, %struct.bio** %2, align 8
  %51 = call i32 @mlx_submit_buf(i32 %49, %struct.bio* %50)
  %52 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %53 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @MLX_IO_UNLOCK(i32 %54)
  br label %64

56:                                               ; preds = %33, %12
  %57 = load %struct.bio*, %struct.bio** %2, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.bio*, %struct.bio** %2, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bio*, %struct.bio** %2, align 8
  %63 = call i32 @biodone(%struct.bio* %62)
  br label %64

64:                                               ; preds = %56, %46
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_LOCK(i32) #1

declare dso_local i32 @MLX_IO_UNLOCK(i32) #1

declare dso_local i32 @mlx_submit_buf(i32, %struct.bio*) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
