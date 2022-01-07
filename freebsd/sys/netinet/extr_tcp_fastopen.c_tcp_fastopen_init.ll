; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i32, i32, i8*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"tfo\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@V_counter_zone = common dso_local global i8* null, align 8
@V_tcp_fastopen_keylock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"tfo_keylock\00", align 1
@V_tcp_fastopen_autokey_ctx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@curvnet = common dso_local global i32 0, align 4
@TCP_FASTOPEN_MAX_KEYS = common dso_local global i64 0, align 8
@V_tcp_fastopen_keys = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TCP_FASTOPEN_MAX_PSKS = common dso_local global i64 0, align 8
@V_tcp_fastopen_ccache = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TCP_FASTOPEN_CCACHE_BUCKET_LIMIT_DEFAULT = common dso_local global i64 0, align 8
@V_tcp_fastopen_ccache_buckets = common dso_local global i64 0, align 8
@TCP_FASTOPEN_CCACHE_BUCKETS_DEFAULT = common dso_local global i32 0, align 4
@M_TCP_FASTOPEN_CCACHE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"tfo_ccache_bucket\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@V_tcp_fastopen_client_enable = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"tfo_ccache_entries\00", align 1
@UMA_ALIGN_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fastopen_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %3 = call i8* @uma_zcreate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %2, i32 0)
  store i8* %3, i8** @V_counter_zone, align 8
  %4 = call i32 @rm_init(i32* @V_tcp_fastopen_keylock, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @callout_init_rm(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @V_tcp_fastopen_autokey_ctx, i32 0, i32 1), i32* @V_tcp_fastopen_keylock, i32 0)
  %6 = load i32, i32* @curvnet, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @V_tcp_fastopen_autokey_ctx, i32 0, i32 0), align 4
  %7 = load i64, i64* @TCP_FASTOPEN_MAX_KEYS, align 8
  %8 = sub nsw i64 %7, 1
  store i64 %8, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_tcp_fastopen_keys, i32 0, i32 1), align 8
  %9 = load i64, i64* @TCP_FASTOPEN_MAX_PSKS, align 8
  %10 = sub nsw i64 %9, 1
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_tcp_fastopen_keys, i32 0, i32 0), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 0), align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i64, i64* @TCP_FASTOPEN_CCACHE_BUCKET_LIMIT_DEFAULT, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 0), align 8
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i64, i64* @V_tcp_fastopen_ccache_buckets, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @V_tcp_fastopen_ccache_buckets, align 8
  %20 = call i32 @powerof2(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @TCP_FASTOPEN_CCACHE_BUCKETS_DEFAULT, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 1), align 8
  br label %27

24:                                               ; preds = %18
  %25 = load i64, i64* @V_tcp_fastopen_ccache_buckets, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 1), align 8
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 1), align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 2), align 4
  %30 = call i32 (...) @arc4random()
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 5), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 1), align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @M_TCP_FASTOPEN_CCACHE, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.TYPE_5__* @malloc(i32 %34, i32 %35, i32 %38)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 4), align 8
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %78, %27
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 1), align 8
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 4), align 8
  %46 = load i32, i32* %1, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = call i32 @TAILQ_INIT(i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 4), align 8
  %52 = load i32, i32* %1, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* @MTX_DEF, align 4
  %57 = call i32 @mtx_init(i32* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %56)
  %58 = load i64, i64* @V_tcp_fastopen_client_enable, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %44
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 4), align 8
  %62 = load i32, i32* %1, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %72

66:                                               ; preds = %44
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 4), align 8
  %68 = load i32, i32* %1, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 -1, i32* %71, align 8
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 4), align 8
  %74 = load i32, i32* %1, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store %struct.TYPE_7__* @V_tcp_fastopen_ccache, %struct.TYPE_7__** %77, align 8
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %1, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %40

81:                                               ; preds = %40
  %82 = load i32, i32* @UMA_ALIGN_CACHE, align 4
  %83 = call i8* @uma_zcreate(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %82, i32 0)
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_tcp_fastopen_ccache, i32 0, i32 3), align 8
  ret void
}

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @rm_init(i32*, i8*) #1

declare dso_local i32 @callout_init_rm(i32*, i32*, i32) #1

declare dso_local i32 @powerof2(i64) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
