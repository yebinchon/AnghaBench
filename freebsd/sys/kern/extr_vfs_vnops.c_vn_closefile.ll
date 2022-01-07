; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_closefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_closefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, i32, i32*, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.flock = type { i32, i64, i64, i32 }

@badfileops = common dso_local global i32 0, align 4
@FHASLOCK = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.thread*)* @vn_closefile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_closefile(%struct.file* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.flock, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 4
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %5, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 3
  store i32* @badfileops, i32** %13, align 8
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FHASLOCK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DTYPE_VNODE, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %2
  %27 = phi i1 [ false, %2 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.vnode*, %struct.vnode** %5, align 8
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.file*, %struct.file** %3, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @vn_close1(%struct.vnode* %29, i32 %32, i32 %35, %struct.thread* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @__predict_false(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %26
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @F_UNLCK, align 4
  %48 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.vnode*, %struct.vnode** %5, align 8
  %50 = load %struct.file*, %struct.file** %3, align 8
  %51 = load i32, i32* @F_UNLCK, align 4
  %52 = load i32, i32* @F_FLOCK, align 4
  %53 = call i32 @VOP_ADVLOCK(%struct.vnode* %49, %struct.file* %50, i32 %51, %struct.flock* %6, i32 %52)
  %54 = load %struct.vnode*, %struct.vnode** %5, align 8
  %55 = call i32 @vrele(%struct.vnode* %54)
  br label %56

56:                                               ; preds = %42, %26
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @vn_close1(%struct.vnode*, i32, i32, %struct.thread*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @VOP_ADVLOCK(%struct.vnode*, %struct.file*, i32, %struct.flock*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
