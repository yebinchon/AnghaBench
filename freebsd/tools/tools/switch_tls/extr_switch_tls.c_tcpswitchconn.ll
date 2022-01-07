; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_tcpswitchconn.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_tcpswitchconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_conninfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32, i8*, i32, i32, i8* }
%struct.sockaddr_in = type { i32, i32, i32, i32, i8*, i32, i32, i8* }

@INC_ISIPV6 = common dso_local global i32 0, align 4
@TCPDROP_LOCAL = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@TCPDROP_FOREIGN = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_conninfo*, i32)* @tcpswitchconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpswitchconn(%struct.in_conninfo* %0, i32 %1) #0 {
  %3 = alloca %struct.in_conninfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca [2 x %struct.sockaddr_in6], align 16
  %8 = alloca [2 x %struct.sockaddr_in], align 16
  store %struct.in_conninfo* %0, %struct.in_conninfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %10 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INC_ISIPV6, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %2
  %16 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 0
  %17 = call i32 @memset(%struct.sockaddr_in6* %16, i32 0, i32 80)
  %18 = load i64, i64* @TCPDROP_LOCAL, align 8
  %19 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 0
  store i32 40, i32* %20, align 8
  %21 = load i8*, i8** @AF_INET6, align 8
  %22 = load i64, i64* @TCPDROP_LOCAL, align 8
  %23 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %23, i32 0, i32 7
  store i8* %21, i8** %24, align 8
  %25 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %26 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @TCPDROP_LOCAL, align 8
  %29 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 6
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* @TCPDROP_LOCAL, align 8
  %32 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 5
  %34 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %35 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %34, i32 0, i32 6
  %36 = call i32 @memcpy(i32* %33, i32* %35, i32 4)
  %37 = load i64, i64* @TCPDROP_LOCAL, align 8
  %38 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %37
  %39 = bitcast %struct.sockaddr_in6* %38 to %struct.sockaddr*
  store %struct.sockaddr* %39, %struct.sockaddr** %5, align 8
  %40 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %41 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  store i32 40, i32* %42, align 8
  %43 = load i8*, i8** @AF_INET6, align 8
  %44 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %45 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 7
  store i8* %43, i8** %46, align 8
  %47 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %48 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %51 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 6
  store i32 %49, i32* %52, align 4
  %53 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %54 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %54, i32 0, i32 5
  %56 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %57 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %56, i32 0, i32 5
  %58 = call i32 @memcpy(i32* %55, i32* %57, i32 4)
  %59 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %60 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %7, i64 0, i64 %59
  %61 = bitcast %struct.sockaddr_in6* %60 to %struct.sockaddr*
  store %struct.sockaddr* %61, %struct.sockaddr** %6, align 8
  br label %110

62:                                               ; preds = %2
  %63 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 0
  %64 = bitcast %struct.sockaddr_in* %63 to %struct.sockaddr_in6*
  %65 = call i32 @memset(%struct.sockaddr_in6* %64, i32 0, i32 80)
  %66 = load i64, i64* @TCPDROP_LOCAL, align 8
  %67 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %67, i32 0, i32 1
  store i32 40, i32* %68, align 4
  %69 = load i8*, i8** @AF_INET, align 8
  %70 = load i64, i64* @TCPDROP_LOCAL, align 8
  %71 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %71, i32 0, i32 4
  store i8* %69, i8** %72, align 8
  %73 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %74 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* @TCPDROP_LOCAL, align 8
  %77 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = load i64, i64* @TCPDROP_LOCAL, align 8
  %80 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %80, i32 0, i32 2
  %82 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %83 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %82, i32 0, i32 3
  %84 = call i32 @memcpy(i32* %81, i32* %83, i32 4)
  %85 = load i64, i64* @TCPDROP_LOCAL, align 8
  %86 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %85
  %87 = bitcast %struct.sockaddr_in* %86 to %struct.sockaddr*
  store %struct.sockaddr* %87, %struct.sockaddr** %5, align 8
  %88 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %89 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %89, i32 0, i32 1
  store i32 40, i32* %90, align 4
  %91 = load i8*, i8** @AF_INET, align 8
  %92 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %93 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %93, i32 0, i32 4
  store i8* %91, i8** %94, align 8
  %95 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %96 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %99 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  %101 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %102 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %102, i32 0, i32 2
  %104 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %105 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %104, i32 0, i32 1
  %106 = call i32 @memcpy(i32* %103, i32* %105, i32 4)
  %107 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %108 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %8, i64 0, i64 %107
  %109 = bitcast %struct.sockaddr_in* %108 to %struct.sockaddr*
  store %struct.sockaddr* %109, %struct.sockaddr** %6, align 8
  br label %110

110:                                              ; preds = %62, %15
  %111 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %112 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @tcpswitch(%struct.sockaddr* %111, %struct.sockaddr* %112, i32 %113)
  ret i32 %114
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tcpswitch(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
