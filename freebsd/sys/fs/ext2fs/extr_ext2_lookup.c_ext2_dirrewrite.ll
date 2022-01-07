; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_dirrewrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_dirrewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i64 }
%struct.componentname = type { i32 }
%struct.buf = type { i64 }
%struct.ext2fs_direct_2 = type { i32, i32 }
%struct.vnode = type { i32 }

@EXT2F_INCOMPAT_FTYPE = common dso_local global i32 0, align 4
@EXT2_FT_UNKNOWN = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_dirrewrite(%struct.inode* %0, %struct.inode* %1, %struct.componentname* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.ext2fs_direct_2*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.vnode* @ITOV(%struct.inode* %12)
  store %struct.vnode* %13, %struct.vnode** %10, align 8
  %14 = load %struct.vnode*, %struct.vnode** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = bitcast %struct.ext2fs_direct_2** %9 to i8**
  %20 = call i32 @ext2_blkatoff(%struct.vnode* %14, i32 %18, i8** %19, %struct.buf** %8)
  store i32 %20, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %9, align 8
  %29 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EXT2F_INCOMPAT_FTYPE, align 4
  %34 = call i64 @EXT2_HAS_INCOMPAT_FEATURE(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IFTODT(i32 %39)
  %41 = call i32 @DTTOFT(i32 %40)
  %42 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %9, align 8
  %43 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %24
  %45 = load i32, i32* @EXT2_FT_UNKNOWN, align 4
  %46 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %9, align 8
  %47 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %36
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = load %struct.buf*, %struct.buf** %8, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.ext2fs_direct_2*
  %54 = call i32 @ext2_dirent_csum_set(%struct.inode* %49, %struct.ext2fs_direct_2* %53)
  %55 = load %struct.buf*, %struct.buf** %8, align 8
  %56 = call i32 @bwrite(%struct.buf* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @IN_CHANGE, align 4
  %58 = load i32, i32* @IN_UPDATE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %48, %22
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local i32 @ext2_blkatoff(%struct.vnode*, i32, i8**, %struct.buf**) #1

declare dso_local i64 @EXT2_HAS_INCOMPAT_FEATURE(i32, i32) #1

declare dso_local i32 @DTTOFT(i32) #1

declare dso_local i32 @IFTODT(i32) #1

declare dso_local i32 @ext2_dirent_csum_set(%struct.inode*, %struct.ext2fs_direct_2*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
