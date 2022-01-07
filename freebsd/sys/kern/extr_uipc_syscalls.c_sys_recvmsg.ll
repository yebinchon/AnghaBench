; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_recvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.recvmsg_args = type { i32, i32, i32 }
%struct.msghdr = type { %struct.iovec*, i32, i32 }
%struct.iovec = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4
@MSG_COMPAT = common dso_local global i32 0, align 4
@SV_AOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_recvmsg(%struct.thread* %0, %struct.recvmsg_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.recvmsg_args*, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.recvmsg_args* %1, %struct.recvmsg_args** %5, align 8
  %10 = load %struct.recvmsg_args*, %struct.recvmsg_args** %5, align 8
  %11 = getelementptr inbounds %struct.recvmsg_args, %struct.recvmsg_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @copyin(i32 %12, %struct.msghdr* %6, i32 16)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %20 = load %struct.iovec*, %struct.iovec** %19, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = call i32 @copyiniov(%struct.iovec* %20, i32 %22, %struct.iovec** %8, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %18
  %30 = load %struct.recvmsg_args*, %struct.recvmsg_args** %5, align 8
  %31 = getelementptr inbounds %struct.recvmsg_args, %struct.recvmsg_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %35 = load %struct.iovec*, %struct.iovec** %34, align 8
  store %struct.iovec* %35, %struct.iovec** %7, align 8
  %36 = load %struct.iovec*, %struct.iovec** %8, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store %struct.iovec* %36, %struct.iovec** %37, align 8
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = load %struct.recvmsg_args*, %struct.recvmsg_args** %5, align 8
  %40 = getelementptr inbounds %struct.recvmsg_args, %struct.recvmsg_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @recvit(%struct.thread* %38, i32 %41, %struct.msghdr* %6, i32* null)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load %struct.iovec*, %struct.iovec** %7, align 8
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store %struct.iovec* %46, %struct.iovec** %47, align 8
  %48 = load %struct.recvmsg_args*, %struct.recvmsg_args** %5, align 8
  %49 = getelementptr inbounds %struct.recvmsg_args, %struct.recvmsg_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @copyout(%struct.msghdr* %6, i32 %50, i32 16)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %45, %29
  %53 = load %struct.iovec*, %struct.iovec** %8, align 8
  %54 = load i32, i32* @M_IOV, align 4
  %55 = call i32 @free(%struct.iovec* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %27, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @copyin(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @copyiniov(%struct.iovec*, i32, %struct.iovec**, i32) #1

declare dso_local i32 @recvit(%struct.thread*, i32, %struct.msghdr*, i32*) #1

declare dso_local i32 @copyout(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @free(%struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
