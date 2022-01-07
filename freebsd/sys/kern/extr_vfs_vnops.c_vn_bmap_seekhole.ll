; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_bmap_seekhole.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_bmap_seekhole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ucred = type { i32 }
%struct.vattr = type { i32 }

@FIOSEEKHOLE = common dso_local global i64 0, align 8
@FIOSEEKDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Wrong command %lu\00", align 1
@LK_SHARED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_bmap_seekhole(%struct.vnode* %0, i64 %1, i32* %2, %struct.ucred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.vattr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @FIOSEEKHOLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @FIOSEEKDATA, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %4
  %24 = phi i1 [ true, %4 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %7, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %25, i8* %27)
  %29 = load %struct.vnode*, %struct.vnode** %6, align 8
  %30 = load i32, i32* @LK_SHARED, align 4
  %31 = call i64 @vn_lock(%struct.vnode* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @EBADF, align 4
  store i32 %34, i32* %5, align 4
  br label %145

35:                                               ; preds = %23
  %36 = load %struct.vnode*, %struct.vnode** %6, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VREG, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOTTY, align 4
  store i32 %42, i32* %15, align 4
  br label %135

43:                                               ; preds = %35
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8
  %45 = load %struct.ucred*, %struct.ucred** %9, align 8
  %46 = call i32 @VOP_GETATTR(%struct.vnode* %44, %struct.vattr* %10, %struct.ucred* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %135

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %15, align 4
  br label %135

59:                                               ; preds = %50
  %60 = load %struct.vnode*, %struct.vnode** %6, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %110, %59
  %70 = load i32, i32* %14, align 4
  %71 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %120

74:                                               ; preds = %69
  %75 = load %struct.vnode*, %struct.vnode** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @VOP_BMAP(%struct.vnode* %75, i32 %76, i32* null, i32* %12, i32* null, i32* null)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @ENOTTY, align 4
  store i32 %82, i32* %15, align 4
  br label %135

83:                                               ; preds = %74
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @FIOSEEKHOLE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @FIOSEEKDATA, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93, %86
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %13, align 4
  %100 = mul nsw i32 %98, %99
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %105, %97
  br label %135

109:                                              ; preds = %93, %90
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = srem i32 %114, %115
  %117 = sub nsw i32 %113, %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %14, align 4
  br label %69

120:                                              ; preds = %69
  %121 = load i32, i32* %14, align 4
  %122 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @FIOSEEKDATA, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @ENXIO, align 4
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %132, %128
  br label %135

135:                                              ; preds = %134, %108, %81, %57, %49, %41
  %136 = load %struct.vnode*, %struct.vnode** %6, align 8
  %137 = call i32 @VOP_UNLOCK(%struct.vnode* %136, i32 0)
  %138 = load i32, i32* %15, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %14, align 4
  %142 = load i32*, i32** %8, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %135
  %144 = load i32, i32* %15, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %33
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @VOP_BMAP(%struct.vnode*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
