; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i64, i32, i32, i32 }

@TCP_SYNCACHE_HASHSIZE = common dso_local global i8* null, align 8
@V_tcp_syncache = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TCP_SYNCACHE_BUCKETLIMIT = common dso_local global i32 0, align 4
@SYNCACHE_MAXREXMTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"net.inet.tcp.syncache.hashsize\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"net.inet.tcp.syncache.bucketlimit\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"WARNING: syncache hash size is not a power of 2.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"net.inet.tcp.syncache.cachelimit\00", align 1
@M_SYNCACHE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"tcp_sc_head\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYNCOOKIE_LIFETIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"syncache\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@SYNCOOKIE_SECRET_SIZE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@syncookie_reseed = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"tcp_sc_pause\00", align 1
@time_uptime = common dso_local global i64 0, align 8
@TCP_SYNCACHE_PAUSE_TIME = common dso_local global i64 0, align 8
@curvnet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syncache_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @TCP_SYNCACHE_HASHSIZE, align 8
  %3 = ptrtoint i8* %2 to i32
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 0), align 8
  %4 = load i32, i32* @TCP_SYNCACHE_BUCKETLIMIT, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 1), align 4
  %5 = load i32, i32* @SYNCACHE_MAXREXMTS, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 14), align 8
  %6 = call i32 (...) @arc4random()
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 13), align 4
  %7 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 0))
  %8 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 1))
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 0), align 8
  %10 = call i32 @powerof2(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 0), align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %0
  %16 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i8*, i8** @TCP_SYNCACHE_HASHSIZE, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 0), align 8
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 0), align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 2), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 0), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 1), align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 3), align 4
  %25 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 3))
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 0), align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @M_SYNCACHE, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.TYPE_6__* @malloc(i32 %29, i32 %30, i32 %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 11), align 8
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %82, %19
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 0), align 8
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %85

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 11), align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  %45 = call i32 @TAILQ_INIT(i32* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 11), align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* @MTX_DEF, align 4
  %52 = call i32 @mtx_init(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 11), align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 11), align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = call i32 @callout_init_mtx(i32* %57, i32* %62, i32 0)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 11), align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 11), align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store %struct.TYPE_7__* @V_tcp_syncache, %struct.TYPE_7__** %73, align 8
  %74 = load i32, i32* @SYNCOOKIE_LIFETIME, align 4
  %75 = add nsw i32 %74, 1
  %76 = sub nsw i32 0, %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 11), align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 8
  br label %82

82:                                               ; preds = %39
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %35

85:                                               ; preds = %35
  %86 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %87 = call i32 @uma_zcreate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %86, i32 0)
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 10), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 10), align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 3), align 4
  %90 = call i32 @uma_zone_set_max(i32 %88, i32 %89)
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 3), align 4
  %91 = call i32 @callout_init(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 9, i32 0), i32 1)
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 9, i32 1), align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SYNCOOKIE_SECRET_SIZE, align 4
  %96 = call i32 @arc4rand(i32 %94, i32 %95, i32 0)
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 9, i32 1), align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SYNCOOKIE_SECRET_SIZE, align 4
  %101 = call i32 @arc4rand(i32 %99, i32 %100, i32 0)
  %102 = load i32, i32* @SYNCOOKIE_LIFETIME, align 4
  %103 = load i32, i32* @hz, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* @syncookie_reseed, align 4
  %106 = call i32 @callout_reset(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 9, i32 0), i32 %104, i32 %105, %struct.TYPE_7__* @V_tcp_syncache)
  %107 = load i32, i32* @MTX_DEF, align 4
  %108 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 7), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %107)
  %109 = call i32 @callout_init_mtx(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 8), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 7), i32 0)
  %110 = load i64, i64* @time_uptime, align 8
  %111 = load i64, i64* @TCP_SYNCACHE_PAUSE_TIME, align 8
  %112 = sub nsw i64 %110, %111
  store i64 %112, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 5), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_syncache, i32 0, i32 4), align 8
  ret void
}

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i32, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @arc4rand(i32, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
