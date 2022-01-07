; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_ng_netflow_cache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_ng_netflow_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.flow_hash_entry*, %struct.flow_hash_entry*, i8*, i8* }
%struct.flow_hash_entry = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"NetFlow IPv4 cache\00", align 1
@UMA_ALIGN_CACHE = common dso_local global i32 0, align 4
@CACHESIZE = common dso_local global i32 0, align 4
@NBUCKETS = common dso_local global i32 0, align 4
@M_NETFLOW_HASH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hash mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@KTR_NET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"ng_netflow startup()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_netflow_cache_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.flow_hash_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load i32, i32* @UMA_ALIGN_CACHE, align 4
  %6 = call i8* @uma_zcreate(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %5, i32 0)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 13
  store i8* %6, i8** %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 13
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @CACHESIZE, align 4
  %13 = call i32 @uma_zone_set_max(i8* %11, i32 %12)
  %14 = load i32, i32* @NBUCKETS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @M_NETFLOW_HASH, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @malloc(i32 %17, i32 %18, i32 %21)
  %23 = bitcast i8* %22 to %struct.flow_hash_entry*
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 11
  store %struct.flow_hash_entry* %23, %struct.flow_hash_entry** %25, align 8
  store i32 0, i32* %4, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 11
  %28 = load %struct.flow_hash_entry*, %struct.flow_hash_entry** %27, align 8
  store %struct.flow_hash_entry* %28, %struct.flow_hash_entry** %3, align 8
  br label %29

29:                                               ; preds = %41, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NBUCKETS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.flow_hash_entry*, %struct.flow_hash_entry** %3, align 8
  %35 = getelementptr inbounds %struct.flow_hash_entry, %struct.flow_hash_entry* %34, i32 0, i32 1
  %36 = load i32, i32* @MTX_DEF, align 4
  %37 = call i32 @mtx_init(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %36)
  %38 = load %struct.flow_hash_entry*, %struct.flow_hash_entry** %3, align 8
  %39 = getelementptr inbounds %struct.flow_hash_entry, %struct.flow_hash_entry* %38, i32 0, i32 0
  %40 = call i32 @TAILQ_INIT(i32* %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load %struct.flow_hash_entry*, %struct.flow_hash_entry** %3, align 8
  %45 = getelementptr inbounds %struct.flow_hash_entry, %struct.flow_hash_entry* %44, i32 1
  store %struct.flow_hash_entry* %45, %struct.flow_hash_entry** %3, align 8
  br label %29

46:                                               ; preds = %29
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = call i8* @counter_u64_alloc(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = call i8* @counter_u64_alloc(i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @M_WAITOK, align 4
  %56 = call i8* @counter_u64_alloc(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 7
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @M_WAITOK, align 4
  %60 = call i8* @counter_u64_alloc(i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = call i8* @counter_u64_alloc(i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @M_WAITOK, align 4
  %68 = call i8* @counter_u64_alloc(i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = call i8* @counter_u64_alloc(i32 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @M_WAITOK, align 4
  %76 = call i8* @counter_u64_alloc(i32 %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @M_WAITOK, align 4
  %80 = call i8* @counter_u64_alloc(i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @M_WAITOK, align 4
  %84 = call i8* @counter_u64_alloc(i32 %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %88 = call i32 @ng_netflow_v9_cache_init(%struct.TYPE_4__* %87)
  %89 = load i32, i32* @KTR_NET, align 4
  %90 = call i32 @CTR0(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i8*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @counter_u64_alloc(i32) #1

declare dso_local i32 @ng_netflow_v9_cache_init(%struct.TYPE_4__*) #1

declare dso_local i32 @CTR0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
