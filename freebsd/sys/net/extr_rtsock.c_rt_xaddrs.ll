; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rt_xaddrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rt_xaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i64 }
%struct.rt_addrinfo = type { i32, %struct.sockaddr** }

@RTAX_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sa_zero = common dso_local global %struct.sockaddr zeroinitializer, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@V_ip6_use_defzone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.rt_addrinfo*)* @rt_xaddrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_xaddrs(i64 %0, i64 %1, %struct.rt_addrinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rt_addrinfo*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rt_addrinfo* %2, %struct.rt_addrinfo** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %65, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @RTAX_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %68

20:                                               ; preds = %18
  %21 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %22 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %65

29:                                               ; preds = %20
  %30 = load i64, i64* %5, align 8
  %31 = inttoptr i64 %30 to %struct.sockaddr*
  store %struct.sockaddr* %31, %struct.sockaddr** %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i64, i64* %6, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %69

41:                                               ; preds = %29
  %42 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %48 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %47, i32 0, i32 1
  %49 = load %struct.sockaddr**, %struct.sockaddr*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %49, i64 %51
  store %struct.sockaddr* @sa_zero, %struct.sockaddr** %52, align 8
  store i32 0, i32* %4, align 4
  br label %69

53:                                               ; preds = %41
  %54 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %55 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %56 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %55, i32 0, i32 1
  %57 = load %struct.sockaddr**, %struct.sockaddr*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %57, i64 %59
  store %struct.sockaddr* %54, %struct.sockaddr** %60, align 8
  %61 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %62 = call i64 @SA_SIZE(%struct.sockaddr* %61)
  %63 = load i64, i64* %5, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %53, %28
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %10

68:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %46, %39
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @SA_SIZE(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
