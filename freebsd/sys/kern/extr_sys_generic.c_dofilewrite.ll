; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_dofilewrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_dofilewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, i32, i32 }
%struct.file = type { i64 }
%struct.uio = type { i64, i32, %struct.thread*, i32 }

@UIO_WRITE = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@KTR_GENIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.file*, %struct.uio*, i32, i32)* @dofilewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dofilewrite(%struct.thread* %0, i32 %1, %struct.file* %2, %struct.uio* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.file* %2, %struct.file** %9, align 8
  store %struct.uio* %3, %struct.uio** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @AUDIT_ARG_FD(i32 %15)
  %17 = load i32, i32* @UIO_WRITE, align 4
  %18 = load %struct.uio*, %struct.uio** %10, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.thread*, %struct.thread** %7, align 8
  %21 = load %struct.uio*, %struct.uio** %10, align 8
  %22 = getelementptr inbounds %struct.uio, %struct.uio* %21, i32 0, i32 2
  store %struct.thread* %20, %struct.thread** %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.uio*, %struct.uio** %10, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.uio*, %struct.uio** %10, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = load %struct.uio*, %struct.uio** %10, align 8
  %31 = load %struct.thread*, %struct.thread** %7, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.thread*, %struct.thread** %7, align 8
  %36 = call i32 @fo_write(%struct.file* %29, %struct.uio* %30, i32 %33, i32 %34, %struct.thread* %35)
  store i32 %36, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %6
  %39 = load %struct.uio*, %struct.uio** %10, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @ERESTART, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @EINTR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @EWOULDBLOCK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48, %44
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %56, %52, %38
  %58 = load %struct.file*, %struct.file** %9, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DTYPE_SOCKET, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @EPIPE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.thread*, %struct.thread** %7, align 8
  %69 = getelementptr inbounds %struct.thread, %struct.thread* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PROC_LOCK(i32 %70)
  %72 = load %struct.thread*, %struct.thread** %7, align 8
  %73 = load i32, i32* @SIGPIPE, align 4
  %74 = call i32 @tdsignal(%struct.thread* %72, i32 %73)
  %75 = load %struct.thread*, %struct.thread** %7, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @PROC_UNLOCK(i32 %77)
  br label %79

79:                                               ; preds = %67, %63, %57
  br label %80

80:                                               ; preds = %79, %6
  %81 = load %struct.uio*, %struct.uio** %10, align 8
  %82 = getelementptr inbounds %struct.uio, %struct.uio* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = sub nsw i64 %84, %83
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.thread*, %struct.thread** %7, align 8
  %88 = getelementptr inbounds %struct.thread, %struct.thread* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  store i64 %86, i64* %90, align 8
  %91 = load i32, i32* %14, align 4
  ret i32 %91
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @fo_write(%struct.file*, %struct.uio*, i32, i32, %struct.thread*) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @tdsignal(%struct.thread*, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
