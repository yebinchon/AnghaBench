; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i32 }
%struct.cdev = type { i32 }
%struct.uio = type { i64 }

@msgbufp = common dso_local global %struct.msgbuf* null, align 8
@msgbuf_lock = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@log_wakeup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @logread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logread(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca %struct.msgbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.msgbuf*, %struct.msgbuf** @msgbufp, align 8
  store %struct.msgbuf* %12, %struct.msgbuf** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = call i32 @mtx_lock(i32* @msgbuf_lock)
  br label %14

14:                                               ; preds = %32, %3
  %15 = load %struct.msgbuf*, %struct.msgbuf** %9, align 8
  %16 = call i64 @msgbuf_getcount(%struct.msgbuf* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @IO_NDELAY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @mtx_unlock(i32* @msgbuf_lock)
  %25 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %25, i32* %4, align 4
  br label %71

26:                                               ; preds = %18
  %27 = call i32 @cv_wait_sig(i32* @log_wakeup, i32* @msgbuf_lock)
  store i32 %27, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @mtx_unlock(i32* @msgbuf_lock)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %26
  br label %14

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %66, %33
  %35 = load %struct.uio*, %struct.uio** %6, align 8
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = load %struct.uio*, %struct.uio** %6, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @imin(i32 128, i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.msgbuf*, %struct.msgbuf** %9, align 8
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @msgbuf_getbytes(%struct.msgbuf* %44, i8* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %68

51:                                               ; preds = %39
  %52 = call i32 @mtx_unlock(i32* @msgbuf_lock)
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.uio*, %struct.uio** %6, align 8
  %56 = call i32 @uiomove(i8* %53, i32 %54, %struct.uio* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load %struct.uio*, %struct.uio** %6, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59, %51
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %71

66:                                               ; preds = %59
  %67 = call i32 @mtx_lock(i32* @msgbuf_lock)
  br label %34

68:                                               ; preds = %50, %34
  %69 = call i32 @mtx_unlock(i32* @msgbuf_lock)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %64, %29, %23
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @msgbuf_getcount(%struct.msgbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @imin(i32, i64) #1

declare dso_local i32 @msgbuf_getbytes(%struct.msgbuf*, i8*, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
