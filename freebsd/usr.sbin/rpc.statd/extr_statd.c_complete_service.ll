; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_statd.c_complete_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_statd.c_complete_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i64, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.__rpc_sockinfo = type { i32, i32, i32 }
%struct.netbuf = type { i32, i32 }

@NC_TPI_CLTS = common dso_local global i64 0, align 8
@NC_TPI_COTS = common dso_local global i64 0, align 8
@NC_TPI_COTS_ORD = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot get information for %s\00", align 1
@nhosts = common dso_local global i32 0, align 4
@sock_fdpos = common dso_local global i64 0, align 8
@sock_fdcnt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Ran out of socket fd's\00", align 1
@sock_fd = common dso_local global i32* null, align 8
@SOMAXCONN = common dso_local global i32 0, align 4
@RPC_MAXDATASIZE = common dso_local global i32 0, align 4
@SM_PROG = common dso_local global i32 0, align 4
@SM_VERS = common dso_local global i32 0, align 4
@sm_prog_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"can't register on %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"can't register %s SM_PROG service\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"can't create %s services\00", align 1
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot get local address: %s\00", align 1
@xcreated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netconfig*, i8*)* @complete_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_service(%struct.netconfig* %0, i8* %1) #0 {
  %3 = alloca %struct.netconfig*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.addrinfo, align 4
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.__rpc_sockinfo, align 4
  %8 = alloca %struct.netbuf, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.netconfig* %0, %struct.netconfig** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %6, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %15 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NC_TPI_CLTS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %21 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NC_TPI_COTS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %27 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NC_TPI_COTS_ORD, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %170

32:                                               ; preds = %25, %19, %2
  %33 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %34 = call i32 @__rpc_nconf2sockinfo(%struct.netconfig* %33, %struct.__rpc_sockinfo* %7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %39 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @syslog(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %170

42:                                               ; preds = %32
  %43 = load i32, i32* @nhosts, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %169, %64, %42
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %170

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %12, align 4
  %50 = load i64, i64* @sock_fdpos, align 8
  %51 = load i64, i64* @sock_fdcnt, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @LOG_ERR, align 4
  %55 = call i32 (i32, i8*, ...) @syslog(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %170

56:                                               ; preds = %47
  %57 = load i32*, i32** @sock_fd, align 8
  %58 = load i64, i64* @sock_fdpos, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* @sock_fdpos, align 8
  %60 = getelementptr inbounds i32, i32* %57, i64 %58
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %44

65:                                               ; preds = %56
  %66 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %67 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NC_TPI_CLTS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @SOMAXCONN, align 4
  %74 = call i32 @listen(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %78 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %79 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %80 = call i32* @svc_tli_create(i32 %76, %struct.netconfig* %77, i32* null, i32 %78, i32 %79)
  store i32* %80, i32** %9, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %111

83:                                               ; preds = %75
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* @SM_PROG, align 4
  %86 = load i32, i32* @SM_VERS, align 4
  %87 = load i32, i32* @sm_prog_1, align 4
  %88 = call i32 @svc_register(i32* %84, i32 %85, i32 %86, i32 %87, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @LOG_ERR, align 4
  %92 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %93 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @syslog(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %110

96:                                               ; preds = %83
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* @SM_PROG, align 4
  %99 = load i32, i32* @SM_VERS, align 4
  %100 = load i32, i32* @sm_prog_1, align 4
  %101 = call i32 @svc_reg(i32* %97, i32 %98, i32 %99, i32 %100, i32* null)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* @LOG_ERR, align 4
  %105 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %106 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, ...) @syslog(i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %103, %96
  br label %110

110:                                              ; preds = %109, %90
  br label %117

111:                                              ; preds = %75
  %112 = load i32, i32* @LOG_WARNING, align 4
  %113 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %114 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, ...) @syslog(i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %111, %110
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %169

120:                                              ; preds = %117
  store i32 1, i32* %13, align 4
  %121 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 24)
  %122 = load i32, i32* @AI_PASSIVE, align 4
  %123 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 5
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %7, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 4
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %7, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 3
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 %131, i32* %132, align 4
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @getaddrinfo(i32* null, i8* %133, %struct.addrinfo* %5, %struct.addrinfo** %6)
  store i32 %134, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %120
  %137 = load i32, i32* @LOG_ERR, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @gai_strerror(i32 %138)
  %140 = call i32 (i32, i8*, ...) @syslog(i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = call i32 @exit(i32 1) #3
  unreachable

142:                                              ; preds = %120
  %143 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %144 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @malloc(i32 %145)
  %147 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %8, i32 0, i32 1
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %8, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %151 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %154 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @memcpy(i32 %149, i32 %152, i32 %155)
  %157 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %158 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %8, i32 0, i32 0
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @SM_PROG, align 4
  %162 = load i32, i32* @SM_VERS, align 4
  %163 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %164 = call i32 @rpcb_set(i32 %161, i32 %162, %struct.netconfig* %163, %struct.netbuf* %8)
  %165 = load i32, i32* @xcreated, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @xcreated, align 4
  %167 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %168 = call i32 @freeaddrinfo(%struct.addrinfo* %167)
  br label %169

169:                                              ; preds = %142, %117
  br label %44

170:                                              ; preds = %31, %36, %53, %44
  ret void
}

declare dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32* @svc_tli_create(i32, %struct.netconfig*, i32*, i32, i32) #1

declare dso_local i32 @svc_register(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @svc_reg(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @gai_strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rpcb_set(i32, i32, %struct.netconfig*, %struct.netbuf*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
