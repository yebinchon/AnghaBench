; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rwhod/extr_rwhod.c_rt_xaddrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rwhod/extr_rwhod.c_rt_xaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_addrinfo = type { i32, %struct.sockaddr** }
%struct.sockaddr = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_xaddrs(i64 %0, i64 %1, %struct.rt_addrinfo* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rt_addrinfo*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.rt_addrinfo* %2, %struct.rt_addrinfo** %6, align 8
  %9 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %10 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %9, i32 0, i32 1
  %11 = load %struct.sockaddr**, %struct.sockaddr*** %10, align 8
  %12 = call i32 @memset(%struct.sockaddr** %11, i32 0, i32 8)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %46, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @RTAX_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp slt i64 %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %49

23:                                               ; preds = %21
  %24 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %25 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %46

32:                                               ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = inttoptr i64 %33 to %struct.sockaddr*
  store %struct.sockaddr* %34, %struct.sockaddr** %7, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %36 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %37 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %36, i32 0, i32 1
  %38 = load %struct.sockaddr**, %struct.sockaddr*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %38, i64 %40
  store %struct.sockaddr* %35, %struct.sockaddr** %41, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %43 = call i64 @SA_SIZE(%struct.sockaddr* %42)
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %32, %31
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %13

49:                                               ; preds = %21
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr**, i32, i32) #1

declare dso_local i64 @SA_SIZE(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
