; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_setattr_args = type { %struct.vattr*, %struct.vnode* }
%struct.vattr = type { i64, i64, i64, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.vnode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vop_generic_args = type { i32 }

@VNOVAL = common dso_local global i64 0, align 8
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @null_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_setattr(%struct.vop_setattr_args* %0) #0 {
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
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VNOVAL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %29
  %37 = load %struct.vattr*, %struct.vattr** %5, align 8
  %38 = getelementptr inbounds %struct.vattr, %struct.vattr* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
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
  br i1 %48, label %49, label %60

49:                                               ; preds = %43, %36, %29, %23, %17, %1
  %50 = load %struct.vnode*, %struct.vnode** %4, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MNT_RDONLY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @EROFS, align 4
  store i32 %59, i32* %2, align 4
  br label %99

60:                                               ; preds = %49, %43
  %61 = load %struct.vattr*, %struct.vattr** %5, align 8
  %62 = getelementptr inbounds %struct.vattr, %struct.vattr* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VNOVAL, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %60
  %67 = load %struct.vnode*, %struct.vnode** %4, align 8
  %68 = getelementptr inbounds %struct.vnode, %struct.vnode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %82 [
    i32 132, label %70
    i32 133, label %72
    i32 134, label %72
    i32 128, label %72
    i32 131, label %72
    i32 129, label %81
    i32 130, label %81
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* @EISDIR, align 4
  store i32 %71, i32* %2, align 4
  br label %99

72:                                               ; preds = %66, %66, %66, %66
  %73 = load %struct.vattr*, %struct.vattr** %5, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @VNOVAL, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %79, i32* %2, align 4
  br label %99

80:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %99

81:                                               ; preds = %66, %66
  br label %82

82:                                               ; preds = %66, %81
  %83 = load %struct.vnode*, %struct.vnode** %4, align 8
  %84 = getelementptr inbounds %struct.vnode, %struct.vnode* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MNT_RDONLY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @EROFS, align 4
  store i32 %92, i32* %2, align 4
  br label %99

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94, %60
  %96 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %97 = bitcast %struct.vop_setattr_args* %96 to %struct.vop_generic_args*
  %98 = call i32 @null_bypass(%struct.vop_generic_args* %97)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %91, %80, %78, %70, %58
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @null_bypass(%struct.vop_generic_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
