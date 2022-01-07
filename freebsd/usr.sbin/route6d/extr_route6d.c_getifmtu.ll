; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_getifmtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_getifmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_msghdr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NET_RT_IFLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sysctl estimate NET_RT_IFLIST\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sysctl NET_RT_IFLIST\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ifindex does not match with ifm_index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getifmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getifmtu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [6 x i32], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.if_msghdr*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @CTL_NET, align 4
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 %8, i32* %9, align 16
  %10 = load i32, i32* @PF_ROUTE, align 4
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 0, i32* %12, align 8
  %13 = load i32, i32* @AF_INET6, align 4
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @NET_RT_IFLIST, align 4
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %15, i32* %16, align 16
  %17 = load i32, i32* %2, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %21 = call i32 @nitems(i32* %20)
  %22 = call i64 @sysctl(i32* %19, i32 %21, i8* null, i64* %5, i32* null, i32 0)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i64, i64* %5, align 8
  %28 = call i8* @malloc(i64 %27)
  store i8* %28, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %35 = call i32 @nitems(i32* %34)
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @sysctl(i32* %33, i32 %35, i8* %36, i64* %5, i32* null, i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i8*, i8** %4, align 8
  %43 = bitcast i8* %42 to %struct.if_msghdr*
  store %struct.if_msghdr* %43, %struct.if_msghdr** %6, align 8
  %44 = load %struct.if_msghdr*, %struct.if_msghdr** %6, align 8
  %45 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.if_msghdr*, %struct.if_msghdr** %6, align 8
  %50 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = call i32 @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %41
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
