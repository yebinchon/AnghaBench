; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/tcpdrop/extr_tcpdrop.c_tcpdropconn.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/tcpdrop/extr_tcpdrop.c_tcpdropconn.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_conninfo*)* @tcpdropconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpdropconn(%struct.in_conninfo* %0) #0 {
  %2 = alloca %struct.in_conninfo*, align 8
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca [2 x %struct.sockaddr_in6], align 16
  %6 = alloca [2 x %struct.sockaddr_in], align 16
  store %struct.in_conninfo* %0, %struct.in_conninfo** %2, align 8
  %7 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %8 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @INC_ISIPV6, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %1
  %14 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 0
  %15 = call i32 @memset(%struct.sockaddr_in6* %14, i32 0, i32 80)
  %16 = load i64, i64* @TCPDROP_LOCAL, align 8
  %17 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 0
  store i32 40, i32* %18, align 8
  %19 = load i8*, i8** @AF_INET6, align 8
  %20 = load i64, i64* @TCPDROP_LOCAL, align 8
  %21 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 7
  store i8* %19, i8** %22, align 8
  %23 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %24 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @TCPDROP_LOCAL, align 8
  %27 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* @TCPDROP_LOCAL, align 8
  %30 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %30, i32 0, i32 5
  %32 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %33 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %32, i32 0, i32 6
  %34 = call i32 @memcpy(i32* %31, i32* %33, i32 4)
  %35 = load i64, i64* @TCPDROP_LOCAL, align 8
  %36 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %35
  %37 = bitcast %struct.sockaddr_in6* %36 to %struct.sockaddr*
  store %struct.sockaddr* %37, %struct.sockaddr** %3, align 8
  %38 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %39 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 0
  store i32 40, i32* %40, align 8
  %41 = load i8*, i8** @AF_INET6, align 8
  %42 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %43 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 7
  store i8* %41, i8** %44, align 8
  %45 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %46 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %49 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %52 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 5
  %54 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %55 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %54, i32 0, i32 5
  %56 = call i32 @memcpy(i32* %53, i32* %55, i32 4)
  %57 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %58 = getelementptr inbounds [2 x %struct.sockaddr_in6], [2 x %struct.sockaddr_in6]* %5, i64 0, i64 %57
  %59 = bitcast %struct.sockaddr_in6* %58 to %struct.sockaddr*
  store %struct.sockaddr* %59, %struct.sockaddr** %4, align 8
  br label %108

60:                                               ; preds = %1
  %61 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 0
  %62 = bitcast %struct.sockaddr_in* %61 to %struct.sockaddr_in6*
  %63 = call i32 @memset(%struct.sockaddr_in6* %62, i32 0, i32 80)
  %64 = load i64, i64* @TCPDROP_LOCAL, align 8
  %65 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %65, i32 0, i32 1
  store i32 40, i32* %66, align 4
  %67 = load i8*, i8** @AF_INET, align 8
  %68 = load i64, i64* @TCPDROP_LOCAL, align 8
  %69 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 4
  store i8* %67, i8** %70, align 8
  %71 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %72 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* @TCPDROP_LOCAL, align 8
  %75 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i64, i64* @TCPDROP_LOCAL, align 8
  %78 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 2
  %80 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %81 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %80, i32 0, i32 3
  %82 = call i32 @memcpy(i32* %79, i32* %81, i32 4)
  %83 = load i64, i64* @TCPDROP_LOCAL, align 8
  %84 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %83
  %85 = bitcast %struct.sockaddr_in* %84 to %struct.sockaddr*
  store %struct.sockaddr* %85, %struct.sockaddr** %3, align 8
  %86 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %87 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %87, i32 0, i32 1
  store i32 40, i32* %88, align 4
  %89 = load i8*, i8** @AF_INET, align 8
  %90 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %91 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %91, i32 0, i32 4
  store i8* %89, i8** %92, align 8
  %93 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %94 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %97 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 4
  %99 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %100 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %100, i32 0, i32 2
  %102 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %103 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %102, i32 0, i32 1
  %104 = call i32 @memcpy(i32* %101, i32* %103, i32 4)
  %105 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %106 = getelementptr inbounds [2 x %struct.sockaddr_in], [2 x %struct.sockaddr_in]* %6, i64 0, i64 %105
  %107 = bitcast %struct.sockaddr_in* %106 to %struct.sockaddr*
  store %struct.sockaddr* %107, %struct.sockaddr** %4, align 8
  br label %108

108:                                              ; preds = %60, %13
  %109 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %110 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %111 = call i32 @tcpdrop(%struct.sockaddr* %109, %struct.sockaddr* %110)
  ret i32 %111
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tcpdrop(%struct.sockaddr*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
