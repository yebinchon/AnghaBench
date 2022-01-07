; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_update_ifa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_update_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_aliasreq = type { i32 }
%struct.in6_ifaddr = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_update_ifa(%struct.ifnet* %0, %struct.in6_aliasreq* %1, %struct.in6_ifaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in6_aliasreq*, align 8
  %8 = alloca %struct.in6_ifaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.in6_aliasreq* %1, %struct.in6_aliasreq** %7, align 8
  store %struct.in6_ifaddr* %2, %struct.in6_ifaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %13 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %14 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @in6_validate_ifra(%struct.ifnet* %12, %struct.in6_aliasreq* %13, %struct.in6_ifaddr* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %22 = icmp eq %struct.in6_ifaddr* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  %24 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %25 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.in6_ifaddr* @in6_alloc_ifa(%struct.ifnet* %24, %struct.in6_aliasreq* %25, i32 %26)
  store %struct.in6_ifaddr* %27, %struct.in6_ifaddr** %8, align 8
  %28 = icmp eq %struct.in6_ifaddr* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOBUFS, align 4
  store i32 %30, i32* %5, align 4
  br label %64

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %34 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %35 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @in6_update_ifa_internal(%struct.ifnet* %33, %struct.in6_aliasreq* %34, %struct.in6_ifaddr* %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %46 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %47 = call i32 @in6_unlink_ifa(%struct.in6_ifaddr* %45, %struct.ifnet* %46)
  %48 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %49 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %48, i32 0, i32 0
  %50 = call i32 @ifa_free(i32* %49)
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %64

53:                                               ; preds = %32
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %58 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %59 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @in6_broadcast_ifa(%struct.ifnet* %57, %struct.in6_aliasreq* %58, %struct.in6_ifaddr* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %51, %29, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @in6_validate_ifra(%struct.ifnet*, %struct.in6_aliasreq*, %struct.in6_ifaddr*, i32) #1

declare dso_local %struct.in6_ifaddr* @in6_alloc_ifa(%struct.ifnet*, %struct.in6_aliasreq*, i32) #1

declare dso_local i32 @in6_update_ifa_internal(%struct.ifnet*, %struct.in6_aliasreq*, %struct.in6_ifaddr*, i32, i32) #1

declare dso_local i32 @in6_unlink_ifa(%struct.in6_ifaddr*, %struct.ifnet*) #1

declare dso_local i32 @ifa_free(i32*) #1

declare dso_local i32 @in6_broadcast_ifa(%struct.ifnet*, %struct.in6_aliasreq*, %struct.in6_ifaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
