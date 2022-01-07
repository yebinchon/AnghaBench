; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, %struct.hc_head*, i32, i64 }
%struct.hc_head = type { i32, i64, i32 }

@V_tcp_hostcache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TCP_HOSTCACHE_HASHSIZE = common dso_local global i8* null, align 8
@TCP_HOSTCACHE_BUCKETLIMIT = common dso_local global i32 0, align 4
@TCP_HOSTCACHE_EXPIRE = common dso_local global i32 0, align 4
@TCP_HOSTCACHE_PRUNE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"net.inet.tcp.hostcache.hashsize\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"WARNING: hostcache hash size is not a power of 2.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"net.inet.tcp.hostcache.bucketlimit\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"net.inet.tcp.hostcache.cachelimit\00", align 1
@M_HOSTCACHE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"tcp_hc_entry\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"hostcache\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@V_tcp_hc_callout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@tcp_hc_purge = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_hc_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 8), align 8
  %3 = load i8*, i8** @TCP_HOSTCACHE_HASHSIZE, align 8
  %4 = ptrtoint i8* %3 to i32
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0), align 8
  %5 = load i32, i32* @TCP_HOSTCACHE_BUCKETLIMIT, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1), align 4
  %6 = load i32, i32* @TCP_HOSTCACHE_EXPIRE, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 7), align 8
  %7 = load i32, i32* @TCP_HOSTCACHE_PRUNE, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 2), align 8
  %8 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0))
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0), align 8
  %10 = call i32 @powerof2(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i8*, i8** @TCP_HOSTCACHE_HASHSIZE, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %12, %0
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0), align 8
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 3), align 4
  %19 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1))
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1), align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %1, align 8
  %25 = load i8*, i8** %1, align 8
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 4), align 8
  %27 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 4))
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 4), align 8
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8*, i8** %1, align 8
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load i8*, i8** %1, align 8
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 4), align 8
  br label %36

36:                                               ; preds = %33, %16
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0), align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 24
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @M_HOSTCACHE, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @malloc(i32 %40, i32 %41, i32 %44)
  %46 = inttoptr i64 %45 to %struct.hc_head*
  store %struct.hc_head* %46, %struct.hc_head** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 6), align 8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %70, %36
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0), align 8
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load %struct.hc_head*, %struct.hc_head** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 6), align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %52, i64 %54
  %56 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %55, i32 0, i32 2
  %57 = call i32 @TAILQ_INIT(i32* %56)
  %58 = load %struct.hc_head*, %struct.hc_head** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 6), align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %58, i64 %60
  %62 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.hc_head*, %struct.hc_head** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 6), align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %63, i64 %65
  %67 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %66, i32 0, i32 0
  %68 = load i32, i32* @MTX_DEF, align 4
  %69 = call i32 @mtx_init(i32* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %68)
  br label %70

70:                                               ; preds = %51
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %75 = call i32 @uma_zcreate(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %74, i32 0)
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 5), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 5), align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 4), align 8
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @uma_zone_set_max(i32 %76, i8* %79)
  %81 = call i32 @callout_init(i32* @V_tcp_hc_callout, i32 1)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 2), align 8
  %83 = load i32, i32* @hz, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* @tcp_hc_purge, align 4
  %86 = load i32, i32* @curvnet, align 4
  %87 = call i32 @callout_reset(i32* @V_tcp_hc_callout, i32 %84, i32 %85, i32 %86)
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i32, i8*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
