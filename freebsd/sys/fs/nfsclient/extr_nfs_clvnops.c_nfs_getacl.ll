; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_getacl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getacl_args = type { i64, i32, i32, i32, i32 }

@ACL_TYPE_NFS4 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFSERR_STALE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getacl_args*)* @nfs_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_getacl(%struct.vop_getacl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getacl_args*, align 8
  %4 = alloca i32, align 4
  store %struct.vop_getacl_args* %0, %struct.vop_getacl_args** %3, align 8
  %5 = load %struct.vop_getacl_args*, %struct.vop_getacl_args** %3, align 8
  %6 = getelementptr inbounds %struct.vop_getacl_args, %struct.vop_getacl_args* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ACL_TYPE_NFS4, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.vop_getacl_args*, %struct.vop_getacl_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_getacl_args, %struct.vop_getacl_args* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vop_getacl_args*, %struct.vop_getacl_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_getacl_args, %struct.vop_getacl_args* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vop_getacl_args*, %struct.vop_getacl_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_getacl_args, %struct.vop_getacl_args* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vop_getacl_args*, %struct.vop_getacl_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_getacl_args, %struct.vop_getacl_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nfsrpc_getacl(i32 %15, i32 %18, i32 %21, i32 %24, i32* null)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NFSERR_STALE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %12
  %30 = load %struct.vop_getacl_args*, %struct.vop_getacl_args** %3, align 8
  %31 = getelementptr inbounds %struct.vop_getacl_args, %struct.vop_getacl_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @nfscl_maperr(i32 %32, i32 %33, i32 0, i32 0)
  %35 = load i32, i32* @EPERM, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %29, %12
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @nfsrpc_getacl(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
