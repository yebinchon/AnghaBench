; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_main.c_fuse_loader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_main.c_fuse_loader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@fuse_loader.eh_tag = internal global i32* null, align 8
@fuse_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fuse_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fusepbuf\00", align 1
@nswbuf = common dso_local global i32 0, align 4
@fuse_pbuf_zone = common dso_local global i32 0, align 4
@fuse_vfsconf = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32, i8*)* @fuse_loader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_loader(%struct.module* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %45 [
    i32 129, label %10
    i32 128, label %34
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @MTX_DEF, align 4
  %12 = call i32 @mtx_init(i32* @fuse_mtx, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %11)
  %13 = call i32 (...) @fuse_device_init()
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = call i32 @mtx_destroy(i32* @fuse_mtx)
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %10
  %20 = call i32 (...) @fuse_ipc_init()
  %21 = call i32 (...) @fuse_file_init()
  %22 = call i32 (...) @fuse_internal_init()
  %23 = call i32 (...) @fuse_node_init()
  %24 = load i32, i32* @nswbuf, align 4
  %25 = sdiv i32 %24, 2
  %26 = call i32 @pbuf_zsecond_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 %26, i32* @fuse_pbuf_zone, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vfs_modevent(i32* null, i32 %27, i32* @fuse_vfsconf)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32*, i32** @fuse_loader.eh_tag, align 8
  %32 = call i32 @fuse_bringdown(i32* %31)
  br label %33

33:                                               ; preds = %30, %19
  br label %47

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @vfs_modevent(i32* null, i32 %35, i32* @fuse_vfsconf)
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %34
  %41 = load i32*, i32** @fuse_loader.eh_tag, align 8
  %42 = call i32 @fuse_bringdown(i32* %41)
  %43 = load i32, i32* @fuse_pbuf_zone, align 4
  %44 = call i32 @uma_zdestroy(i32 %43)
  br label %47

45:                                               ; preds = %3
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %40, %33
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45, %38, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fuse_device_init(...) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @fuse_ipc_init(...) #1

declare dso_local i32 @fuse_file_init(...) #1

declare dso_local i32 @fuse_internal_init(...) #1

declare dso_local i32 @fuse_node_init(...) #1

declare dso_local i32 @pbuf_zsecond_create(i8*, i32) #1

declare dso_local i32 @vfs_modevent(i32*, i32, i32*) #1

declare dso_local i32 @fuse_bringdown(i32*) #1

declare dso_local i32 @uma_zdestroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
