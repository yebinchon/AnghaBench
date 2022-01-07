; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_subr.c_ext2_blkatoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_subr.c_ext2_blkatoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.buf = type { i64 }
%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }

@NOCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_blkatoff(%struct.vnode* %0, i32 %1, i8** %2, %struct.buf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.buf**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.m_ext2fs*, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store %struct.buf** %3, %struct.buf*** %9, align 8
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = call %struct.inode* @VTOI(%struct.vnode* %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.m_ext2fs*, %struct.m_ext2fs** %19, align 8
  store %struct.m_ext2fs* %20, %struct.m_ext2fs** %11, align 8
  %21 = load %struct.m_ext2fs*, %struct.m_ext2fs** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @lblkno(%struct.m_ext2fs* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.m_ext2fs*, %struct.m_ext2fs** %11, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @blksize(%struct.m_ext2fs* %24, %struct.inode* %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @NOCRED, align 4
  %32 = call i32 @bread(%struct.vnode* %28, i32 %29, i32 %30, i32 %31, %struct.buf** %12)
  store i32 %32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load %struct.buf*, %struct.buf** %12, align 8
  %36 = call i32 @brelse(%struct.buf* %35)
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %65

38:                                               ; preds = %4
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = load %struct.buf*, %struct.buf** %12, align 8
  %41 = call i32 @ext2_dir_blk_csum_verify(%struct.inode* %39, %struct.buf* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.buf*, %struct.buf** %12, align 8
  %46 = call i32 @brelse(%struct.buf* %45)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %5, align 4
  br label %65

48:                                               ; preds = %38
  %49 = load i8**, i8*** %8, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.buf*, %struct.buf** %12, align 8
  %53 = getelementptr inbounds %struct.buf, %struct.buf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.m_ext2fs*, %struct.m_ext2fs** %11, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @blkoff(%struct.m_ext2fs* %56, i32 %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8**, i8*** %8, align 8
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %51, %48
  %63 = load %struct.buf*, %struct.buf** %12, align 8
  %64 = load %struct.buf**, %struct.buf*** %9, align 8
  store %struct.buf* %63, %struct.buf** %64, align 8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %44, %34
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @lblkno(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @blksize(%struct.m_ext2fs*, %struct.inode*, i32) #1

declare dso_local i32 @bread(%struct.vnode*, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ext2_dir_blk_csum_verify(%struct.inode*, %struct.buf*) #1

declare dso_local i32 @blkoff(%struct.m_ext2fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
