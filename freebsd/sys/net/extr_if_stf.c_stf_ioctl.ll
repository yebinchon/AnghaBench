; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_stf.c_stf_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_stf.c_stf_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32 }
%struct.ifaddr = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifreq = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.in_addr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IPV6_MINMTU = common dso_local global i32 0, align 4
@IF_MAXMTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @stf_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stf_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ifaddr*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %98 [
    i32 129, label %15
    i32 132, label %61
    i32 131, label %61
    i32 130, label %77
    i32 128, label %78
  ]

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to %struct.ifaddr*
  store %struct.ifaddr* %17, %struct.ifaddr** %8, align 8
  %18 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %19 = icmp eq %struct.ifaddr* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %22 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AF_INET6, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20, %15
  %29 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %29, i32* %12, align 4
  br label %100

30:                                               ; preds = %20
  %31 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %32 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = bitcast %struct.TYPE_3__* %33 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %34, %struct.sockaddr_in6** %10, align 8
  %35 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 0
  %37 = call i32 @IN6_IS_ADDR_6TO4(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %12, align 4
  br label %100

41:                                               ; preds = %30
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 0
  %44 = call i32 @GET_V4(i32* %43)
  %45 = call i32 @bcopy(i32 %44, %struct.in_addr* %11, i32 4)
  %46 = call i32 @isrfc1918addr(%struct.in_addr* %11)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %12, align 4
  br label %100

50:                                               ; preds = %41
  %51 = load i32, i32* @IFF_UP, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %100

61:                                               ; preds = %3, %3
  %62 = load i64, i64* %7, align 8
  %63 = inttoptr i64 %62 to %struct.ifreq*
  store %struct.ifreq* %63, %struct.ifreq** %9, align 8
  %64 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %65 = icmp ne %struct.ifreq* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %68 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AF_INET6, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %76

74:                                               ; preds = %66, %61
  %75 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %74, %73
  br label %100

77:                                               ; preds = %3
  br label %100

78:                                               ; preds = %3
  %79 = load i64, i64* %7, align 8
  %80 = inttoptr i64 %79 to %struct.ifreq*
  store %struct.ifreq* %80, %struct.ifreq** %9, align 8
  %81 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %82 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @IPV6_MINMTU, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @IF_MAXMTU, align 4
  %90 = sub nsw i32 %89, 20
  %91 = icmp sgt i32 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87, %78
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %4, align 4
  br label %102

94:                                               ; preds = %87
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %100

98:                                               ; preds = %3
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %98, %94, %77, %76, %50, %48, %39, %28
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %92
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @IN6_IS_ADDR_6TO4(i32*) #1

declare dso_local i32 @bcopy(i32, %struct.in_addr*, i32) #1

declare dso_local i32 @GET_V4(i32*) #1

declare dso_local i32 @isrfc1918addr(%struct.in_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
