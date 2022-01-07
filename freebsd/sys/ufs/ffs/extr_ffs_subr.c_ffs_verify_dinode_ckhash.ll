; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_verify_dinode_ckhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_verify_dinode_ckhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32 }
%struct.ufs2_dinode = type { i64, i64 }

@CK_INODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffs_verify_dinode_ckhash(%struct.fs* %0, %struct.ufs2_dinode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs*, align 8
  %5 = alloca %struct.ufs2_dinode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fs* %0, %struct.fs** %4, align 8
  store %struct.ufs2_dinode* %1, %struct.ufs2_dinode** %5, align 8
  %8 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %5, align 8
  %9 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.fs*, %struct.fs** %4, align 8
  %14 = getelementptr inbounds %struct.fs, %struct.fs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CK_INODE, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %38

20:                                               ; preds = %12
  %21 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %5, align 8
  %22 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %5, align 8
  %25 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %5, align 8
  %27 = bitcast %struct.ufs2_dinode* %26 to i8*
  %28 = call i64 @calculate_crc32c(i64 -1, i8* %27, i32 16)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %5, align 8
  %31 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %38

36:                                               ; preds = %20
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %35, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @calculate_crc32c(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
