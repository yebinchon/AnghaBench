; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vnode* }
%struct.vnode = type { i64 }
%struct.thread = type { %struct.TYPE_2__, %struct.ucred* }
%struct.TYPE_2__ = type { i64 }
%struct.ucred = type { i32 }
%struct.vattr = type { i64 }

@VCHR = common dso_local global i64 0, align 8
@OFF_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@FIOSEEKDATA = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FIOSEEKHOLE = common dso_local global i32 0, align 4
@FOF_NOUPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_seek(%struct.file* %0, i64 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vattr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %16 = load %struct.thread*, %struct.thread** %8, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 1
  %18 = load %struct.ucred*, %struct.ucred** %17, align 8
  store %struct.ucred* %18, %struct.ucred** %9, align 8
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %10, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = call i64 @foffset_lock(%struct.file* %22, i32 0)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.vnode*, %struct.vnode** %10, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VCHR, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %136 [
    i32 132, label %31
    i32 130, label %52
    i32 131, label %111
    i32 129, label %112
    i32 128, label %124
  ]

31:                                               ; preds = %4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @OFF_MAX, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %42, %43
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @EOVERFLOW, align 4
  store i32 %47, i32* %14, align 4
  br label %138

48:                                               ; preds = %40, %37, %31
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %138

52:                                               ; preds = %4
  %53 = load %struct.vnode*, %struct.vnode** %10, align 8
  %54 = load i32, i32* @LK_SHARED, align 4
  %55 = load i32, i32* @LK_RETRY, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @vn_lock(%struct.vnode* %53, i32 %56)
  %58 = load %struct.vnode*, %struct.vnode** %10, align 8
  %59 = load %struct.ucred*, %struct.ucred** %9, align 8
  %60 = call i32 @VOP_GETATTR(%struct.vnode* %58, %struct.vattr* %11, %struct.ucred* %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.vnode*, %struct.vnode** %10, align 8
  %62 = call i32 @VOP_UNLOCK(%struct.vnode* %61, i32 0)
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %138

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load %struct.vnode*, %struct.vnode** %10, align 8
  %72 = getelementptr inbounds %struct.vnode, %struct.vnode* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VCHR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %79 = load %struct.ucred*, %struct.ucred** %9, align 8
  %80 = load %struct.thread*, %struct.thread** %8, align 8
  %81 = call i32 @fo_ioctl(%struct.file* %77, i32 %78, i64* %13, %struct.ucred* %79, %struct.thread* %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %76, %70, %66
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @OFF_MAX, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %6, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @OFF_MAX, align 8
  %101 = load i64, i64* %6, align 8
  %102 = sub nsw i64 %100, %101
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97, %89
  %105 = load i32, i32* @EOVERFLOW, align 4
  store i32 %105, i32* %14, align 4
  br label %138

106:                                              ; preds = %97, %94, %86
  %107 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %6, align 8
  br label %138

111:                                              ; preds = %4
  br label %138

112:                                              ; preds = %4
  %113 = load %struct.file*, %struct.file** %5, align 8
  %114 = load i32, i32* @FIOSEEKDATA, align 4
  %115 = load %struct.ucred*, %struct.ucred** %9, align 8
  %116 = load %struct.thread*, %struct.thread** %8, align 8
  %117 = call i32 @fo_ioctl(%struct.file* %113, i32 %114, i64* %6, %struct.ucred* %115, %struct.thread* %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @ENOTTY, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @EINVAL, align 4
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %121, %112
  br label %138

124:                                              ; preds = %4
  %125 = load %struct.file*, %struct.file** %5, align 8
  %126 = load i32, i32* @FIOSEEKHOLE, align 4
  %127 = load %struct.ucred*, %struct.ucred** %9, align 8
  %128 = load %struct.thread*, %struct.thread** %8, align 8
  %129 = call i32 @fo_ioctl(%struct.file* %125, i32 %126, i64* %6, %struct.ucred* %127, %struct.thread* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @ENOTTY, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %133, %124
  br label %138

136:                                              ; preds = %4
  %137 = load i32, i32* @EINVAL, align 4
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %136, %135, %123, %111, %106, %104, %65, %48, %46
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i64, i64* %6, align 8
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @EINVAL, align 4
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %147, %144, %141, %138
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %160

153:                                              ; preds = %149
  %154 = load %struct.vnode*, %struct.vnode** %10, align 8
  %155 = call i32 @VFS_KNOTE_UNLOCKED(%struct.vnode* %154, i32 0)
  %156 = load i64, i64* %6, align 8
  %157 = load %struct.thread*, %struct.thread** %8, align 8
  %158 = getelementptr inbounds %struct.thread, %struct.thread* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  br label %160

160:                                              ; preds = %153, %152
  %161 = load %struct.file*, %struct.file** %5, align 8
  %162 = load i64, i64* %6, align 8
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* @FOF_NOUPDATE, align 4
  br label %168

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ 0, %167 ]
  %170 = call i32 @foffset_unlock(%struct.file* %161, i64 %162, i32 %169)
  %171 = load i32, i32* %14, align 4
  ret i32 %171
}

declare dso_local i64 @foffset_lock(%struct.file*, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i64*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @VFS_KNOTE_UNLOCKED(%struct.vnode*, i32) #1

declare dso_local i32 @foffset_unlock(%struct.file*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
