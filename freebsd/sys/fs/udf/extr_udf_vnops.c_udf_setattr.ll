; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_setattr_args = type { %struct.vattr*, %struct.vnode* }
%struct.vattr = type { i64, i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.vnode = type { i32 }

@VNOVAL = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @udf_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr*, align 8
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %3, align 8
  %6 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %6, i32 0, i32 1
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %4, align 8
  %9 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %9, i32 0, i32 0
  %11 = load %struct.vattr*, %struct.vattr** %10, align 8
  store %struct.vattr* %11, %struct.vattr** %5, align 8
  %12 = load %struct.vattr*, %struct.vattr** %5, align 8
  %13 = getelementptr inbounds %struct.vattr, %struct.vattr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VNOVAL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %49, label %17

17:                                               ; preds = %1
  %18 = load %struct.vattr*, %struct.vattr** %5, align 8
  %19 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VNOVAL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %49, label %23

23:                                               ; preds = %17
  %24 = load %struct.vattr*, %struct.vattr** %5, align 8
  %25 = getelementptr inbounds %struct.vattr, %struct.vattr* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VNOVAL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %23
  %30 = load %struct.vattr*, %struct.vattr** %5, align 8
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VNOVAL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %29
  %37 = load %struct.vattr*, %struct.vattr** %5, align 8
  %38 = getelementptr inbounds %struct.vattr, %struct.vattr* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VNOVAL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.vattr*, %struct.vattr** %5, align 8
  %45 = getelementptr inbounds %struct.vattr, %struct.vattr* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VNOVAL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %36, %29, %23, %17, %1
  %50 = load i32, i32* @EROFS, align 4
  store i32 %50, i32* %2, align 4
  br label %68

51:                                               ; preds = %43
  %52 = load %struct.vattr*, %struct.vattr** %5, align 8
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VNOVAL, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.vnode*, %struct.vnode** %4, align 8
  %59 = getelementptr inbounds %struct.vnode, %struct.vnode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %66 [
    i32 134, label %61
    i32 132, label %63
    i32 129, label %63
    i32 135, label %65
    i32 136, label %65
    i32 128, label %65
    i32 133, label %65
    i32 130, label %65
    i32 137, label %65
    i32 131, label %65
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @EISDIR, align 4
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %57, %57
  %64 = load i32, i32* @EROFS, align 4
  store i32 %64, i32* %2, align 4
  br label %68

65:                                               ; preds = %57, %57, %57, %57, %57, %57, %57
  store i32 0, i32* %2, align 4
  br label %68

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %51
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %65, %63, %61, %49
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
