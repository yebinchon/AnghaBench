; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_bindat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_bindat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sockaddr = type { i32 }
%struct.socket = type { i32 }
%struct.file = type { %struct.socket* }

@cap_bind_rights = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@ECAPMODE = common dso_local global i32 0, align 4
@KTR_STRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_bindat(%struct.thread* %0, i32 %1, i32 %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @AUDIT_ARG_FD(i32 %13)
  %15 = load %struct.thread*, %struct.thread** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %18 = call i32 @AUDIT_ARG_SOCKADDR(%struct.thread* %15, i32 %16, %struct.sockaddr* %17)
  %19 = load %struct.thread*, %struct.thread** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @getsock_cap(%struct.thread* %19, i32 %20, i32* @cap_bind_rights, %struct.file** %11, i32* null, i32* null)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %49

26:                                               ; preds = %4
  %27 = load %struct.file*, %struct.file** %11, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load %struct.socket*, %struct.socket** %28, align 8
  store %struct.socket* %29, %struct.socket** %10, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AT_FDCWD, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.socket*, %struct.socket** %10, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = call i32 @sobind(%struct.socket* %34, %struct.sockaddr* %35, %struct.thread* %36)
  store i32 %37, i32* %12, align 4
  br label %44

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.socket*, %struct.socket** %10, align 8
  %41 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %42 = load %struct.thread*, %struct.thread** %6, align 8
  %43 = call i32 @sobindat(i32 %39, %struct.socket* %40, %struct.sockaddr* %41, %struct.thread* %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.file*, %struct.file** %11, align 8
  %46 = load %struct.thread*, %struct.thread** %6, align 8
  %47 = call i32 @fdrop(%struct.file* %45, %struct.thread* %46)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %24
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @AUDIT_ARG_SOCKADDR(%struct.thread*, i32, %struct.sockaddr*) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @sobind(%struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @sobindat(i32, %struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
