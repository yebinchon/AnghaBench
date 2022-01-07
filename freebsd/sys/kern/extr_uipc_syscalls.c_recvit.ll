; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_recvit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_recvit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.msghdr = type { i32, i32 }

@UIO_USERSPACE = common dso_local global i32 0, align 4
@MSG_COMPAT = common dso_local global i32 0, align 4
@SV_AOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.msghdr*, i8*)* @recvit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recvit(%struct.thread* %0, i32 %1, %struct.msghdr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.thread*, %struct.thread** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %14 = load i32, i32* @UIO_USERSPACE, align 4
  %15 = call i32 @kern_recvit(%struct.thread* %11, i32 %12, %struct.msghdr* %13, i32 %14, i32* null)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 1
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @copyout(i32* %25, i8* %26, i32 4)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @kern_recvit(%struct.thread*, i32, %struct.msghdr*, i32, i32*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
