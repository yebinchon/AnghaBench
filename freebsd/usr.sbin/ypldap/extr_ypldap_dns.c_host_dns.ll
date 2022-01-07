; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap_dns.c_host_dns.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap_dns.c_host_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypldap_addr_list = type { i32 }
%struct.addrinfo = type { i64, i64, %struct.addrinfo*, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.ypldap_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@PF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@EAI_AGAIN = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not parse \22%s\22: %s\00", align 1
@MAX_SERVERS_DNS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_dns(i8* %0, %struct.ypldap_addr_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ypldap_addr_list*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca %struct.ypldap_addr*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ypldap_addr_list* %1, %struct.ypldap_addr_list** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 32)
  %15 = load i64, i64* @PF_UNSPEC, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* @SOCK_DGRAM, align 4
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @getaddrinfo(i8* %19, i32* null, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @EAI_AGAIN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EAI_NONAME, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %123

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @gai_strerror(i32 %34)
  %36 = call i32 @log_warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35)
  store i32 -1, i32* %3, align 4
  br label %123

37:                                               ; preds = %29
  %38 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %38, %struct.addrinfo** %8, align 8
  br label %39

39:                                               ; preds = %115, %37
  %40 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %41 = icmp ne %struct.addrinfo* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @MAX_SERVERS_DNS, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  br i1 %47, label %48, label %119

48:                                               ; preds = %46
  %49 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AF_INET, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_INET6, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %115

61:                                               ; preds = %54, %48
  %62 = call %struct.ypldap_addr* @calloc(i32 1, i32 8)
  store %struct.ypldap_addr* %62, %struct.ypldap_addr** %13, align 8
  %63 = icmp eq %struct.ypldap_addr* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @fatal(i32* null)
  br label %66

66:                                               ; preds = %64, %61
  %67 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ypldap_addr*, %struct.ypldap_addr** %13, align 8
  %71 = getelementptr inbounds %struct.ypldap_addr, %struct.ypldap_addr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AF_INET, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %66
  %79 = load %struct.ypldap_addr*, %struct.ypldap_addr** %13, align 8
  %80 = getelementptr inbounds %struct.ypldap_addr, %struct.ypldap_addr* %79, i32 0, i32 0
  %81 = bitcast %struct.TYPE_4__* %80 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %81, %struct.sockaddr_in** %11, align 8
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %82, i32 0, i32 0
  store i32 8, i32* %83, align 4
  %84 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.sockaddr_in*
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  br label %108

94:                                               ; preds = %66
  %95 = load %struct.ypldap_addr*, %struct.ypldap_addr** %13, align 8
  %96 = getelementptr inbounds %struct.ypldap_addr, %struct.ypldap_addr* %95, i32 0, i32 0
  %97 = bitcast %struct.TYPE_4__* %96 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %97, %struct.sockaddr_in6** %12, align 8
  %98 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %98, i32 0, i32 0
  store i32 8, i32* %99, align 4
  %100 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %100, i32 0, i32 1
  %102 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %103 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.sockaddr_in6*
  %106 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %105, i32 0, i32 1
  %107 = call i32 @memcpy(i32* %101, i32* %106, i32 4)
  br label %108

108:                                              ; preds = %94, %78
  %109 = load %struct.ypldap_addr_list*, %struct.ypldap_addr_list** %5, align 8
  %110 = load %struct.ypldap_addr*, %struct.ypldap_addr** %13, align 8
  %111 = load i32, i32* @next, align 4
  %112 = call i32 @TAILQ_INSERT_HEAD(%struct.ypldap_addr_list* %109, %struct.ypldap_addr* %110, i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %108, %60
  %116 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 2
  %118 = load %struct.addrinfo*, %struct.addrinfo** %117, align 8
  store %struct.addrinfo* %118, %struct.addrinfo** %8, align 8
  br label %39

119:                                              ; preds = %46
  %120 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %121 = call i32 @freeaddrinfo(%struct.addrinfo* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %32, %28
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @log_warnx(i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local %struct.ypldap_addr* @calloc(i32, i32) #1

declare dso_local i32 @fatal(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.ypldap_addr_list*, %struct.ypldap_addr*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
