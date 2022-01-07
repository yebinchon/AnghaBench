; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_wrapper_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_wrapper_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@filemon_wrapper_chdir = common dso_local global i64 0, align 8
@sysent = common dso_local global %struct.TYPE_3__* null, align 8
@SYS_chdir = common dso_local global i64 0, align 8
@filemon_wrapper_open = common dso_local global i64 0, align 8
@SYS_open = common dso_local global i64 0, align 8
@filemon_wrapper_openat = common dso_local global i64 0, align 8
@SYS_openat = common dso_local global i64 0, align 8
@filemon_wrapper_rename = common dso_local global i64 0, align 8
@SYS_rename = common dso_local global i64 0, align 8
@filemon_wrapper_unlink = common dso_local global i64 0, align 8
@SYS_unlink = common dso_local global i64 0, align 8
@filemon_wrapper_link = common dso_local global i64 0, align 8
@SYS_link = common dso_local global i64 0, align 8
@filemon_wrapper_symlink = common dso_local global i64 0, align 8
@SYS_symlink = common dso_local global i64 0, align 8
@filemon_wrapper_linkat = common dso_local global i64 0, align 8
@SYS_linkat = common dso_local global i64 0, align 8
@process_exec = common dso_local global i32 0, align 4
@filemon_event_process_exec = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_LAST = common dso_local global i32 0, align 4
@filemon_exec_tag = common dso_local global i8* null, align 8
@process_exit = common dso_local global i32 0, align 4
@filemon_event_process_exit = common dso_local global i32 0, align 4
@filemon_exit_tag = common dso_local global i8* null, align 8
@process_fork = common dso_local global i32 0, align 4
@filemon_event_process_fork = common dso_local global i32 0, align 4
@filemon_fork_tag = common dso_local global i8* null, align 8
@FREEBSD32_SYS_chdir = common dso_local global i64 0, align 8
@FREEBSD32_SYS_link = common dso_local global i64 0, align 8
@FREEBSD32_SYS_linkat = common dso_local global i64 0, align 8
@FREEBSD32_SYS_open = common dso_local global i64 0, align 8
@FREEBSD32_SYS_openat = common dso_local global i64 0, align 8
@FREEBSD32_SYS_rename = common dso_local global i64 0, align 8
@FREEBSD32_SYS_symlink = common dso_local global i64 0, align 8
@FREEBSD32_SYS_unlink = common dso_local global i64 0, align 8
@freebsd32_sysent = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @filemon_wrapper_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filemon_wrapper_install() #0 {
  %1 = load i64, i64* @filemon_wrapper_chdir, align 8
  %2 = inttoptr i64 %1 to i32*
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sysent, align 8
  %4 = load i64, i64* @SYS_chdir, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32* %2, i32** %6, align 8
  %7 = load i64, i64* @filemon_wrapper_open, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sysent, align 8
  %10 = load i64, i64* @SYS_open, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* %8, i32** %12, align 8
  %13 = load i64, i64* @filemon_wrapper_openat, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sysent, align 8
  %16 = load i64, i64* @SYS_openat, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* %14, i32** %18, align 8
  %19 = load i64, i64* @filemon_wrapper_rename, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sysent, align 8
  %22 = load i64, i64* @SYS_rename, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32* %20, i32** %24, align 8
  %25 = load i64, i64* @filemon_wrapper_unlink, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sysent, align 8
  %28 = load i64, i64* @SYS_unlink, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32* %26, i32** %30, align 8
  %31 = load i64, i64* @filemon_wrapper_link, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sysent, align 8
  %34 = load i64, i64* @SYS_link, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32* %32, i32** %36, align 8
  %37 = load i64, i64* @filemon_wrapper_symlink, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sysent, align 8
  %40 = load i64, i64* @SYS_symlink, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32* %38, i32** %42, align 8
  %43 = load i64, i64* @filemon_wrapper_linkat, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sysent, align 8
  %46 = load i64, i64* @SYS_linkat, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32* %44, i32** %48, align 8
  %49 = load i32, i32* @process_exec, align 4
  %50 = load i32, i32* @filemon_event_process_exec, align 4
  %51 = load i32, i32* @EVENTHANDLER_PRI_LAST, align 4
  %52 = call i8* @EVENTHANDLER_REGISTER(i32 %49, i32 %50, i32* null, i32 %51)
  store i8* %52, i8** @filemon_exec_tag, align 8
  %53 = load i32, i32* @process_exit, align 4
  %54 = load i32, i32* @filemon_event_process_exit, align 4
  %55 = load i32, i32* @EVENTHANDLER_PRI_LAST, align 4
  %56 = call i8* @EVENTHANDLER_REGISTER(i32 %53, i32 %54, i32* null, i32 %55)
  store i8* %56, i8** @filemon_exit_tag, align 8
  %57 = load i32, i32* @process_fork, align 4
  %58 = load i32, i32* @filemon_event_process_fork, align 4
  %59 = load i32, i32* @EVENTHANDLER_PRI_LAST, align 4
  %60 = call i8* @EVENTHANDLER_REGISTER(i32 %57, i32 %58, i32* null, i32 %59)
  store i8* %60, i8** @filemon_fork_tag, align 8
  ret void
}

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
