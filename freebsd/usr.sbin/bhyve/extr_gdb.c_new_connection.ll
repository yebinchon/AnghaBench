; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_new_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_new_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed accepting initial GDB connection\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_NOSIGPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to disable SIGPIPE for GDB connection\00", align 1
@gdb_lock = common dso_local global i32 0, align 4
@cur_fd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Ignoring additional GDB connection.\00", align 1
@EVF_READ = common dso_local global i32 0, align 4
@gdb_readable = common dso_local global i32 0, align 4
@read_event = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to setup initial GDB connection\00", align 1
@EVF_WRITE = common dso_local global i32 0, align 4
@gdb_writable = common dso_local global i32 0, align 4
@write_event = common dso_local global i32* null, align 8
@cur_vcpu = common dso_local global i64 0, align 8
@stepping_vcpu = common dso_local global i32 0, align 4
@stopped_vcpu = common dso_local global i32 0, align 4
@stop_pending = common dso_local global i32 0, align 4
@first_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @new_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_connection(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SOCK_NONBLOCK, align 4
  %11 = call i32 @accept4(i32 %9, i32* null, i32* null, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  br label %73

20:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SOL_SOCKET, align 4
  %23 = load i32, i32* @SO_NOSIGPIPE, align 4
  %24 = call i32 @setsockopt(i32 %21, i32 %22, i32 %23, i32* %7, i32 4)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @close(i32 %28)
  br label %73

30:                                               ; preds = %20
  %31 = call i32 @pthread_mutex_lock(i32* @gdb_lock)
  %32 = load i32, i32* @cur_fd, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @close(i32 %35)
  %37 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @EVF_READ, align 4
  %41 = load i32, i32* @gdb_readable, align 4
  %42 = call i8* @mevent_add(i32 %39, i32 %40, i32 %41, i32* null)
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** @read_event, align 8
  %44 = load i32*, i32** @read_event, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  %52 = call i32 @pthread_mutex_unlock(i32* @gdb_lock)
  br label %73

53:                                               ; preds = %38
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @EVF_WRITE, align 4
  %56 = load i32, i32* @gdb_writable, align 4
  %57 = call i8* @mevent_add(i32 %54, i32 %55, i32 %56, i32* null)
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** @write_event, align 8
  %59 = load i32*, i32** @write_event, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32*, i32** @read_event, align 8
  %68 = call i32 @mevent_delete_close(i32* %67)
  store i32* null, i32** @read_event, align 8
  br label %69

69:                                               ; preds = %66, %53
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* @cur_fd, align 4
  store i64 0, i64* @cur_vcpu, align 8
  store i32 -1, i32* @stepping_vcpu, align 4
  store i32 -1, i32* @stopped_vcpu, align 4
  store i32 0, i32* @stop_pending, align 4
  store i32 1, i32* @first_stop, align 4
  %71 = call i32 (...) @gdb_suspend_vcpus()
  %72 = call i32 @pthread_mutex_unlock(i32* @gdb_lock)
  br label %73

73:                                               ; preds = %69, %51, %26, %19
  ret void
}

declare dso_local i32 @accept4(i32, i32*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @mevent_add(i32, i32, i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mevent_delete_close(i32*) #1

declare dso_local i32 @gdb_suspend_vcpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
