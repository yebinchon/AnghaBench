; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_async_lookup_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_async_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.svc_req = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.circleq_dnsentry = type { i32, i64, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"getsockopt failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@YP_YPERR = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@BY_RPC_XID = common dso_local global i32 0, align 4
@YP_TRUE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@T_A = common dso_local global i32 0, align 4
@T_AAAA = common dso_local global i32 0, align 4
@DEF_TTL = common dso_local global i32 0, align 4
@_res = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"DNS query failed\00", align 1
@qhead = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@pending = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"queueing async DNS name lookup (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_async_lookup_name(%struct.svc_req* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.circleq_dnsentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  store i32 4, i32* %9, align 4
  %11 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %12 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SOL_SOCKET, align 4
  %17 = load i32, i32* @SO_TYPE, align 4
  %18 = call i32 @getsockopt(i32 %15, i32 %16, i32 %17, i32* %10, i32* %9)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @errno, align 4
  %22 = call i64 @strerror(i32 %21)
  %23 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @YP_YPERR, align 4
  store i32 %24, i32* %4, align 4
  br label %131

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SOCK_DGRAM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %31 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @svcudp_get_xid(%struct.TYPE_3__* %32)
  %34 = load i32, i32* @BY_RPC_XID, align 4
  %35 = call i32* @yp_find_dnsqent(i32 %33, i32 %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @YP_TRUE, align 4
  store i32 %38, i32* %4, align 4
  br label %131

39:                                               ; preds = %29, %25
  %40 = call %struct.circleq_dnsentry* (...) @yp_malloc_dnsent()
  store %struct.circleq_dnsentry* %40, %struct.circleq_dnsentry** %8, align 8
  %41 = icmp eq %struct.circleq_dnsentry* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @YP_YPERR, align 4
  store i32 %43, i32* %4, align 4
  br label %131

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @AF_INET, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @T_A, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @T_AAAA, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %55 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @DEF_TTL, align 4
  %57 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %58 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %60 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %63 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %62, i32 0, i32 5
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %63, align 8
  %64 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %65 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %68 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %71 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %73 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SOCK_DGRAM, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %52
  %78 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %79 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %78, i32 0, i32 5
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = call i32 @svcudp_get_xid(%struct.TYPE_3__* %80)
  %82 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %83 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %52
  %85 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %86 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %85, i32 0, i32 5
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %91 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_res, i32 0, i32 0), align 4
  %93 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %94 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %97 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @yp_send_dns_query(i8* %95, i32 %98)
  %100 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %101 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %103 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %84
  %107 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %109 = call i32 @free(%struct.circleq_dnsentry* %108)
  %110 = load i32, i32* @YP_YPERR, align 4
  store i32 %110, i32* %4, align 4
  br label %131

111:                                              ; preds = %84
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @strdup(i8* %112)
  %114 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %115 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %117 = load i32, i32* @links, align 4
  %118 = call i32 @TAILQ_INSERT_HEAD(i32* @qhead, %struct.circleq_dnsentry* %116, i32 %117)
  %119 = load i32, i32* @pending, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @pending, align 4
  %121 = load i64, i64* @debug, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %111
  %124 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %125 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %123, %111
  %129 = call i32 (...) @yp_prune_dnsq()
  %130 = load i32, i32* @YP_TRUE, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %106, %42, %37, %20
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @yp_error(i8*, ...) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i32* @yp_find_dnsqent(i32, i32) #1

declare dso_local i32 @svcudp_get_xid(%struct.TYPE_3__*) #1

declare dso_local %struct.circleq_dnsentry* @yp_malloc_dnsent(...) #1

declare dso_local i64 @yp_send_dns_query(i8*, i32) #1

declare dso_local i32 @free(%struct.circleq_dnsentry*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.circleq_dnsentry*, i32) #1

declare dso_local i32 @yp_prune_dnsq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
