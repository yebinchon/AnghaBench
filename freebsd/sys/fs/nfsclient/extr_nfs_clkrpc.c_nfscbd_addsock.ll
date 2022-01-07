; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfscbd_addsock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfscbd_addsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket*, i32* }
%struct.socket = type { i64 }

@sb_max_adj = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@nfscbd_pool = common dso_local global i32 0, align 4
@badfileops = common dso_local global i32 0, align 4
@NFS_CALLBCKPROG = common dso_local global i32 0, align 4
@NFSV4_CBVERS = common dso_local global i32 0, align 4
@nfscb_program = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscbd_addsock(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %5, align 8
  %11 = load i32, i32* @sb_max_adj, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @soreserve(%struct.socket* %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_DGRAM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @nfscbd_pool, align 4
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = call i32* @svc_dg_create(i32 %27, %struct.socket* %28, i32 0, i32 0)
  store i32* %29, i32** %7, align 8
  br label %34

30:                                               ; preds = %20
  %31 = load i32, i32* @nfscbd_pool, align 4
  %32 = load %struct.socket*, %struct.socket** %5, align 8
  %33 = call i32* @svc_vc_create(i32 %31, %struct.socket* %32, i32 0, i32 0)
  store i32* %33, i32** %7, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.file*, %struct.file** %3, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 1
  store i32* @badfileops, i32** %39, align 8
  %40 = load %struct.file*, %struct.file** %3, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %41, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @NFS_CALLBCKPROG, align 4
  %44 = load i32, i32* @NFSV4_CBVERS, align 4
  %45 = load i32, i32* @nfscb_program, align 4
  %46 = call i32 @svc_reg(i32* %42, i32 %43, i32 %44, i32 %45, i32* null)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @SVC_RELEASE(i32* %47)
  br label %49

49:                                               ; preds = %37, %34
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32* @svc_dg_create(i32, %struct.socket*, i32, i32) #1

declare dso_local i32* @svc_vc_create(i32, %struct.socket*, i32, i32) #1

declare dso_local i32 @svc_reg(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @SVC_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
