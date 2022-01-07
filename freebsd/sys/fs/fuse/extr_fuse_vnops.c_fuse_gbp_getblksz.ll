; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_gbp_getblksz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_gbp_getblksz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"vfs_bio_getpages can't handle errors here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i64)* @fuse_gbp_getblksz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_gbp_getblksz(%struct.vnode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = call i32 @fuse_iosize(%struct.vnode* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = call i32 @fuse_vnode_size(%struct.vnode* %12, i32* %6, i32* null, i32* null)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %48

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %5, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sub nsw i32 %39, %43
  store i32 %44, i32* %7, align 4
  br label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %38
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @fuse_iosize(%struct.vnode*) #1

declare dso_local i32 @fuse_vnode_size(%struct.vnode*, i32*, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
