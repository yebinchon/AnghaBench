; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_leaseexpiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_leaseexpiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@nfsrv_stablefirst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NFSD_MONOSEC = common dso_local global i64 0, align 8
@nfsrv_lease = common dso_local global i32 0, align 4
@NFSRV_LEASEDELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @nfsrv_leaseexpiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsrv_leaseexpiry() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsrv_stablefirst, i32 0, i32 0), align 8
  %3 = load i64, i64* @NFSD_MONOSEC, align 8
  %4 = icmp sgt i64 %2, %3
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i64, i64* @NFSD_MONOSEC, align 8
  %7 = load i32, i32* @nfsrv_lease, align 4
  %8 = load i32, i32* @NFSRV_LEASEDELTA, align 4
  %9 = add nsw i32 %7, %8
  %10 = mul nsw i32 2, %9
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %6, %11
  store i64 %12, i64* %1, align 8
  br label %21

13:                                               ; preds = %0
  %14 = load i64, i64* @NFSD_MONOSEC, align 8
  %15 = load i32, i32* @nfsrv_lease, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load i32, i32* @NFSRV_LEASEDELTA, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %13, %5
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
