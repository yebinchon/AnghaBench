; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_kctx_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_kctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_kctx = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nm_kctx_cfg = type { i32, i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nm_kthread lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nm_kctx* @nm_os_kctx_create(%struct.nm_kctx_cfg* %0, i8* %1) #0 {
  %3 = alloca %struct.nm_kctx*, align 8
  %4 = alloca %struct.nm_kctx_cfg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nm_kctx*, align 8
  store %struct.nm_kctx_cfg* %0, %struct.nm_kctx_cfg** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.nm_kctx* null, %struct.nm_kctx** %6, align 8
  %7 = load i32, i32* @M_DEVBUF, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.nm_kctx* @malloc(i32 24, i32 %7, i32 %10)
  store %struct.nm_kctx* %11, %struct.nm_kctx** %6, align 8
  %12 = load %struct.nm_kctx*, %struct.nm_kctx** %6, align 8
  %13 = icmp ne %struct.nm_kctx* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.nm_kctx* null, %struct.nm_kctx** %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.nm_kctx*, %struct.nm_kctx** %6, align 8
  %17 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %16, i32 0, i32 3
  %18 = load i32, i32* @MTX_DEF, align 4
  %19 = call i32 @mtx_init(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %18)
  %20 = load %struct.nm_kctx_cfg*, %struct.nm_kctx_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.nm_kctx_cfg, %struct.nm_kctx_cfg* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nm_kctx*, %struct.nm_kctx** %6, align 8
  %24 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load %struct.nm_kctx_cfg*, %struct.nm_kctx_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.nm_kctx_cfg, %struct.nm_kctx_cfg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nm_kctx*, %struct.nm_kctx** %6, align 8
  %30 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.nm_kctx_cfg*, %struct.nm_kctx_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.nm_kctx_cfg, %struct.nm_kctx_cfg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nm_kctx*, %struct.nm_kctx** %6, align 8
  %36 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.nm_kctx*, %struct.nm_kctx** %6, align 8
  %39 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  %40 = load %struct.nm_kctx_cfg*, %struct.nm_kctx_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.nm_kctx_cfg, %struct.nm_kctx_cfg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nm_kctx*, %struct.nm_kctx** %6, align 8
  %44 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nm_kctx*, %struct.nm_kctx** %6, align 8
  store %struct.nm_kctx* %45, %struct.nm_kctx** %3, align 8
  br label %46

46:                                               ; preds = %15, %14
  %47 = load %struct.nm_kctx*, %struct.nm_kctx** %3, align 8
  ret %struct.nm_kctx* %47
}

declare dso_local %struct.nm_kctx* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
