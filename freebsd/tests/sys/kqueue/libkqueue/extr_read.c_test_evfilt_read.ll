; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_read.c_test_evfilt_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_read.c_test_evfilt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@sockfd = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_evfilt_read() #0 {
  %1 = load i32, i32* @AF_UNIX, align 4
  %2 = load i32, i32* @SOCK_STREAM, align 4
  %3 = load i32, i32* @sockfd, align 4
  %4 = call i64 @socketpair(i32 %1, i32 %2, i32 0, i32 %3)
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @abort() #3
  unreachable

8:                                                ; preds = %0
  %9 = call i32 (...) @kqueue()
  store i32 %9, i32* @kqfd, align 4
  %10 = call i32 (...) @test_kevent_socket_add()
  %11 = call i32 (...) @test_kevent_socket_del()
  %12 = call i32 (...) @test_kevent_socket_get()
  %13 = call i32 (...) @test_kevent_socket_disable_and_enable()
  %14 = call i32 (...) @test_kevent_socket_oneshot()
  %15 = call i32 (...) @test_kevent_socket_clear()
  %16 = call i32 (...) @test_kevent_socket_eof()
  %17 = load i32, i32* @kqfd, align 4
  %18 = call i32 @close(i32 %17)
  ret void
}

declare dso_local i64 @socketpair(i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @test_kevent_socket_add(...) #1

declare dso_local i32 @test_kevent_socket_del(...) #1

declare dso_local i32 @test_kevent_socket_get(...) #1

declare dso_local i32 @test_kevent_socket_disable_and_enable(...) #1

declare dso_local i32 @test_kevent_socket_oneshot(...) #1

declare dso_local i32 @test_kevent_socket_clear(...) #1

declare dso_local i32 @test_kevent_socket_eof(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
