; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_open_args = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@VBLK = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_open_args*)* @ext2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_open(%struct.vop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_open_args*, align 8
  store %struct.vop_open_args* %0, %struct.vop_open_args** %3, align 8
  %4 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %5 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VBLK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VCHR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11, %1
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %11
  %22 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call %struct.TYPE_5__* @VTOI(%struct.TYPE_4__* %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @APPEND, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FWRITE, align 4
  %36 = load i32, i32* @O_APPEND, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @FWRITE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @EPERM, align 4
  store i32 %42, i32* %2, align 4
  br label %57

43:                                               ; preds = %31, %21
  %44 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call %struct.TYPE_5__* @VTOI(%struct.TYPE_4__* %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %54 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vnode_create_vobject(%struct.TYPE_4__* %46, i32 %52, i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %43, %41, %19
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_5__* @VTOI(%struct.TYPE_4__*) #1

declare dso_local i32 @vnode_create_vobject(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
