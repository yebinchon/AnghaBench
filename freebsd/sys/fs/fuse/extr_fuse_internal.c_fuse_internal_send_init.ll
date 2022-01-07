; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_send_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_send_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_data = type { i32 }
%struct.thread = type { i32 }
%struct.fuse_init_in = type { i32, i32, i32, i32 }
%struct.fuse_dispatcher = type { i32, %struct.fuse_init_in* }

@FUSE_INIT = common dso_local global i32 0, align 4
@FUSE_KERNEL_VERSION = common dso_local global i32 0, align 4
@FUSE_KERNEL_MINOR_VERSION = common dso_local global i32 0, align 4
@maxbcachebuf = common dso_local global i32 0, align 4
@FUSE_ASYNC_READ = common dso_local global i32 0, align 4
@FUSE_POSIX_LOCKS = common dso_local global i32 0, align 4
@FUSE_EXPORT_SUPPORT = common dso_local global i32 0, align 4
@FUSE_BIG_WRITES = common dso_local global i32 0, align 4
@FUSE_WRITEBACK_CACHE = common dso_local global i32 0, align 4
@fuse_internal_init_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_internal_send_init(%struct.fuse_data* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.fuse_data*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fuse_init_in*, align 8
  %6 = alloca %struct.fuse_dispatcher, align 8
  store %struct.fuse_data* %0, %struct.fuse_data** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %7 = call i32 @fdisp_init(%struct.fuse_dispatcher* %6, i32 16)
  %8 = load i32, i32* @FUSE_INIT, align 4
  %9 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %10 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = call i32 @fdisp_make(%struct.fuse_dispatcher* %6, i32 %8, i32 %11, i32 0, %struct.thread* %12, i32* null)
  %14 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %6, i32 0, i32 1
  %15 = load %struct.fuse_init_in*, %struct.fuse_init_in** %14, align 8
  store %struct.fuse_init_in* %15, %struct.fuse_init_in** %5, align 8
  %16 = load i32, i32* @FUSE_KERNEL_VERSION, align 4
  %17 = load %struct.fuse_init_in*, %struct.fuse_init_in** %5, align 8
  %18 = getelementptr inbounds %struct.fuse_init_in, %struct.fuse_init_in* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @FUSE_KERNEL_MINOR_VERSION, align 4
  %20 = load %struct.fuse_init_in*, %struct.fuse_init_in** %5, align 8
  %21 = getelementptr inbounds %struct.fuse_init_in, %struct.fuse_init_in* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @maxbcachebuf, align 4
  %23 = load %struct.fuse_init_in*, %struct.fuse_init_in** %5, align 8
  %24 = getelementptr inbounds %struct.fuse_init_in, %struct.fuse_init_in* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @FUSE_ASYNC_READ, align 4
  %26 = load i32, i32* @FUSE_POSIX_LOCKS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FUSE_EXPORT_SUPPORT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FUSE_BIG_WRITES, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FUSE_WRITEBACK_CACHE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.fuse_init_in*, %struct.fuse_init_in** %5, align 8
  %35 = getelementptr inbounds %struct.fuse_init_in, %struct.fuse_init_in* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @fuse_internal_init_callback, align 4
  %39 = call i32 @fuse_insert_callback(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @fuse_insert_message(i32 %41, i32 0)
  %43 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %6)
  ret void
}

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make(%struct.fuse_dispatcher*, i32, i32, i32, %struct.thread*, i32*) #1

declare dso_local i32 @fuse_insert_callback(i32, i32) #1

declare dso_local i32 @fuse_insert_message(i32, i32) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
