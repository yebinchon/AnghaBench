; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_awrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_awrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i64, i32, i32, i64, %struct.vnode* }
%struct.vnode = type { i64, %struct.TYPE_4__*, %struct.bufobj }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bufobj = type { i32 }

@unmapped_buf = common dso_local global i64 0, align 8
@GB_UNMAPPED = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@B_CLUSTEROK = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@DEV_BSHIFT = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_bio_awrite(%struct.buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.bufobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %3, align 8
  %14 = load %struct.buf*, %struct.buf** %3, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.buf*, %struct.buf** %3, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 5
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  store %struct.vnode* %19, %struct.vnode** %8, align 8
  %20 = load %struct.vnode*, %struct.vnode** %8, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 2
  store %struct.bufobj* %21, %struct.bufobj** %4, align 8
  %22 = load %struct.buf*, %struct.buf** %3, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @unmapped_buf, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @GB_UNMAPPED, align 4
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %13, align 4
  %32 = load %struct.vnode*, %struct.vnode** %8, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VREG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %150

37:                                               ; preds = %30
  %38 = load %struct.vnode*, %struct.vnode** %8, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %150

42:                                               ; preds = %37
  %43 = load %struct.buf*, %struct.buf** %3, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @B_CLUSTEROK, align 4
  %47 = load i32, i32* @B_INVAL, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* @B_CLUSTEROK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %150

52:                                               ; preds = %42
  %53 = load %struct.vnode*, %struct.vnode** %8, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @MAXPHYS, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %63 = call i32 @BO_RLOCK(%struct.bufobj* %62)
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %88, %52
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.vnode*, %struct.vnode** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.buf*, %struct.buf** %3, align 8
  %75 = getelementptr inbounds %struct.buf, %struct.buf* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* @DEV_BSHIFT, align 4
  %81 = ashr i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %76, %82
  %84 = call i64 @vfs_bio_clcheck(%struct.vnode* %69, i32 %70, i32 %73, i64 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  br label %91

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %64

91:                                               ; preds = %86, %64
  store i32 1, i32* %6, align 4
  br label %92

92:                                               ; preds = %124, %91
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp sle i32 %99, %100
  br label %102

102:                                              ; preds = %98, %92
  %103 = phi i1 [ false, %92 ], [ %101, %98 ]
  br i1 %103, label %104, label %127

104:                                              ; preds = %102
  %105 = load %struct.vnode*, %struct.vnode** %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load %struct.buf*, %struct.buf** %3, align 8
  %111 = getelementptr inbounds %struct.buf, %struct.buf* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %11, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* @DEV_BSHIFT, align 4
  %117 = ashr i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = sub nsw i64 %112, %118
  %120 = call i64 @vfs_bio_clcheck(%struct.vnode* %105, i32 %106, i32 %109, i64 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %104
  br label %127

123:                                              ; preds = %104
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %92

127:                                              ; preds = %122, %102
  %128 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %129 = call i32 @BO_RUNLOCK(%struct.bufobj* %128)
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %149

137:                                              ; preds = %127
  %138 = load %struct.buf*, %struct.buf** %3, align 8
  %139 = call i32 @BUF_UNLOCK(%struct.buf* %138)
  %140 = load %struct.vnode*, %struct.vnode** %8, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %6, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @cluster_wbuild(%struct.vnode* %140, i32 %141, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %2, align 4
  br label %164

149:                                              ; preds = %127
  br label %150

150:                                              ; preds = %149, %42, %37, %30
  %151 = load %struct.buf*, %struct.buf** %3, align 8
  %152 = call i32 @bremfree(%struct.buf* %151)
  %153 = load i32, i32* @B_ASYNC, align 4
  %154 = load %struct.buf*, %struct.buf** %3, align 8
  %155 = getelementptr inbounds %struct.buf, %struct.buf* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.buf*, %struct.buf** %3, align 8
  %159 = getelementptr inbounds %struct.buf, %struct.buf* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %10, align 4
  %161 = load %struct.buf*, %struct.buf** %3, align 8
  %162 = call i32 @bwrite(%struct.buf* %161)
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %150, %137
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @BO_RLOCK(%struct.bufobj*) #1

declare dso_local i64 @vfs_bio_clcheck(%struct.vnode*, i32, i32, i64) #1

declare dso_local i32 @BO_RUNLOCK(%struct.bufobj*) #1

declare dso_local i32 @BUF_UNLOCK(%struct.buf*) #1

declare dso_local i32 @cluster_wbuild(%struct.vnode*, i32, i32, i32, i32) #1

declare dso_local i32 @bremfree(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
