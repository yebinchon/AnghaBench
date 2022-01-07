; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.uio = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@SO_NOSIGPIPE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @soo_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soo_write(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %15, %struct.socket** %11, align 8
  %16 = load %struct.socket*, %struct.socket** %11, align 8
  %17 = load %struct.uio*, %struct.uio** %7, align 8
  %18 = load %struct.uio*, %struct.uio** %7, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @sosend(%struct.socket* %16, i32 0, %struct.uio* %17, i32 0, i32 0, i32 0, %struct.TYPE_3__* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @EPIPE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %5
  %26 = load %struct.socket*, %struct.socket** %11, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SO_NOSIGPIPE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load %struct.uio*, %struct.uio** %7, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PROC_LOCK(i32 %37)
  %39 = load %struct.uio*, %struct.uio** %7, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* @SIGPIPE, align 4
  %43 = call i32 @tdsignal(%struct.TYPE_3__* %41, i32 %42)
  %44 = load %struct.uio*, %struct.uio** %7, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PROC_UNLOCK(i32 %48)
  br label %50

50:                                               ; preds = %32, %25, %5
  %51 = load i32, i32* %12, align 4
  ret i32 %51
}

declare dso_local i32 @sosend(%struct.socket*, i32, %struct.uio*, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @tdsignal(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
