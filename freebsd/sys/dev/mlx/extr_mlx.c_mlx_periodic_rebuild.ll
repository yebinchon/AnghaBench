; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_periodic_rebuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_periodic_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i32, i64, %struct.mlx_softc* }
%struct.mlx_softc = type { i32, %struct.mlx_rebuild_status, i32 }
%struct.mlx_rebuild_status = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"background check/rebuild operation started\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"consistency check completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"drive rebuild completed\0A\00", align 1
@MLX_REBUILDSTAT_IDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"background check/rebuild operation completed\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_command*)* @mlx_periodic_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_periodic_rebuild(%struct.mlx_command* %0) #0 {
  %2 = alloca %struct.mlx_command*, align 8
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca %struct.mlx_rebuild_status*, align 8
  store %struct.mlx_command* %0, %struct.mlx_command** %2, align 8
  %5 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %6 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %5, i32 0, i32 2
  %7 = load %struct.mlx_softc*, %struct.mlx_softc** %6, align 8
  store %struct.mlx_softc* %7, %struct.mlx_softc** %3, align 8
  %8 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %9 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mlx_rebuild_status*
  store %struct.mlx_rebuild_status* %11, %struct.mlx_rebuild_status** %4, align 8
  %12 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %13 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %12)
  %14 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %15 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %70 [
    i32 0, label %17
    i32 261, label %35
  ]

17:                                               ; preds = %1
  %18 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %18, i32 0, i32 1
  %20 = load %struct.mlx_rebuild_status*, %struct.mlx_rebuild_status** %4, align 8
  %21 = bitcast %struct.mlx_rebuild_status* %19 to i8*
  %22 = bitcast %struct.mlx_rebuild_status* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %28, i32 0, i32 0
  store i32 128, i32* %29, align 4
  %30 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %27, %17
  br label %70

35:                                               ; preds = %1
  %36 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %50 [
    i32 130, label %39
    i32 129, label %44
    i32 128, label %49
  ]

39:                                               ; preds = %35
  %40 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %41 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %63

44:                                               ; preds = %35
  %45 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %63

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %35, %49
  %51 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.mlx_rebuild_status, %struct.mlx_rebuild_status* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MLX_REBUILDSTAT_IDLE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %44, %39
  %64 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %65 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* @MLX_REBUILDSTAT_IDLE, align 4
  %67 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.mlx_rebuild_status, %struct.mlx_rebuild_status* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %1, %63, %34
  %71 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %72 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @M_DEVBUF, align 4
  %75 = call i32 @free(i64 %73, i32 %74)
  %76 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %77 = call i32 @mlx_releasecmd(%struct.mlx_command* %76)
  ret void
}

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
