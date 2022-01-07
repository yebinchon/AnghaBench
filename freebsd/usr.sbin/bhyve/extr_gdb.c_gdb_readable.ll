; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_readable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FIONREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FIONREAD on GDB socket\00", align 1
@cur_comm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Read from GDB socket\00", align 1
@gdb_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @gdb_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_readable(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FIONREAD, align 4
  %11 = call i32 @ioctl(i32 %9, i32 %10, i32* %8)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %55

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @io_buffer_grow(%struct.TYPE_5__* @cur_comm, i32 %20)
  %22 = call i32 @io_buffer_avail(%struct.TYPE_5__* @cur_comm)
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @io_buffer_tail(%struct.TYPE_5__* @cur_comm)
  %29 = call i32 @io_buffer_avail(%struct.TYPE_5__* @cur_comm)
  %30 = call i32 @read(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = call i32 (...) @close_connection()
  br label %55

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EAGAIN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %55

43:                                               ; preds = %38
  %44 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 (...) @close_connection()
  br label %54

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_comm, i32 0, i32 0), align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_comm, i32 0, i32 0), align 4
  %50 = call i32 @pthread_mutex_lock(i32* @gdb_lock)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @check_command(i32 %51)
  %53 = call i32 @pthread_mutex_unlock(i32* @gdb_lock)
  br label %54

54:                                               ; preds = %46, %43
  br label %55

55:                                               ; preds = %13, %42, %54, %33
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @io_buffer_grow(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @io_buffer_avail(%struct.TYPE_5__*) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @io_buffer_tail(%struct.TYPE_5__*) #1

declare dso_local i32 @close_connection(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @check_command(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
