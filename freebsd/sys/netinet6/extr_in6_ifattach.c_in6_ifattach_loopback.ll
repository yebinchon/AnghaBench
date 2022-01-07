; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_in6_ifattach_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_in6_ifattach_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_aliasreq = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@in6addr_loopback = common dso_local global i32 0, align 4
@in6mask128 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ND6_INFINITE_LIFETIME = common dso_local global i8* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"in6_ifattach_loopback: failed to configure the loopback address on %s (errno=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @in6_ifattach_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_ifattach_loopback(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.in6_aliasreq, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = call i32 @in6_prepare_ifra(%struct.in6_aliasreq* %4, i32* @in6addr_loopback, i32* @in6mask128)
  %7 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @in6addr_loopback, align 4
  %13 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i8*, i8** @ND6_INFINITE_LIFETIME, align 8
  %16 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %4, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @ND6_INFINITE_LIFETIME, align 8
  %19 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %4, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = call i32 @in6_update_ifa(%struct.ifnet* %21, %struct.in6_aliasreq* %4, i32* null, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %27 = call i32 @if_name(%struct.ifnet* %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @nd6log(i32 %28)
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @in6_prepare_ifra(%struct.in6_aliasreq*, i32*, i32*) #1

declare dso_local i32 @in6_update_ifa(%struct.ifnet*, %struct.in6_aliasreq*, i32*, i32) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
