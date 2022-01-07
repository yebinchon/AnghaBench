; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_aio_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_aio_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaiocb = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.socket* }
%struct.socket = type { %struct.sockbuf, %struct.sockbuf }
%struct.sockbuf = type { i32, i32 }

@LIO_READ = common dso_local global i32 0, align 4
@LIO_WRITE = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@SB_AIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kaiocb*)* @soo_aio_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soo_aio_cancel(%struct.kaiocb* %0) #0 {
  %2 = alloca %struct.kaiocb*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kaiocb* %0, %struct.kaiocb** %2, align 8
  %7 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %8 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %3, align 8
  %12 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %13 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LIO_READ, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  store %struct.sockbuf* %21, %struct.sockbuf** %4, align 8
  br label %30

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @LIO_WRITE, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  store %struct.sockbuf* %29, %struct.sockbuf** %4, align 8
  br label %30

30:                                               ; preds = %22, %19
  %31 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %32 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %31)
  %33 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %34 = call i32 @aio_cancel_cleared(%struct.kaiocb* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %38 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %37, i32 0, i32 1
  %39 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %40 = load i32, i32* @list, align 4
  %41 = call i32 @TAILQ_REMOVE(i32* %38, %struct.kaiocb* %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %44 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %43, i32 0, i32 1
  %45 = call i64 @TAILQ_EMPTY(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @SB_AIO, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %51 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %56 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %55)
  %57 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %58 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @aio_complete(%struct.kaiocb* %63, i64 %64, i32 0)
  br label %69

66:                                               ; preds = %54
  %67 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %68 = call i32 @aio_cancel(%struct.kaiocb* %67)
  br label %69

69:                                               ; preds = %66, %62
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.sockbuf*) #1

declare dso_local i32 @aio_cancel_cleared(%struct.kaiocb*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.kaiocb*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

declare dso_local i32 @aio_complete(%struct.kaiocb*, i64, i32) #1

declare dso_local i32 @aio_cancel(%struct.kaiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
