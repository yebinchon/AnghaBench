; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.connect_args = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AT_FDCWD = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_connect(%struct.thread* %0, %struct.connect_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.connect_args*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.connect_args* %1, %struct.connect_args** %4, align 8
  %7 = load %struct.connect_args*, %struct.connect_args** %4, align 8
  %8 = getelementptr inbounds %struct.connect_args, %struct.connect_args* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.connect_args*, %struct.connect_args** %4, align 8
  %11 = getelementptr inbounds %struct.connect_args, %struct.connect_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @getsockaddr(%struct.sockaddr** %5, i32 %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = load i32, i32* @AT_FDCWD, align 4
  %19 = load %struct.connect_args*, %struct.connect_args** %4, align 8
  %20 = getelementptr inbounds %struct.connect_args, %struct.connect_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %23 = call i32 @kern_connectat(%struct.thread* %17, i32 %18, i32 %21, %struct.sockaddr* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = load i32, i32* @M_SONAME, align 4
  %26 = call i32 @free(%struct.sockaddr* %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %2
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @getsockaddr(%struct.sockaddr**, i32, i32) #1

declare dso_local i32 @kern_connectat(%struct.thread*, i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
