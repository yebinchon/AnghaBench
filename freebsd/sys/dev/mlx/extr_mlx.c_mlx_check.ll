; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx_command = type { i32 }

@MLX_CMD_CHECKASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CHECK ASYNC failed - %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"consistency check started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*, i32)* @mlx_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_check(%struct.mlx_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx_command*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @debug_called(i32 1)
  %8 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %9 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %8)
  store i32 65536, i32* %6, align 4
  %10 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %11 = call %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc* %10)
  store %struct.mlx_command* %11, %struct.mlx_command** %5, align 8
  %12 = icmp eq %struct.mlx_command* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %16 = call i64 @mlx_getslot(%struct.mlx_command* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %55

19:                                               ; preds = %14
  %20 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %21 = load i32, i32* @MLX_CMD_CHECKASYNC, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 128
  %24 = call i32 @mlx_make_type2(%struct.mlx_command* %20, i32 %21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %23, i32 0, i32 0)
  %25 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %26 = call i64 @mlx_wait_command(%struct.mlx_command* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %55

29:                                               ; preds = %19
  %30 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %31 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %39 = call i32 @mlx_diagnose_command(%struct.mlx_command* %38)
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %51

41:                                               ; preds = %29
  %42 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %41, %34
  %52 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %53 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %28, %18, %13
  %56 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %57 = icmp ne %struct.mlx_command* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %60 = call i32 @mlx_releasecmd(%struct.mlx_command* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc*) #1

declare dso_local i64 @mlx_getslot(%struct.mlx_command*) #1

declare dso_local i32 @mlx_make_type2(%struct.mlx_command*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx_wait_command(%struct.mlx_command*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mlx_diagnose_command(%struct.mlx_command*) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
