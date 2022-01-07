; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaiocb = type { i32, %struct.proc*, %struct.TYPE_4__ }
%struct.proc = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@KAIOCB_FINISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"duplicate aio_complete\00", align 1
@KAIOCB_QUEUEING = common dso_local global i32 0, align 4
@KAIOCB_CANCELLING = common dso_local global i32 0, align 4
@plist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aio_complete(%struct.kaiocb* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.kaiocb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kaioinfo*, align 8
  %8 = alloca %struct.proc*, align 8
  store %struct.kaiocb* %0, %struct.kaiocb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.kaiocb*, %struct.kaiocb** %4, align 8
  %11 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.kaiocb*, %struct.kaiocb** %4, align 8
  %16 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i64 %14, i64* %18, align 8
  %19 = load %struct.kaiocb*, %struct.kaiocb** %4, align 8
  %20 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %19, i32 0, i32 1
  %21 = load %struct.proc*, %struct.proc** %20, align 8
  store %struct.proc* %21, %struct.proc** %8, align 8
  %22 = load %struct.proc*, %struct.proc** %8, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load %struct.kaioinfo*, %struct.kaioinfo** %23, align 8
  store %struct.kaioinfo* %24, %struct.kaioinfo** %7, align 8
  %25 = load %struct.kaioinfo*, %struct.kaioinfo** %7, align 8
  %26 = call i32 @AIO_LOCK(%struct.kaioinfo* %25)
  %27 = load %struct.kaiocb*, %struct.kaiocb** %4, align 8
  %28 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @KAIOCB_FINISHED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @KAIOCB_FINISHED, align 4
  %37 = load %struct.kaiocb*, %struct.kaiocb** %4, align 8
  %38 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.kaiocb*, %struct.kaiocb** %4, align 8
  %42 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @KAIOCB_QUEUEING, align 4
  %45 = load i32, i32* @KAIOCB_CANCELLING, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %3
  %50 = load %struct.kaioinfo*, %struct.kaioinfo** %7, align 8
  %51 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %50, i32 0, i32 0
  %52 = load %struct.kaiocb*, %struct.kaiocb** %4, align 8
  %53 = load i32, i32* @plist, align 4
  %54 = call i32 @TAILQ_REMOVE(i32* %51, %struct.kaiocb* %52, i32 %53)
  %55 = load %struct.proc*, %struct.proc** %8, align 8
  %56 = load %struct.kaiocb*, %struct.kaiocb** %4, align 8
  %57 = call i32 @aio_bio_done_notify(%struct.proc* %55, %struct.kaiocb* %56)
  br label %58

58:                                               ; preds = %49, %3
  %59 = load %struct.kaioinfo*, %struct.kaioinfo** %7, align 8
  %60 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %59)
  ret void
}

declare dso_local i32 @AIO_LOCK(%struct.kaioinfo*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.kaiocb*, i32) #1

declare dso_local i32 @aio_bio_done_notify(%struct.proc*, %struct.kaiocb*) #1

declare dso_local i32 @AIO_UNLOCK(%struct.kaioinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
