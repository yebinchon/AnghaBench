; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_sa6_checkzone_ifp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_sa6_checkzone_ifp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr_in6 = type { i64, i32 }

@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_INTFACELOCAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa6_checkzone_ifp(%struct.ifnet* %0, %struct.sockaddr_in6* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %5, align 8
  %7 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %8 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  %9 = call i32 @in6_addrscope(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IPV6_ADDR_SCOPE_LINKLOCAL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IPV6_ADDR_SCOPE_INTFACELOCAL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13, %2
  %18 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @in6_getscopezone(%struct.ifnet* %23, i32 %24)
  %26 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  store i32 0, i32* %3, align 4
  br label %43

28:                                               ; preds = %17
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @in6_getscopezone(%struct.ifnet* %32, i32 %33)
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39, %13
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %42 = call i32 @sa6_checkzone(%struct.sockaddr_in6* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %36, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @in6_addrscope(i32*) #1

declare dso_local i64 @in6_getscopezone(%struct.ifnet*, i32) #1

declare dso_local i32 @sa6_checkzone(%struct.sockaddr_in6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
