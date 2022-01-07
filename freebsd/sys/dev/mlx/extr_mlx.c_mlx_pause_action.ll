; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_pause_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_pause_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx_command = type { %struct.mlx_softc*, i32, i32 }

@MLX_CMD_STARTCHANNEL = common dso_local global i32 0, align 4
@MLX_CMD_STOPCHANNEL = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@MLX_CMD_PRIORITY = common dso_local global i32 0, align 4
@mlx_pause_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s failed for channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_softc*)* @mlx_pause_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_pause_action(%struct.mlx_softc* %0) #0 {
  %2 = alloca %struct.mlx_softc*, align 8
  %3 = alloca %struct.mlx_command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %2, align 8
  %7 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %8 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %7)
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @MLX_CMD_STARTCHANNEL, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* @MLX_CMD_STOPCHANNEL, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @time_second, align 4
  %23 = sub nsw i32 %21, %22
  %24 = add nsw i32 %23, 5
  %25 = sdiv i32 %24, 30
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 15
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  store i32 15, i32* %4, align 4
  %29 = load i32, i32* @time_second, align 4
  %30 = add nsw i32 %29, 450
  %31 = sub nsw i32 %30, 5
  %32 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %33 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  br label %35

35:                                               ; preds = %28, %16
  br label %36

36:                                               ; preds = %35, %14
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %106, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %109

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 1, %46
  %48 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %47, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %105

54:                                               ; preds = %45
  %55 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %56 = call %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc* %55)
  store %struct.mlx_command* %56, %struct.mlx_command** %3, align 8
  %57 = icmp eq %struct.mlx_command* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %88

59:                                               ; preds = %54
  %60 = load i32, i32* @MLX_CMD_PRIORITY, align 4
  %61 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %62 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %66 = call i64 @mlx_getslot(%struct.mlx_command* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %88

69:                                               ; preds = %59
  %70 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = shl i32 %72, 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @mlx_make_type2(%struct.mlx_command* %70, i32 %71, i32 %75, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %77 = load i32, i32* @mlx_pause_done, align 4
  %78 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %79 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %81 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %82 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %81, i32 0, i32 0
  store %struct.mlx_softc* %80, %struct.mlx_softc** %82, align 8
  %83 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %84 = call i64 @mlx_start(%struct.mlx_command* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  br label %88

87:                                               ; preds = %69
  br label %109

88:                                               ; preds = %86, %68, %58
  %89 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %90 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @MLX_CMD_STOPCHANNEL, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %96, i32 %97)
  %99 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %100 = icmp ne %struct.mlx_command* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %103 = call i32 @mlx_releasecmd(%struct.mlx_command* %102)
  br label %104

104:                                              ; preds = %101, %88
  br label %105

105:                                              ; preds = %104, %45
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %37

109:                                              ; preds = %87, %37
  ret void
}

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc*) #1

declare dso_local i64 @mlx_getslot(%struct.mlx_command*) #1

declare dso_local i32 @mlx_make_type2(%struct.mlx_command*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx_start(%struct.mlx_command*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
