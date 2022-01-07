; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_recvfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.recvfrom_args = type { i32, i32, i32, i32, i32, i32 }
%struct.msghdr = type { i32, i32, i64, %struct.iovec*, i32, i64 }
%struct.iovec = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_recvfrom(%struct.thread* %0, %struct.recvfrom_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.recvfrom_args*, align 8
  %5 = alloca %struct.msghdr, align 8
  %6 = alloca %struct.iovec, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.recvfrom_args* %1, %struct.recvfrom_args** %4, align 8
  %8 = load %struct.recvfrom_args*, %struct.recvfrom_args** %4, align 8
  %9 = getelementptr inbounds %struct.recvfrom_args, %struct.recvfrom_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.recvfrom_args*, %struct.recvfrom_args** %4, align 8
  %14 = getelementptr inbounds %struct.recvfrom_args, %struct.recvfrom_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 5
  %17 = call i32 @copyin(i32 %15, i64* %16, i32 8)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %52

21:                                               ; preds = %12
  br label %24

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 5
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = load %struct.recvfrom_args*, %struct.recvfrom_args** %4, align 8
  %26 = getelementptr inbounds %struct.recvfrom_args, %struct.recvfrom_args* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 3
  store %struct.iovec* %6, %struct.iovec** %29, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.recvfrom_args*, %struct.recvfrom_args** %4, align 8
  %32 = getelementptr inbounds %struct.recvfrom_args, %struct.recvfrom_args* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.recvfrom_args*, %struct.recvfrom_args** %4, align 8
  %36 = getelementptr inbounds %struct.recvfrom_args, %struct.recvfrom_args* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.recvfrom_args*, %struct.recvfrom_args** %4, align 8
  %41 = getelementptr inbounds %struct.recvfrom_args, %struct.recvfrom_args* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.thread*, %struct.thread** %3, align 8
  %45 = load %struct.recvfrom_args*, %struct.recvfrom_args** %4, align 8
  %46 = getelementptr inbounds %struct.recvfrom_args, %struct.recvfrom_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.recvfrom_args*, %struct.recvfrom_args** %4, align 8
  %49 = getelementptr inbounds %struct.recvfrom_args, %struct.recvfrom_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @recvit(%struct.thread* %44, i32 %47, %struct.msghdr* %5, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %24, %20
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @copyin(i32, i64*, i32) #1

declare dso_local i32 @recvit(%struct.thread*, i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
