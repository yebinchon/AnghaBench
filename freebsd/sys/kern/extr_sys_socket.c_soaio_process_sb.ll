; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soaio_process_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soaio_process_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockbuf = type { i32, i32 }
%struct.kaiocb = type { i32 }

@list = common dso_local global i32 0, align 4
@SB_AIO = common dso_local global i32 0, align 4
@SB_AIO_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, %struct.sockbuf*)* @soaio_process_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soaio_process_sb(%struct.socket* %0, %struct.sockbuf* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.kaiocb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %4, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @CURVNET_SET(i32 %8)
  %10 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %11 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %10)
  br label %12

12:                                               ; preds = %37, %36, %2
  %13 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %14 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %13, i32 0, i32 1
  %15 = call i32 @TAILQ_EMPTY(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.socket*, %struct.socket** %3, align 8
  %19 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %20 = call i64 @soaio_ready(%struct.socket* %18, %struct.sockbuf* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %42

24:                                               ; preds = %22
  %25 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %26 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %25, i32 0, i32 1
  %27 = call %struct.kaiocb* @TAILQ_FIRST(i32* %26)
  store %struct.kaiocb* %27, %struct.kaiocb** %5, align 8
  %28 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %29 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %28, i32 0, i32 1
  %30 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %31 = load i32, i32* @list, align 4
  %32 = call i32 @TAILQ_REMOVE(i32* %29, %struct.kaiocb* %30, i32 %31)
  %33 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %34 = call i32 @aio_clear_cancel_function(%struct.kaiocb* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %12

37:                                               ; preds = %24
  %38 = load %struct.socket*, %struct.socket** %3, align 8
  %39 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %40 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %41 = call i32 @soaio_process_job(%struct.socket* %38, %struct.sockbuf* %39, %struct.kaiocb* %40)
  br label %12

42:                                               ; preds = %22
  %43 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %44 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %43, i32 0, i32 1
  %45 = call i32 @TAILQ_EMPTY(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @SB_AIO, align 4
  %49 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %50 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* @SB_AIO_RUNNING, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %57 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %61 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %60)
  %62 = load %struct.socket*, %struct.socket** %3, align 8
  %63 = call i32 @SOCK_LOCK(%struct.socket* %62)
  %64 = load %struct.socket*, %struct.socket** %3, align 8
  %65 = call i32 @sorele(%struct.socket* %64)
  %66 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.sockbuf*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @soaio_ready(%struct.socket*, %struct.sockbuf*) #1

declare dso_local %struct.kaiocb* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.kaiocb*, i32) #1

declare dso_local i32 @aio_clear_cancel_function(%struct.kaiocb*) #1

declare dso_local i32 @soaio_process_job(%struct.socket*, %struct.sockbuf*, %struct.kaiocb*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @sorele(%struct.socket*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
