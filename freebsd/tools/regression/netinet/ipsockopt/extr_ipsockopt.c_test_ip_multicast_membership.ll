; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_test_ip_multicast_membership.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_test_ip_multicast_membership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mreq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"test_ip_multicast_membership(%s): so_type getsockopt()\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@dorandom = common dso_local global i64 0, align 8
@nmcastgroups = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"IP_ADD_MEMBERSHIP %s INADDR_ANY\0A\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"test_ip_multicast_membership(%d, %s): failed IP_ADD_MEMBERSHIP (%s, %s)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"INADDR_ANY\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"IP_DROP_MEMBERSHIP %s INADDR_ANY\0A\00", align 1
@IP_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [73 x i8] c"test_ip_multicast_membership(%d, %s): failed IP_DROP_MEMBERSHIP (%s, %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_ip_multicast_membership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ip_multicast_membership(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca %struct.ip_mreq, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 4, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SOL_SOCKET, align 4
  %13 = load i32, i32* @SO_TYPE, align 4
  %14 = call i64 @getsockopt(i32 %11, i32 %12, i32 %13, i32* %9, i32* %10)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %117

24:                                               ; preds = %19
  %25 = load i64, i64* @dorandom, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = call i32 (...) @srandomdev()
  store i32 -301989888, i32* %7, align 4
  %29 = call i32 (...) @random()
  %30 = srem i32 %29, 2047
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %35

34:                                               ; preds = %24
  store i32 -301924096, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %27
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %73, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @nmcastgroups, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i8* @htonl(i32 %44)
  %46 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %6, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @INADDR_ANY, align 8
  %49 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @AF_INET, align 4
  %52 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %6, i32 0, i32 0
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %54 = call i32 @inet_ntop(i32 %51, %struct.TYPE_4__* %52, i8* %53, i32 16)
  %55 = load i64, i64* @verbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load i32, i32* @stderr, align 4
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %41
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @IPPROTO_IP, align 4
  %64 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  %65 = call i64 @setsockopt(i32 %62, i32 %63, i32 %64, %struct.ip_mreq* %6, i32 16)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %71 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %68, i8* %69, i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %36

76:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  br label %77

77:                                               ; preds = %114, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @nmcastgroups, align 4
  %80 = add nsw i32 %79, 1
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  %86 = call i8* @htonl(i32 %85)
  %87 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %6, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** @INADDR_ANY, align 8
  %90 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %6, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @AF_INET, align 4
  %93 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %6, i32 0, i32 0
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %95 = call i32 @inet_ntop(i32 %92, %struct.TYPE_4__* %93, i8* %94, i32 16)
  %96 = load i64, i64* @verbose, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %82
  %99 = load i32, i32* @stderr, align 4
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %101 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %82
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @IPPROTO_IP, align 4
  %105 = load i32, i32* @IP_DROP_MEMBERSHIP, align 4
  %106 = call i64 @setsockopt(i32 %103, i32 %104, i32 %105, %struct.ip_mreq* %6, i32 16)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i32, i32* %3, align 4
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %112 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %109, i8* %110, i8* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %108, %102
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %77

117:                                              ; preds = %23, %77
  ret void
}

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @srandomdev(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @inet_ntop(i32, %struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.ip_mreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
