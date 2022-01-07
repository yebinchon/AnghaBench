; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_htree_lookup_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.buf* }
%struct.buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext2fs_htree_lookup_info*)* @ext2_htree_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_htree_release(%struct.ext2fs_htree_lookup_info* %0) #0 {
  %2 = alloca %struct.ext2fs_htree_lookup_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.buf*, align 8
  store %struct.ext2fs_htree_lookup_info* %0, %struct.ext2fs_htree_lookup_info** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %2, align 8
  %8 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %2, align 8
  %13 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.buf*, %struct.buf** %17, align 8
  store %struct.buf* %18, %struct.buf** %4, align 8
  %19 = load %struct.buf*, %struct.buf** %4, align 8
  %20 = icmp ne %struct.buf* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.buf*, %struct.buf** %4, align 8
  %23 = call i32 @brelse(%struct.buf* %22)
  br label %24

24:                                               ; preds = %21, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
