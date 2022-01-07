; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_dircookie_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_dircookie_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsnode = type { i32, i32 }

@NDIRCOOKIELK = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nfsdirlk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncl_dircookie_lock(%struct.nfsnode* %0) #0 {
  %2 = alloca %struct.nfsnode*, align 8
  store %struct.nfsnode* %0, %struct.nfsnode** %2, align 8
  %3 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %4 = call i32 @NFSLOCKNODE(%struct.nfsnode* %3)
  br label %5

5:                                                ; preds = %12, %1
  %6 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %7 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NDIRCOOKIELK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %14 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %13, i32 0, i32 0
  %15 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %16 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %15, i32 0, i32 1
  %17 = load i32, i32* @PZERO, align 4
  %18 = call i32 @msleep(i32* %14, i32* %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %5

19:                                               ; preds = %5
  %20 = load i32, i32* @NDIRCOOKIELK, align 4
  %21 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %22 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %26 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %25)
  ret void
}

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
