; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_server.c_tcpp_server_newconn.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_server.c_tcpp_server_newconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@CONNECTION_MAGIC = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@kq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.connection* (i32)* @tcpp_server_newconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.connection* @tcpp_server_newconn(i32 %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.kevent, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @accept(i32 %7, i32* null, i32* null)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.connection* null, %struct.connection** %2, align 8
  br label %47

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @F_SETFL, align 4
  %16 = load i32, i32* @O_NONBLOCK, align 4
  %17 = call i64 @fcntl(i32 %14, i32 %15, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @err(i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = call %struct.connection* @malloc(i32 8)
  store %struct.connection* %22, %struct.connection** %4, align 8
  %23 = load %struct.connection*, %struct.connection** %4, align 8
  %24 = icmp eq %struct.connection* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.connection* null, %struct.connection** %2, align 8
  br label %47

26:                                               ; preds = %21
  %27 = load %struct.connection*, %struct.connection** %4, align 8
  %28 = call i32 @bzero(%struct.connection* %27, i32 8)
  %29 = load i32, i32* @CONNECTION_MAGIC, align 4
  %30 = load %struct.connection*, %struct.connection** %4, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.connection*, %struct.connection** %4, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EVFILT_READ, align 4
  %37 = load i32, i32* @EV_ADD, align 4
  %38 = load %struct.connection*, %struct.connection** %4, align 8
  %39 = call i32 @EV_SET(%struct.kevent* %5, i32 %35, i32 %36, i32 %37, i32 0, i32 0, %struct.connection* %38)
  %40 = load i32, i32* @kq, align 4
  %41 = call i64 @kevent(i32 %40, %struct.kevent* %5, i32 1, i32* null, i32 0, i32* null)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %26
  %46 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %46, %struct.connection** %2, align 8
  br label %47

47:                                               ; preds = %45, %25, %11
  %48 = load %struct.connection*, %struct.connection** %2, align 8
  ret %struct.connection* %48
}

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.connection* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.connection*, i32) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, %struct.connection*) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
