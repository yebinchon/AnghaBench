; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_closeextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_closeextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_closeextattr_args = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_closeextattr_args*)* @ffs_closeextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_closeextattr(%struct.vop_closeextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_closeextattr_args*, align 8
  store %struct.vop_closeextattr_args* %0, %struct.vop_closeextattr_args** %3, align 8
  %4 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %5 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VCHR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VBLK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11, %1
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %20, i32* %2, align 4
  br label %53

21:                                               ; preds = %11
  %22 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MNT_RDONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @EROFS, align 4
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %26, %21
  %40 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %41 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %44 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %47 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %50 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ffs_close_ea(%struct.TYPE_4__* %42, i64 %45, i32 %48, i32 %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %39, %37, %19
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ffs_close_ea(%struct.TYPE_4__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
