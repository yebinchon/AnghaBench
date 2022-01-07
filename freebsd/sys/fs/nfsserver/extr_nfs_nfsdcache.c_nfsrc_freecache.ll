; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdcache.c_nfsrc_freecache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdcache.c_nfsrc_freecache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nfsrvcache = type { i32, i64, i32, i32 }
%struct.nfsrchash_bucket = type { i32 }

@rc_hash = common dso_local global i32 0, align 4
@RC_UDP = common dso_local global i32 0, align 4
@nfsrvudplru = common dso_local global i32 0, align 4
@rc_lru = common dso_local global i32 0, align 4
@nfsrc_udpcachesize = common dso_local global i32 0, align 4
@RC_NO_SEQ = common dso_local global i64 0, align 8
@RC_NO_ACK = common dso_local global i64 0, align 8
@rc_ahash = common dso_local global i32 0, align 4
@RC_REPMBUF = common dso_local global i32 0, align 4
@nfsrc_tcpsavedreplies = common dso_local global i32 0, align 4
@M_NFSRVCACHE = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsrvcache*)* @nfsrc_freecache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrc_freecache(%struct.nfsrvcache* %0) #0 {
  %2 = alloca %struct.nfsrvcache*, align 8
  %3 = alloca %struct.nfsrchash_bucket*, align 8
  store %struct.nfsrvcache* %0, %struct.nfsrvcache** %2, align 8
  %4 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %5 = load i32, i32* @rc_hash, align 4
  %6 = call i32 @LIST_REMOVE(%struct.nfsrvcache* %4, i32 %5)
  %7 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %8 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RC_UDP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %15 = load i32, i32* @rc_lru, align 4
  %16 = call i32 @TAILQ_REMOVE(i32* @nfsrvudplru, %struct.nfsrvcache* %14, i32 %15)
  %17 = load i32, i32* @nfsrc_udpcachesize, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @nfsrc_udpcachesize, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %21 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RC_NO_SEQ, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  %26 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %27 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.nfsrchash_bucket* @NFSRCAHASH(i32 %28)
  store %struct.nfsrchash_bucket* %29, %struct.nfsrchash_bucket** %3, align 8
  %30 = load %struct.nfsrchash_bucket*, %struct.nfsrchash_bucket** %3, align 8
  %31 = getelementptr inbounds %struct.nfsrchash_bucket, %struct.nfsrchash_bucket* %30, i32 0, i32 0
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %34 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RC_NO_ACK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %40 = load i32, i32* @rc_ahash, align 4
  %41 = call i32 @LIST_REMOVE(%struct.nfsrvcache* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %25
  %43 = load %struct.nfsrchash_bucket*, %struct.nfsrchash_bucket** %3, align 8
  %44 = getelementptr inbounds %struct.nfsrchash_bucket, %struct.nfsrchash_bucket* %43, i32 0, i32 0
  %45 = call i32 @mtx_unlock(i32* %44)
  br label %46

46:                                               ; preds = %42, %19
  br label %47

47:                                               ; preds = %46, %13
  %48 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %49 = call i32 @nfsrc_wanted(%struct.nfsrvcache* %48)
  %50 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %51 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RC_REPMBUF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %47
  %57 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %58 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @mbuf_freem(i32 %59)
  %61 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %62 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RC_UDP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  %68 = call i32 @atomic_add_int(i32* @nfsrc_tcpsavedreplies, i32 -1)
  br label %69

69:                                               ; preds = %67, %56
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.nfsrvcache*, %struct.nfsrvcache** %2, align 8
  %72 = load i32, i32* @M_NFSRVCACHE, align 4
  %73 = call i32 @free(%struct.nfsrvcache* %71, i32 %72)
  %74 = call i32 @atomic_add_int(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), i32 -1)
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.nfsrvcache*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nfsrvcache*, i32) #1

declare dso_local %struct.nfsrchash_bucket* @NFSRCAHASH(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nfsrc_wanted(%struct.nfsrvcache*) #1

declare dso_local i32 @mbuf_freem(i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @free(%struct.nfsrvcache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
