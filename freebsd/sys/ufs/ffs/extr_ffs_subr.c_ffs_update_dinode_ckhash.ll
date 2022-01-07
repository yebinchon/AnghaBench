; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_update_dinode_ckhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_update_dinode_ckhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32 }
%struct.ufs2_dinode = type { i64, i64 }

@CK_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_update_dinode_ckhash(%struct.fs* %0, %struct.ufs2_dinode* %1) #0 {
  %3 = alloca %struct.fs*, align 8
  %4 = alloca %struct.ufs2_dinode*, align 8
  store %struct.fs* %0, %struct.fs** %3, align 8
  store %struct.ufs2_dinode* %1, %struct.ufs2_dinode** %4, align 8
  %5 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %6 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.fs*, %struct.fs** %3, align 8
  %11 = getelementptr inbounds %struct.fs, %struct.fs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CK_INODE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %2
  br label %25

17:                                               ; preds = %9
  %18 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %19 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %21 = bitcast %struct.ufs2_dinode* %20 to i8*
  %22 = call i64 @calculate_crc32c(i64 -1, i8* %21, i32 16)
  %23 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %24 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @calculate_crc32c(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
