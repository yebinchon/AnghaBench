; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsv4_seqsess_cacherep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsv4_seqsess_cacherep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsslot = type { i64, %struct.mbuf* }
%struct.mbuf = type { i32 }

@NFSERR_REPLYFROMCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsv4_seqsess_cacherep(i64 %0, %struct.nfsslot* %1, i32 %2, %struct.mbuf** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfsslot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf**, align 8
  store i64 %0, i64* %5, align 8
  store %struct.nfsslot* %1, %struct.nfsslot** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mbuf** %3, %struct.mbuf*** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @NFSERR_REPLYFROMCACHE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = load %struct.nfsslot*, %struct.nfsslot** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %13, i64 %14
  %16 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %15, i32 0, i32 1
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %18 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* %17, %struct.mbuf** %18, align 8
  %19 = load %struct.nfsslot*, %struct.nfsslot** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %19, i64 %20
  %22 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %21, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %22, align 8
  br label %44

23:                                               ; preds = %4
  %24 = load %struct.nfsslot*, %struct.nfsslot** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %24, i64 %25
  %27 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %26, i32 0, i32 1
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.nfsslot*, %struct.nfsslot** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %31, i64 %32
  %34 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %33, i32 0, i32 1
  %35 = load %struct.mbuf*, %struct.mbuf** %34, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %38, align 8
  %40 = load %struct.nfsslot*, %struct.nfsslot** %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %40, i64 %41
  %43 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %42, i32 0, i32 1
  store %struct.mbuf* %39, %struct.mbuf** %43, align 8
  br label %44

44:                                               ; preds = %37, %12
  %45 = load %struct.nfsslot*, %struct.nfsslot** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %45, i64 %46
  %48 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  ret void
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
