; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_find_kfib_tentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_find_kfib_tentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rt_addrinfo = type { i32, i64, i32, i32, %struct.sockaddr** }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i64, i32, i32, %struct.sockaddr** }
%struct.sockaddr_in = type { i32 }

@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@RTA_NETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, %struct.TYPE_6__*)* @ta_find_kfib_tentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_find_kfib_tentry(i8* %0, %struct.table_info* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table_info*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.rt_addrinfo, align 8
  %9 = alloca %struct.sockaddr_in6, align 8
  %10 = alloca %struct.sockaddr_in6, align 8
  %11 = alloca %struct.sockaddr_in6, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.table_info* %1, %struct.table_info** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %15 = call i32 @bzero(%struct.sockaddr_in6* %10, i32 32)
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 0
  store i32 32, i32* %16, align 8
  %17 = bitcast %struct.sockaddr_in6* %10 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %12, align 8
  %18 = call i32 @bzero(%struct.sockaddr_in6* %11, i32 32)
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 0
  store i32 32, i32* %19, align 8
  %20 = bitcast %struct.sockaddr_in6* %11 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %14, align 8
  %21 = bitcast %struct.rt_addrinfo* %8 to %struct.sockaddr_in6*
  %22 = call i32 @bzero(%struct.sockaddr_in6* %21, i32 32)
  %23 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %24 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 4
  %25 = load %struct.sockaddr**, %struct.sockaddr*** %24, align 8
  %26 = load i64, i64* @RTAX_DST, align 8
  %27 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %25, i64 %26
  store %struct.sockaddr* %23, %struct.sockaddr** %27, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %29 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 4
  %30 = load %struct.sockaddr**, %struct.sockaddr*** %29, align 8
  %31 = load i64, i64* @RTAX_NETMASK, align 8
  %32 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %30, i64 %31
  store %struct.sockaddr* %28, %struct.sockaddr** %32, align 8
  %33 = call i32 @bzero(%struct.sockaddr_in6* %9, i32 32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr*
  store %struct.sockaddr* %38, %struct.sockaddr** %13, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_INET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr_in*
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  store i32 4, i32* %51, align 8
  br label %59

52:                                               ; preds = %3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  store i32 32, i32* %58, align 8
  br label %59

59:                                               ; preds = %52, %44
  %60 = load %struct.table_info*, %struct.table_info** %6, align 8
  %61 = getelementptr inbounds %struct.table_info, %struct.table_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %64 = bitcast %struct.rt_addrinfo* %8 to %struct.sockaddr_in6*
  %65 = call i64 @rib_lookup_info(i32 %62, %struct.sockaddr* %63, i32 0, i32 0, %struct.sockaddr_in6* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @ENOENT, align 4
  store i32 %68, i32* %4, align 4
  br label %81

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RTA_NETMASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store %struct.sockaddr* null, %struct.sockaddr** %14, align 8
  br label %76

76:                                               ; preds = %75, %69
  %77 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %78 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = call i32 @ta_dump_kfib_tentry_int(%struct.sockaddr* %77, %struct.sockaddr* %78, %struct.TYPE_6__* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %67
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i64 @rib_lookup_info(i32, %struct.sockaddr*, i32, i32, %struct.sockaddr_in6*) #1

declare dso_local i32 @ta_dump_kfib_tentry_int(%struct.sockaddr*, %struct.sockaddr*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
