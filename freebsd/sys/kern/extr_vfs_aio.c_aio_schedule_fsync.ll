; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_schedule_fsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_schedule_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaioinfo = type { i32 }
%struct.kaiocb = type { i32 }

@list = common dso_local global i32 0, align 4
@aio_process_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @aio_schedule_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_schedule_fsync(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kaioinfo*, align 8
  %6 = alloca %struct.kaiocb*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.kaioinfo*
  store %struct.kaioinfo* %8, %struct.kaioinfo** %5, align 8
  %9 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %10 = call i32 @AIO_LOCK(%struct.kaioinfo* %9)
  br label %11

11:                                               ; preds = %17, %2
  %12 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %13 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %12, i32 0, i32 0
  %14 = call i32 @TAILQ_EMPTY(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %19 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %18, i32 0, i32 0
  %20 = call %struct.kaiocb* @TAILQ_FIRST(i32* %19)
  store %struct.kaiocb* %20, %struct.kaiocb** %6, align 8
  %21 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %22 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %21, i32 0, i32 0
  %23 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %24 = load i32, i32* @list, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.kaiocb* %23, i32 %24)
  %26 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %27 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %26)
  %28 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %29 = load i32, i32* @aio_process_sync, align 4
  %30 = call i32 @aio_schedule(%struct.kaiocb* %28, i32 %29)
  %31 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %32 = call i32 @AIO_LOCK(%struct.kaioinfo* %31)
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %35 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %34)
  ret void
}

declare dso_local i32 @AIO_LOCK(%struct.kaioinfo*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.kaiocb* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.kaiocb*, i32) #1

declare dso_local i32 @AIO_UNLOCK(%struct.kaioinfo*) #1

declare dso_local i32 @aio_schedule(%struct.kaiocb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
