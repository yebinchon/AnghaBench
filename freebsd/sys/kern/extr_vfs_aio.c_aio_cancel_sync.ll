; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_cancel_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_cancel_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaiocb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i32 }

@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kaiocb*)* @aio_cancel_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_cancel_sync(%struct.kaiocb* %0) #0 {
  %2 = alloca %struct.kaiocb*, align 8
  %3 = alloca %struct.kaioinfo*, align 8
  store %struct.kaiocb* %0, %struct.kaiocb** %2, align 8
  %4 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %5 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.kaioinfo*, %struct.kaioinfo** %7, align 8
  store %struct.kaioinfo* %8, %struct.kaioinfo** %3, align 8
  %9 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %10 = call i32 @AIO_LOCK(%struct.kaioinfo* %9)
  %11 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %12 = call i32 @aio_cancel_cleared(%struct.kaiocb* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %16 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %15, i32 0, i32 0
  %17 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %18 = load i32, i32* @list, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.kaiocb* %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %22 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %21)
  %23 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %24 = call i32 @aio_cancel(%struct.kaiocb* %23)
  ret void
}

declare dso_local i32 @AIO_LOCK(%struct.kaioinfo*) #1

declare dso_local i32 @aio_cancel_cleared(%struct.kaiocb*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.kaiocb*, i32) #1

declare dso_local i32 @AIO_UNLOCK(%struct.kaioinfo*) #1

declare dso_local i32 @aio_cancel(%struct.kaiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
