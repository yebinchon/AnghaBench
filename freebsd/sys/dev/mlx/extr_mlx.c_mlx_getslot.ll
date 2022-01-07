; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_getslot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_getslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i32, i32, %struct.mlx_softc* }
%struct.mlx_softc = type { i32, %struct.mlx_command**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX_CMD_PRIORITY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"try slot %d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"got slot %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_command*)* @mlx_getslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_getslot(%struct.mlx_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx_command*, align 8
  %4 = alloca %struct.mlx_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx_command* %0, %struct.mlx_command** %3, align 8
  %7 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %8 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %7, i32 0, i32 2
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %8, align 8
  store %struct.mlx_softc* %9, %struct.mlx_softc** %4, align 8
  %10 = call i32 @debug_called(i32 1)
  %11 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %12 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %11)
  %13 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %24

23:                                               ; preds = %1
  store i32 2, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %29 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MLX_CMD_PRIORITY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  br label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 4
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  %41 = icmp sge i32 %27, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @EBUSY, align 4
  store i32 %43, i32* %2, align 4
  br label %93

44:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @debug(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %52, i32 0, i32 1
  %54 = load %struct.mlx_command**, %struct.mlx_command*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mlx_command*, %struct.mlx_command** %54, i64 %56
  %58 = load %struct.mlx_command*, %struct.mlx_command** %57, align 8
  %59 = icmp eq %struct.mlx_command* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %65

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %45

65:                                               ; preds = %60, %45
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %71 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %72 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %71, i32 0, i32 1
  %73 = load %struct.mlx_command**, %struct.mlx_command*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.mlx_command*, %struct.mlx_command** %73, i64 %75
  store %struct.mlx_command* %70, %struct.mlx_command** %76, align 8
  %77 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %78 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %69, %65
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @EBUSY, align 4
  store i32 %86, i32* %2, align 4
  br label %93

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @debug(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %92 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %87, %85, %42
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
