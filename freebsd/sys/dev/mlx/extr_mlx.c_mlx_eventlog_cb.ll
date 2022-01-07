; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_eventlog_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_eventlog_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i32*, %struct.mlx_command*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX_CMD_LOGOP = common dso_local global i32 0, align 4
@MLX_LOGOP_GET = common dso_local global i32 0, align 4
@mlx_periodic_eventlog_respond = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @mlx_eventlog_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_eventlog_cb(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx_command*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.mlx_command*
  store %struct.mlx_command* %11, %struct.mlx_command** %9, align 8
  %12 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @mlx_setup_dmamap(%struct.mlx_command* %12, i32* %13, i32 %14, i32 %15)
  %17 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %18 = load i32, i32* @MLX_CMD_LOGOP, align 4
  %19 = load i32, i32* @MLX_LOGOP_GET, align 4
  %20 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %21 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %26 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mlx_make_type3(%struct.mlx_command* %17, i32 %18, i32 %19, i32 1, i32 %24, i32 0, i32 0, i32 %27, i32 0)
  %29 = load i32, i32* @mlx_periodic_eventlog_respond, align 4
  %30 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %31 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %33 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %34 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %33, i32 0, i32 1
  store %struct.mlx_command* %32, %struct.mlx_command** %34, align 8
  %35 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %36 = call i64 @mlx_start(%struct.mlx_command* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %4
  %39 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %40 = call i32 @mlx_releasecmd(%struct.mlx_command* %39)
  %41 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %42 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = call i32 @free(i32* %43, i32 %44)
  %46 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %47 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %38, %4
  ret void
}

declare dso_local i32 @mlx_setup_dmamap(%struct.mlx_command*, i32*, i32, i32) #1

declare dso_local i32 @mlx_make_type3(%struct.mlx_command*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx_start(%struct.mlx_command*) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
