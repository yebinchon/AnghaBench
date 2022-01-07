; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_aio_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_aio_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket* }
%struct.socket = type { %struct.sockbuf, %struct.sockbuf, %struct.TYPE_5__* }
%struct.sockbuf = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.socket*, %struct.kaiocb*)* }
%struct.kaiocb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@soo_aio_cancel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"new job was cancelled\00", align 1
@list = common dso_local global i32 0, align 4
@SB_AIO_RUNNING = common dso_local global i32 0, align 4
@SB_AIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kaiocb*)* @soo_aio_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soo_aio_queue(%struct.file* %0, %struct.kaiocb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kaiocb*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.kaiocb* %1, %struct.kaiocb** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %6, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.socket*, %struct.kaiocb*)*, i32 (%struct.socket*, %struct.kaiocb*)** %17, align 8
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %21 = call i32 %18(%struct.socket* %19, %struct.kaiocb* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

25:                                               ; preds = %2
  %26 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %27 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %36 [
    i32 129, label %30
    i32 128, label %33
  ]

30:                                               ; preds = %25
  %31 = load %struct.socket*, %struct.socket** %6, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  store %struct.sockbuf* %32, %struct.sockbuf** %7, align 8
  br label %38

33:                                               ; preds = %25
  %34 = load %struct.socket*, %struct.socket** %6, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  store %struct.sockbuf* %35, %struct.sockbuf** %7, align 8
  br label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %33, %30
  %39 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %40 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %39)
  %41 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %42 = load i32, i32* @soo_aio_cancel, align 4
  %43 = call i32 @aio_set_cancel_function(%struct.kaiocb* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %38
  %48 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %49 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %48, i32 0, i32 1
  %50 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %51 = load i32, i32* @list, align 4
  %52 = call i32 @TAILQ_INSERT_TAIL(i32* %49, %struct.kaiocb* %50, i32 %51)
  %53 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %54 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SB_AIO_RUNNING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %47
  %60 = load %struct.socket*, %struct.socket** %6, align 8
  %61 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %62 = call i64 @soaio_ready(%struct.socket* %60, %struct.sockbuf* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.socket*, %struct.socket** %6, align 8
  %66 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %67 = call i32 @sowakeup_aio(%struct.socket* %65, %struct.sockbuf* %66)
  br label %74

68:                                               ; preds = %59
  %69 = load i32, i32* @SB_AIO, align 4
  %70 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %71 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %64
  br label %75

75:                                               ; preds = %74, %47
  %76 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %77 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %36, %24
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @SOCKBUF_LOCK(%struct.sockbuf*) #1

declare dso_local i32 @aio_set_cancel_function(%struct.kaiocb*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.kaiocb*, i32) #1

declare dso_local i64 @soaio_ready(%struct.socket*, %struct.sockbuf*) #1

declare dso_local i32 @sowakeup_aio(%struct.socket*, %struct.sockbuf*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
