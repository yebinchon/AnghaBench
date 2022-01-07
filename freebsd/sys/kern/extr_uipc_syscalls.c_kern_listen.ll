; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.socket = type { i32 }
%struct.file = type { %struct.socket* }

@cap_listen_rights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_listen(%struct.thread* %0, i32 %1, i32 %2) #0 {
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
  %14 = call i32 @getsock_cap(%struct.thread* %12, i32 %13, i32* @cap_listen_rights, %struct.file** %8, i32* null, i32* null)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %8, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.socket*, %struct.socket** %19, align 8
  store %struct.socket* %20, %struct.socket** %7, align 8
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = call i32 @solisten(%struct.socket* %21, i32 %22, %struct.thread* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.file*, %struct.file** %8, align 8
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = call i32 @fdrop(%struct.file* %25, %struct.thread* %26)
  br label %28

28:                                               ; preds = %17, %3
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @solisten(%struct.socket*, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
