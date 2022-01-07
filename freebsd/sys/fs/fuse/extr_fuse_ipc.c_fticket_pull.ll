; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fticket_pull.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fticket_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.uio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fticket_pull(%struct.fuse_ticket* %0, %struct.uio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuse_ticket*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  store %struct.fuse_ticket* %0, %struct.fuse_ticket** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %8 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %15 = load %struct.uio*, %struct.uio** %5, align 8
  %16 = call i32 @uio_resid(%struct.uio* %15)
  %17 = call i32 @fuse_body_audit(%struct.fuse_ticket* %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %22 = load %struct.uio*, %struct.uio** %5, align 8
  %23 = call i32 @fticket_aw_pull_uio(%struct.fuse_ticket* %21, %struct.uio* %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @fuse_body_audit(%struct.fuse_ticket*, i32) #1

declare dso_local i32 @uio_resid(%struct.uio*) #1

declare dso_local i32 @fticket_aw_pull_uio(%struct.fuse_ticket*, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
