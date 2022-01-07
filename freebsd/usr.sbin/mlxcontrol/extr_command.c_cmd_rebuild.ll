; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_rebuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_rebuild_request = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"'%s' is not a valid controller\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"disk%2d%2d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unknown%2d%2d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"'%s' is not a valid physical drive\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@MLX_REBUILDASYNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"the drive at %d:%d is already ONLINE\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"drive failed during rebuild\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"there is no drive at channel %d, target %d\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"drive rebuild or consistency check is already in progress on this controller\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"ioctl MLXD_REBUILDASYNC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_rebuild(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mlx_rebuild_request, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @cmd_help(i32 %12, i8** %13)
  store i32 %14, i32* %3, align 4
  br label %84

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @ctrlrunit(i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 1, i32* %3, align 4
  br label %84

26:                                               ; preds = %15
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.mlx_rebuild_request, %struct.mlx_rebuild_request* %6, i32 0, i32 2
  %31 = getelementptr inbounds %struct.mlx_rebuild_request, %struct.mlx_rebuild_request* %6, i32 0, i32 1
  %32 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %30, i32* %31)
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.mlx_rebuild_request, %struct.mlx_rebuild_request* %6, i32 0, i32 2
  %39 = getelementptr inbounds %struct.mlx_rebuild_request, %struct.mlx_rebuild_request* %6, i32 0, i32 1
  %40 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  store i32 1, i32* %3, align 4
  br label %84

47:                                               ; preds = %34, %26
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ctrlrpath(i32 %48)
  %50 = call i32 @open(i32 %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ctrlrpath(i32 %53)
  %55 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  store i32 1, i32* %3, align 4
  br label %84

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MLX_REBUILDASYNC, align 4
  %59 = call i64 @ioctl(i32 %57, i32 %58, %struct.mlx_rebuild_request* %6)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.mlx_rebuild_request, %struct.mlx_rebuild_request* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %80 [
    i32 2, label %64
    i32 4, label %70
    i32 261, label %72
    i32 262, label %78
  ]

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.mlx_rebuild_request, %struct.mlx_rebuild_request* %6, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.mlx_rebuild_request, %struct.mlx_rebuild_request* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %66, i32 %68)
  br label %82

70:                                               ; preds = %61
  %71 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %82

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.mlx_rebuild_request, %struct.mlx_rebuild_request* %6, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.mlx_rebuild_request, %struct.mlx_rebuild_request* %6, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %74, i32 %76)
  br label %82

78:                                               ; preds = %61
  %79 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0))
  br label %82

80:                                               ; preds = %61
  %81 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %78, %72, %70, %64
  br label %83

83:                                               ; preds = %82, %56
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %52, %42, %21, %11
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @cmd_help(i32, i8**) #1

declare dso_local i32 @ctrlrunit(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @ctrlrpath(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mlx_rebuild_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
