; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_lock_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_lock_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_async_lock = type { %struct.TYPE_9__*, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.rpc_callextra = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"NLM: async lock %p for %s (sysid %d) granted, cookie %d:%d\0A\00", align 1
@nlm_auth = common dso_local global i32 0, align 4
@NLM_VERS4 = common dso_local global i64 0, align 8
@nlm_zero_tv = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@NLM_EXPIRE_TIMEOUT = common dso_local global i64 0, align 8
@af_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nlm_lock_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_lock_callback(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_async_lock*, align 8
  %6 = alloca %struct.rpc_callextra, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.nlm_async_lock*
  store %struct.nlm_async_lock* %9, %struct.nlm_async_lock** %5, align 8
  %10 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %11 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %12 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %17 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %22 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = call i32 @ng_sysid(i32* %23)
  %25 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %26 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = call i32 @ng_cookie(i32* %27)
  %29 = call i32 @NLM_DEBUG(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.nlm_async_lock* %10, i32 %15, i32 %20, i32 %24, i32 %28)
  %30 = call i32 @memset(%struct.rpc_callextra* %6, i32 0, i32 4)
  %31 = load i32, i32* @nlm_auth, align 4
  %32 = getelementptr inbounds %struct.rpc_callextra, %struct.rpc_callextra* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %34 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NLM_VERS4, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %2
  %41 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %42 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %41, i32 0, i32 3
  %43 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %44 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @nlm_zero_tv, align 4
  %47 = call i32 @nlm4_granted_msg_4(%struct.TYPE_11__* %42, i32* null, i32 %45, %struct.rpc_callextra* %6, i32 %46)
  br label %106

48:                                               ; preds = %2
  %49 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %50 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %55 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %60 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %67 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %74 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %81 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %88 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %95 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %102 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @nlm_zero_tv, align 4
  %105 = call i32 @nlm_granted_msg_1(%struct.TYPE_10__* %7, i32* null, i32 %103, %struct.rpc_callextra* %6, i32 %104)
  br label %106

106:                                              ; preds = %48, %40
  %107 = load i64, i64* @time_uptime, align 8
  %108 = load i64, i64* @NLM_EXPIRE_TIMEOUT, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %111 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %113 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = call i32 @mtx_lock(i32* %115)
  %117 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %118 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %122 = load i32, i32* @af_link, align 4
  %123 = call i32 @TAILQ_REMOVE(i32* %120, %struct.nlm_async_lock* %121, i32 %122)
  %124 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %125 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %129 = load i32, i32* @af_link, align 4
  %130 = call i32 @TAILQ_INSERT_TAIL(i32* %127, %struct.nlm_async_lock* %128, i32 %129)
  %131 = load %struct.nlm_async_lock*, %struct.nlm_async_lock** %5, align 8
  %132 = getelementptr inbounds %struct.nlm_async_lock, %struct.nlm_async_lock* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = call i32 @mtx_unlock(i32* %134)
  ret void
}

declare dso_local i32 @NLM_DEBUG(i32, i8*, %struct.nlm_async_lock*, i32, i32, i32, i32) #1

declare dso_local i32 @ng_sysid(i32*) #1

declare dso_local i32 @ng_cookie(i32*) #1

declare dso_local i32 @memset(%struct.rpc_callextra*, i32, i32) #1

declare dso_local i32 @nlm4_granted_msg_4(%struct.TYPE_11__*, i32*, i32, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @nlm_granted_msg_1(%struct.TYPE_10__*, i32*, i32, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nlm_async_lock*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.nlm_async_lock*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
