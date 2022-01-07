; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_deldsnmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_deldsnmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsdevice = type { i8*, i32 }
%struct.nfsmount = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"deldsdvp\0A\00", align 1
@PNFSDOP_FORCEDELDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"pNFS server: mirror %s failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfsdevice* @nfsrv_deldsnmp(i32 %0, %struct.nfsmount* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsmount*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsdevice*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.nfsmount* %1, %struct.nfsmount** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @NFSDDSLOCK()
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PNFSDOP_FORCEDELDS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %15 = call %struct.nfsdevice* @nfsv4_findmirror(%struct.nfsmount* %14)
  store %struct.nfsdevice* %15, %struct.nfsdevice** %7, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %18 = call %struct.nfsdevice* @nfsrv_findmirroredds(%struct.nfsmount* %17)
  store %struct.nfsdevice* %18, %struct.nfsdevice** %7, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.nfsdevice*, %struct.nfsdevice** %7, align 8
  %21 = icmp ne %struct.nfsdevice* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.nfsdevice*, %struct.nfsdevice** %7, align 8
  %24 = call i32 @nfsrv_deleteds(%struct.nfsdevice* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i32 (...) @NFSDDSUNLOCK()
  %27 = load %struct.nfsdevice*, %struct.nfsdevice** %7, align 8
  %28 = icmp ne %struct.nfsdevice* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PNFSDOP_FORCEDELDS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.nfsdevice*, %struct.nfsdevice** %7, align 8
  %35 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @nfsrv_flexmirrordel(i32 %36, i32* %37)
  br label %39

39:                                               ; preds = %33, %29
  %40 = load %struct.nfsdevice*, %struct.nfsdevice** %7, align 8
  %41 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %25
  %45 = load %struct.nfsdevice*, %struct.nfsdevice** %7, align 8
  ret %struct.nfsdevice* %45
}

declare dso_local i32 @NFSD_DEBUG(i32, i8*) #1

declare dso_local i32 @NFSDDSLOCK(...) #1

declare dso_local %struct.nfsdevice* @nfsv4_findmirror(%struct.nfsmount*) #1

declare dso_local %struct.nfsdevice* @nfsrv_findmirroredds(%struct.nfsmount*) #1

declare dso_local i32 @nfsrv_deleteds(%struct.nfsdevice*) #1

declare dso_local i32 @NFSDDSUNLOCK(...) #1

declare dso_local i32 @nfsrv_flexmirrordel(i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
