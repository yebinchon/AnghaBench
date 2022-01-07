; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_wait_for_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_wait_for_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.timeval = type { i32, i64 }

@NFDBITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@waittime = common dso_local global i32 0, align 4
@rcvsock = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for_reply(i32 %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* @NFDBITS, align 4
  %12 = call i32 @howmany(i32 %10, i32 %11)
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @malloc(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @memset(i32* %23, i32 0, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @FD_SET(i32 %26, i32* %27)
  %29 = load i32, i32* @waittime, align 4
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @select(i32 %33, i32* %34, i32* null, i32* null, %struct.timeval* %6)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load i32, i32* @rcvsock, align 4
  %39 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %40 = call i32 @recvmsg(i32 %38, %struct.msghdr* %39, i32 0)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %22
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @free(i32* %42)
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
