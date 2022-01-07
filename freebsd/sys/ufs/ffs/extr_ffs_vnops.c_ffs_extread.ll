; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_extread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_extread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.uio = type { i64, i64, i64 }
%struct.inode = type { %struct.ufs2_dinode* }
%struct.ufs2_dinode = type { i64 }
%struct.fs = type { i64, i64 }
%struct.buf = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"ffs_extread: uio->uio_resid < 0\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ffs_extread: uio->uio_offset < 0\00", align 1
@NOCRED = common dso_local global i32 0, align 4
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@UIO_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.uio*, i32)* @ffs_extread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_extread(%struct.vnode* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ufs2_dinode*, align 8
  %10 = alloca %struct.fs*, align 8
  %11 = alloca %struct.buf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = call %struct.inode* @VTOI(%struct.vnode* %21)
  store %struct.inode* %22, %struct.inode** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call %struct.fs* @ITOFS(%struct.inode* %23)
  store %struct.fs* %24, %struct.fs** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %26, align 8
  store %struct.ufs2_dinode* %27, %struct.ufs2_dinode** %9, align 8
  %28 = load %struct.uio*, %struct.uio** %6, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* %18, align 8
  %32 = icmp sge i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* %18, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %179

38:                                               ; preds = %3
  %39 = load %struct.uio*, %struct.uio** %6, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  store %struct.buf* null, %struct.buf** %11, align 8
  br label %45

45:                                               ; preds = %169, %38
  %46 = load %struct.uio*, %struct.uio** %6, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %170

50:                                               ; preds = %45
  %51 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %9, align 8
  %52 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.uio*, %struct.uio** %6, align 8
  %55 = getelementptr inbounds %struct.uio, %struct.uio* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  store i64 %57, i64* %14, align 8
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %170

60:                                               ; preds = %50
  %61 = load %struct.fs*, %struct.fs** %10, align 8
  %62 = load %struct.uio*, %struct.uio** %6, align 8
  %63 = getelementptr inbounds %struct.uio, %struct.uio* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @lblkno(%struct.fs* %61, i64 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %13, align 8
  %68 = load %struct.fs*, %struct.fs** %10, align 8
  %69 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %9, align 8
  %70 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i8* @sblksize(%struct.fs* %68, i64 %71, i64 %72)
  %74 = ptrtoint i8* %73 to i64
  store i64 %74, i64* %15, align 8
  %75 = load %struct.fs*, %struct.fs** %10, align 8
  %76 = load %struct.uio*, %struct.uio** %6, align 8
  %77 = getelementptr inbounds %struct.uio, %struct.uio* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @blkoff(%struct.fs* %75, i64 %78)
  store i64 %79, i64* %17, align 8
  %80 = load %struct.fs*, %struct.fs** %10, align 8
  %81 = getelementptr inbounds %struct.fs, %struct.fs* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %17, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %16, align 8
  %85 = load %struct.uio*, %struct.uio** %6, align 8
  %86 = getelementptr inbounds %struct.uio, %struct.uio* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %60
  %91 = load %struct.uio*, %struct.uio** %6, align 8
  %92 = getelementptr inbounds %struct.uio, %struct.uio* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %16, align 8
  br label %94

94:                                               ; preds = %90, %60
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %16, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* %14, align 8
  store i64 %99, i64* %16, align 8
  br label %100

100:                                              ; preds = %98, %94
  %101 = load %struct.fs*, %struct.fs** %10, align 8
  %102 = load i64, i64* %13, align 8
  %103 = call i64 @lblktosize(%struct.fs* %101, i64 %102)
  %104 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %9, align 8
  %105 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %103, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.vnode*, %struct.vnode** %5, align 8
  %110 = load i64, i64* %12, align 8
  %111 = sub nsw i64 -1, %110
  %112 = load i64, i64* %15, align 8
  %113 = load i32, i32* @NOCRED, align 4
  %114 = call i32 @bread(%struct.vnode* %109, i64 %111, i64 %112, i32 %113, %struct.buf** %11)
  store i32 %114, i32* %19, align 4
  br label %130

115:                                              ; preds = %100
  %116 = load %struct.fs*, %struct.fs** %10, align 8
  %117 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %9, align 8
  %118 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = call i8* @sblksize(%struct.fs* %116, i64 %119, i64 %120)
  store i8* %121, i8** %20, align 8
  %122 = load i64, i64* %13, align 8
  %123 = sub nsw i64 -1, %122
  store i64 %123, i64* %13, align 8
  %124 = load %struct.vnode*, %struct.vnode** %5, align 8
  %125 = load i64, i64* %12, align 8
  %126 = sub nsw i64 -1, %125
  %127 = load i64, i64* %15, align 8
  %128 = load i32, i32* @NOCRED, align 4
  %129 = call i32 @breadn(%struct.vnode* %124, i64 %126, i64 %127, i64* %13, i8** %20, i32 1, i32 %128, %struct.buf** %11)
  store i32 %129, i32* %19, align 4
  br label %130

130:                                              ; preds = %115, %108
  %131 = load i32, i32* %19, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.buf*, %struct.buf** %11, align 8
  %135 = call i32 @brelse(%struct.buf* %134)
  store %struct.buf* null, %struct.buf** %11, align 8
  br label %170

136:                                              ; preds = %130
  %137 = load %struct.buf*, %struct.buf** %11, align 8
  %138 = getelementptr inbounds %struct.buf, %struct.buf* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = sub nsw i64 %140, %139
  store i64 %141, i64* %15, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %16, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %136
  %146 = load i64, i64* %15, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %170

149:                                              ; preds = %145
  %150 = load i64, i64* %15, align 8
  store i64 %150, i64* %16, align 8
  br label %151

151:                                              ; preds = %149, %136
  %152 = load %struct.buf*, %struct.buf** %11, align 8
  %153 = getelementptr inbounds %struct.buf, %struct.buf* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i8*
  %156 = load i64, i64* %17, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  %158 = load i64, i64* %16, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.uio*, %struct.uio** %6, align 8
  %161 = call i32 @uiomove(i8* %157, i32 %159, %struct.uio* %160)
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %19, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %151
  br label %170

165:                                              ; preds = %151
  %166 = load %struct.buf*, %struct.buf** %11, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @vfs_bio_brelse(%struct.buf* %166, i32 %167)
  br label %169

169:                                              ; preds = %165
  store %struct.buf* null, %struct.buf** %11, align 8
  br label %45

170:                                              ; preds = %164, %148, %133, %59, %45
  %171 = load %struct.buf*, %struct.buf** %11, align 8
  %172 = icmp ne %struct.buf* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.buf*, %struct.buf** %11, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @vfs_bio_brelse(%struct.buf* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %170
  %178 = load i32, i32* %19, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %37
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local %struct.fs* @ITOFS(%struct.inode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @lblkno(%struct.fs*, i64) #1

declare dso_local i8* @sblksize(%struct.fs*, i64, i64) #1

declare dso_local i64 @blkoff(%struct.fs*, i64) #1

declare dso_local i64 @lblktosize(%struct.fs*, i64) #1

declare dso_local i32 @bread(%struct.vnode*, i64, i64, i32, %struct.buf**) #1

declare dso_local i32 @breadn(%struct.vnode*, i64, i64, i64*, i8**, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @vfs_bio_brelse(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
