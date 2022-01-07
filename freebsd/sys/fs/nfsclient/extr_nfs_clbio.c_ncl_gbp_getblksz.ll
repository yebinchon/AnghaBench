; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_gbp_getblksz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_gbp_getblksz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfsnode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i64)* @ncl_gbp_getblksz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncl_gbp_getblksz(%struct.vnode* %0, i64 %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfsnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call %struct.nfsnode* @VTONFS(%struct.vnode* %9)
  store %struct.nfsnode* %10, %struct.nfsnode** %5, align 8
  %11 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %12 = call i32 @NFSLOCKNODE(%struct.nfsnode* %11)
  %13 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %14 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %17 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %16)
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %46

30:                                               ; preds = %2
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %4, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sub nsw i32 %39, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %30
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
