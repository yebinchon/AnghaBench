; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.socket = type { i32 }
%struct.file = type { %struct.socket* }

@cap_shutdown_rights = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@P_OSREL_SHUTDOWN_ENOTCONN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_shutdown(%struct.thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @AUDIT_ARG_FD(i32 %10)
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @getsock_cap(%struct.thread* %12, i32 %13, i32* @cap_shutdown_rights, %struct.file** %8, i32* null, i32* null)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %8, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.socket*, %struct.socket** %19, align 8
  store %struct.socket* %20, %struct.socket** %7, align 8
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @soshutdown(%struct.socket* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @ENOTCONN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @P_OSREL_SHUTDOWN_ENOTCONN, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %27, %17
  %37 = load %struct.file*, %struct.file** %8, align 8
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = call i32 @fdrop(%struct.file* %37, %struct.thread* %38)
  br label %40

40:                                               ; preds = %36, %3
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @soshutdown(%struct.socket*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
