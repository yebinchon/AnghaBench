; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_ctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_ctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.make_dev_args = type { i32, i32, i32, i32, i32* }

@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@mlx5_ctl_devsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@mlx5_ctl_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mlx5ctl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ctl_init() #0 {
  %1 = alloca %struct.make_dev_args, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @make_dev_args_init(%struct.make_dev_args* %1)
  %4 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %5 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %6 = or i32 %4, %5
  %7 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %1, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %1, i32 0, i32 4
  store i32* @mlx5_ctl_devsw, i32** %8, align 8
  %9 = load i32, i32* @UID_ROOT, align 4
  %10 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %1, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @GID_OPERATOR, align 4
  %12 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %1, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %1, i32 0, i32 1
  store i32 416, i32* %13, align 4
  %14 = call i32 @make_dev_s(%struct.make_dev_args* %1, i32* @mlx5_ctl_dev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 0, %15
  ret i32 %16
}

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
