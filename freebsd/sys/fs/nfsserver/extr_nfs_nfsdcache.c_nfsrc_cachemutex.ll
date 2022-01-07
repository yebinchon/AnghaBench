; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdcache.c_nfsrc_cachemutex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdcache.c_nfsrc_cachemutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.TYPE_2__ = type { %struct.mtx }
%struct.nfsrvcache = type { i32, i32 }

@RC_UDP = common dso_local global i32 0, align 4
@nfsrc_udpmtx = common dso_local global %struct.mtx zeroinitializer, align 4
@nfsrchash_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtx* (%struct.nfsrvcache*)* @nfsrc_cachemutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtx* @nfsrc_cachemutex(%struct.nfsrvcache* %0) #0 {
  %2 = alloca %struct.mtx*, align 8
  %3 = alloca %struct.nfsrvcache*, align 8
  store %struct.nfsrvcache* %0, %struct.nfsrvcache** %3, align 8
  %4 = load %struct.nfsrvcache*, %struct.nfsrvcache** %3, align 8
  %5 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RC_UDP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.mtx* @nfsrc_udpmtx, %struct.mtx** %2, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsrchash_table, align 8
  %13 = load %struct.nfsrvcache*, %struct.nfsrvcache** %3, align 8
  %14 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @nfsrc_hash(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.mtx* %18, %struct.mtx** %2, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load %struct.mtx*, %struct.mtx** %2, align 8
  ret %struct.mtx* %20
}

declare dso_local i64 @nfsrc_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
