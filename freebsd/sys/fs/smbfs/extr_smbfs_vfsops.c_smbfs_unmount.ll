; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32, i32* }
%struct.smbmount = type { i64, %struct.smb_dev*, i32 }
%struct.smb_dev = type { i32 }
%struct.smb_cred = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"smbfs_unmount: flags=%04x\0A\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@MNT_FORCE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No private data for mount point\00", align 1
@M_SMBFSDATA = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @smbfs_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_unmount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.smbmount*, align 8
  %8 = alloca %struct.smb_cred*, align 8
  %9 = alloca %struct.smb_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = call %struct.smbmount* @VFSTOSMBFS(%struct.mount* %12)
  store %struct.smbmount* %13, %struct.smbmount** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @SMBVDEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %16, %struct.thread** %6, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MNT_FORCE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @FORCECLOSE, align 4
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %21, %2
  br label %26

26:                                               ; preds = %42, %25
  %27 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %28 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.mount*, %struct.mount** %4, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.thread*, %struct.thread** %6, align 8
  %32 = call i32 @vflush(%struct.mount* %29, i32 1, i32 %30, %struct.thread* %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @EBUSY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %39 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ false, %33 ], [ %41, %37 ]
  br i1 %43, label %26, label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %101

49:                                               ; preds = %44
  %50 = call %struct.smb_cred* (...) @smbfs_malloc_scred()
  store %struct.smb_cred* %50, %struct.smb_cred** %8, align 8
  %51 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %52 = load %struct.thread*, %struct.thread** %6, align 8
  %53 = load %struct.thread*, %struct.thread** %6, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @smb_makescred(%struct.smb_cred* %51, %struct.thread* %52, i32 %55)
  %57 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %58 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @smb_share_lock(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %97

64:                                               ; preds = %49
  %65 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %66 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %69 = call i32 @smb_share_put(i32 %67, %struct.smb_cred* %68)
  %70 = call i32 (...) @SMB_LOCK()
  %71 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %72 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %71, i32 0, i32 1
  %73 = load %struct.smb_dev*, %struct.smb_dev** %72, align 8
  store %struct.smb_dev* %73, %struct.smb_dev** %9, align 8
  %74 = load %struct.smb_dev*, %struct.smb_dev** %9, align 8
  %75 = icmp ne %struct.smb_dev* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %64
  %77 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %64
  %79 = load %struct.smb_dev*, %struct.smb_dev** %9, align 8
  %80 = call i32 @sdp_trydestroy(%struct.smb_dev* %79)
  %81 = load %struct.mount*, %struct.mount** %4, align 8
  %82 = getelementptr inbounds %struct.mount, %struct.mount* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = call i32 (...) @SMB_UNLOCK()
  %84 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %85 = load i32, i32* @M_SMBFSDATA, align 4
  %86 = call i32 @free(%struct.smbmount* %84, i32 %85)
  %87 = load %struct.mount*, %struct.mount** %4, align 8
  %88 = call i32 @MNT_ILOCK(%struct.mount* %87)
  %89 = load i32, i32* @MNT_LOCAL, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.mount*, %struct.mount** %4, align 8
  %92 = getelementptr inbounds %struct.mount, %struct.mount* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.mount*, %struct.mount** %4, align 8
  %96 = call i32 @MNT_IUNLOCK(%struct.mount* %95)
  br label %97

97:                                               ; preds = %78, %63
  %98 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %99 = call i32 @smbfs_free_scred(%struct.smb_cred* %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %47
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.smbmount* @VFSTOSMBFS(%struct.mount*) #1

declare dso_local i32 @SMBVDEBUG(i8*, i32) #1

declare dso_local i32 @vflush(%struct.mount*, i32, i32, %struct.thread*) #1

declare dso_local %struct.smb_cred* @smbfs_malloc_scred(...) #1

declare dso_local i32 @smb_makescred(%struct.smb_cred*, %struct.thread*, i32) #1

declare dso_local i32 @smb_share_lock(i32) #1

declare dso_local i32 @smb_share_put(i32, %struct.smb_cred*) #1

declare dso_local i32 @SMB_LOCK(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @sdp_trydestroy(%struct.smb_dev*) #1

declare dso_local i32 @SMB_UNLOCK(...) #1

declare dso_local i32 @free(%struct.smbmount*, i32) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @smbfs_free_scred(%struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
