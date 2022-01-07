; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_proc_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_proc_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i32, i32 }
%struct.kevent = type { i64, i64 }
%struct.dcons_port = type { i64 }

@NEVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcons_state*)* @dconschat_proc_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dconschat_proc_socket(%struct.dcons_state* %0) #0 {
  %2 = alloca %struct.dcons_state*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dcons_port*, align 8
  store %struct.dcons_state* %0, %struct.dcons_state** %2, align 8
  %9 = load i32, i32* @NEVENT, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca %struct.kevent, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.dcons_state*, %struct.dcons_state** %2, align 8
  %14 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NEVENT, align 4
  %17 = load %struct.dcons_state*, %struct.dcons_state** %2, align 8
  %18 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %17, i32 0, i32 0
  %19 = call i32 @kevent(i32 %15, i32* null, i32 0, %struct.kevent* %12, i32 %16, i32* %18)
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %48, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.kevent, %struct.kevent* %12, i64 %26
  store %struct.kevent* %27, %struct.kevent** %5, align 8
  %28 = load %struct.kevent*, %struct.kevent** %5, align 8
  %29 = getelementptr inbounds %struct.kevent, %struct.kevent* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.dcons_port*
  store %struct.dcons_port* %31, %struct.dcons_port** %8, align 8
  %32 = load %struct.kevent*, %struct.kevent** %5, align 8
  %33 = getelementptr inbounds %struct.kevent, %struct.kevent* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %36 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load %struct.dcons_state*, %struct.dcons_state** %2, align 8
  %41 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %42 = call i32 @dconschat_accept_socket(%struct.dcons_state* %40, %struct.dcons_port* %41)
  br label %47

43:                                               ; preds = %24
  %44 = load %struct.dcons_state*, %struct.dcons_state** %2, align 8
  %45 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %46 = call i32 @dconschat_read_socket(%struct.dcons_state* %44, %struct.dcons_port* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %20

51:                                               ; preds = %20
  %52 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kevent(i32, i32*, i32, %struct.kevent*, i32, i32*) #2

declare dso_local i32 @dconschat_accept_socket(%struct.dcons_state*, %struct.dcons_port*) #2

declare dso_local i32 @dconschat_read_socket(%struct.dcons_state*, %struct.dcons_port*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
