; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_add_first_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_add_first_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ext2fs_direct_2 = type { i32, i32 }
%struct.componentname = type { i32 }
%struct.inode = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iovec = type { i32, i8* }
%struct.uio = type { i32, i32, i32, %struct.thread*, i32, i32, %struct.iovec* }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"ext2_add_first_entry: bad directory offset\00", align 1
@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.ext2fs_direct_2*, %struct.componentname*)* @ext2_add_first_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_add_first_entry(%struct.vnode* %0, %struct.ext2fs_direct_2* %1, %struct.componentname* %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ext2fs_direct_2*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.iovec, align 8
  %9 = alloca %struct.uio, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.ext2fs_direct_2* %1, %struct.ext2fs_direct_2** %5, align 8
  store %struct.componentname* %2, %struct.componentname** %6, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = call %struct.inode* @VTOI(%struct.vnode* %13)
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %3
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %34 = call i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.TYPE_2__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %42 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @M_TEMP, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = call i8* @malloc(i32 %43, i32 %44, i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %12, align 4
  br label %127

51:                                               ; preds = %36
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %54 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %55 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @EXT2_DIR_REC_LEN(i32 %56)
  %58 = call i32 @memcpy(i8* %52, %struct.ext2fs_direct_2* %53, i32 %57)
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @EXT2_DIRENT_TAIL(i8* %59, i32 %60)
  %62 = call i32 @ext2_init_dirent_tail(i32 %61)
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = bitcast i8* %64 to %struct.ext2fs_direct_2*
  %66 = call i32 @ext2_dirent_csum_set(%struct.inode* %63, %struct.ext2fs_direct_2* %65)
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  br label %97

78:                                               ; preds = %29
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %81 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  %86 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %87 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @EXT2_DIR_REC_LEN(i32 %88)
  %90 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %95 = bitcast %struct.ext2fs_direct_2* %94 to i8*
  %96 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %78, %51
  %98 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 6
  store %struct.iovec* %8, %struct.iovec** %98, align 8
  %99 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* @UIO_WRITE, align 4
  %101 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 5
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @UIO_SYSSPACE, align 4
  %103 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 4
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 3
  store %struct.thread* null, %struct.thread** %104, align 8
  %105 = load %struct.vnode*, %struct.vnode** %4, align 8
  %106 = load i32, i32* @IO_SYNC, align 4
  %107 = load %struct.componentname*, %struct.componentname** %6, align 8
  %108 = getelementptr inbounds %struct.componentname, %struct.componentname* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @VOP_WRITE(%struct.vnode* %105, %struct.uio* %9, i32 %106, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %97
  br label %127

114:                                              ; preds = %97
  %115 = load %struct.inode*, %struct.inode** %7, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @roundup2(i32 %117, i32 %118)
  %120 = load %struct.inode*, %struct.inode** %7, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @IN_CHANGE, align 4
  %123 = load %struct.inode*, %struct.inode** %7, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %114, %113, %49
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* @M_TEMP, align 4
  %130 = call i32 @free(i8* %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  ret i32 %131
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.TYPE_2__*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.ext2fs_direct_2*, i32) #1

declare dso_local i32 @EXT2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext2_init_dirent_tail(i32) #1

declare dso_local i32 @EXT2_DIRENT_TAIL(i8*, i32) #1

declare dso_local i32 @ext2_dirent_csum_set(%struct.inode*, %struct.ext2fs_direct_2*) #1

declare dso_local i32 @VOP_WRITE(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
