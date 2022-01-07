; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fticket_aw_pull_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fticket_aw_pull_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { i32, i64, i32 }
%struct.uio = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"FUSE: unknown answer type for ticket %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_ticket*, %struct.uio*)* @fticket_aw_pull_uio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fticket_aw_pull_uio(%struct.fuse_ticket* %0, %struct.uio* %1) #0 {
  %3 = alloca %struct.fuse_ticket*, align 8
  %4 = alloca %struct.uio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.fuse_ticket* %0, %struct.fuse_ticket** %3, align 8
  store %struct.uio* %1, %struct.uio** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.uio*, %struct.uio** %4, align 8
  %8 = call i64 @uio_resid(%struct.uio* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %13 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %37 [
    i32 128, label %15
    i32 129, label %27
  ]

15:                                               ; preds = %11
  %16 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %17 = call %struct.TYPE_3__* @fticket_resp(%struct.fuse_ticket* %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @fiov_adjust(%struct.TYPE_3__* %17, i64 %18)
  %20 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %21 = call %struct.TYPE_3__* @fticket_resp(%struct.fuse_ticket* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.uio*, %struct.uio** %4, align 8
  %26 = call i32 @uiomove(i32 %23, i64 %24, %struct.uio* %25)
  store i32 %26, i32* %5, align 4
  br label %40

27:                                               ; preds = %11
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %30 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %32 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.uio*, %struct.uio** %4, align 8
  %36 = call i32 @uiomove(i32 %33, i64 %34, %struct.uio* %35)
  store i32 %36, i32* %5, align 4
  br label %40

37:                                               ; preds = %11
  %38 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %39 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.fuse_ticket* %38)
  br label %40

40:                                               ; preds = %37, %27, %15
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @fiov_adjust(%struct.TYPE_3__*, i64) #1

declare dso_local %struct.TYPE_3__* @fticket_resp(%struct.fuse_ticket*) #1

declare dso_local i32 @uiomove(i32, i64, %struct.uio*) #1

declare dso_local i32 @panic(i8*, %struct.fuse_ticket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
