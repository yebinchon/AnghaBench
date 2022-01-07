; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_newnfs_vncmpf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_newnfs_vncmpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.nfsfh = type { i64, i32 }
%struct.nfsnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @newnfs_vncmpf(%struct.vnode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfsfh*, align 8
  %7 = alloca %struct.nfsnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.nfsfh*
  store %struct.nfsfh* %9, %struct.nfsfh** %6, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = call %struct.nfsnode* @VTONFS(%struct.vnode* %10)
  store %struct.nfsnode* %11, %struct.nfsnode** %7, align 8
  %12 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %13 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nfsfh*, %struct.nfsfh** %6, align 8
  %18 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %2
  %22 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %23 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nfsfh*, %struct.nfsfh** %6, align 8
  %28 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.nfsfh*, %struct.nfsfh** %6, align 8
  %31 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @NFSBCMP(i32 %26, i32 %29, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21, %2
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i64 @NFSBCMP(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
