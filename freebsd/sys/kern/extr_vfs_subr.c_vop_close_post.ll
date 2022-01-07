; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vop_close_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vop_close_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_close_args = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NOCRED = common dso_local global i64 0, align 8
@VI_DOOMED = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@NOTE_CLOSE_WRITE = common dso_local global i32 0, align 4
@NOTE_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vop_close_post(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vop_close_args*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vop_close_args*
  store %struct.vop_close_args* %7, %struct.vop_close_args** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %2
  %11 = load %struct.vop_close_args*, %struct.vop_close_args** %5, align 8
  %12 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NOCRED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load %struct.vop_close_args*, %struct.vop_close_args** %5, align 8
  %18 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VI_DOOMED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %16, %10
  %26 = load %struct.vop_close_args*, %struct.vop_close_args** %5, align 8
  %27 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.vop_close_args*, %struct.vop_close_args** %5, align 8
  %30 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FWRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @NOTE_CLOSE_WRITE, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @NOTE_CLOSE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @VFS_KNOTE_LOCKED(%struct.TYPE_2__* %28, i32 %40)
  br label %42

42:                                               ; preds = %39, %16, %2
  ret void
}

declare dso_local i32 @VFS_KNOTE_LOCKED(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
