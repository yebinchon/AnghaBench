; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_layoutcommit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_layoutcommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32 }
%struct.timespec = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsvattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_layoutcommit(%struct.nfsrv_descript* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.timespec* %8, i32 %9, i32* %10, i32 %11, i8* %12, i32* %13, i32* %14, %struct.ucred* %15, i32* %16) #0 {
  %18 = alloca %struct.nfsrv_descript*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.timespec*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.ucred*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.nfsvattr, align 4
  %36 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %18, align 8
  store i32 %1, i32* %19, align 4
  store i32 %2, i32* %20, align 4
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store %struct.timespec* %8, %struct.timespec** %26, align 8
  store i32 %9, i32* %27, align 4
  store i32* %10, i32** %28, align 8
  store i32 %11, i32* %29, align 4
  store i8* %12, i8** %30, align 8
  store i32* %13, i32** %31, align 8
  store i32* %14, i32** %32, align 8
  store %struct.ucred* %15, %struct.ucred** %33, align 8
  store i32* %16, i32** %34, align 8
  %37 = load i32, i32* %19, align 4
  %38 = load i32*, i32** %34, align 8
  %39 = call i32 @nfsrv_updatemdsattr(i32 %37, %struct.nfsvattr* %35, i32* %38)
  store i32 %39, i32* %36, align 4
  %40 = load i32, i32* %36, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %17
  %43 = load i32*, i32** %31, align 8
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %35, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %32, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %17
  %48 = load i32, i32* %36, align 4
  ret i32 %48
}

declare dso_local i32 @nfsrv_updatemdsattr(i32, %struct.nfsvattr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
