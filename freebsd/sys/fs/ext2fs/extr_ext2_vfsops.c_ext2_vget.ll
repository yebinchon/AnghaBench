; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_vget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_vget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32, %struct.inode* }
%struct.inode = type { i32, i64*, i32, i32, i64, i64, i32, i32, %struct.ext2mount*, %struct.m_ext2fs*, %struct.vnode* }
%struct.ext2mount = type { i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64 }
%struct.buf = type { i64 }
%struct.ext2fs_dinode = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@M_EXT2NODE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ext2fs\00", align 1
@ext2_vnodeops = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@IN_E4EXTENTS = common dso_local global i32 0, align 4
@EXT2_NDIR_BLOCKS = common dso_local global i32 0, align 4
@ext2_fifoops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, i32, %struct.vnode**)* @ext2_vget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_vget(%struct.mount* %0, i32 %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca %struct.m_ext2fs*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ext2mount*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.thread*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vnode** %3, %struct.vnode*** %9, align 8
  %19 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %19, %struct.thread** %15, align 8
  %20 = load %struct.mount*, %struct.mount** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.thread*, %struct.thread** %15, align 8
  %24 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %25 = call i32 @vfs_hash_get(%struct.mount* %20, i32 %21, i32 %22, %struct.thread* %23, %struct.vnode** %24, i32* null, i32* null)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %30 = load %struct.vnode*, %struct.vnode** %29, align 8
  %31 = icmp ne %struct.vnode* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %4
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %5, align 4
  br label %214

34:                                               ; preds = %28
  %35 = load %struct.mount*, %struct.mount** %6, align 8
  %36 = call %struct.ext2mount* @VFSTOEXT2(%struct.mount* %35)
  store %struct.ext2mount* %36, %struct.ext2mount** %12, align 8
  %37 = load i32, i32* @M_EXT2NODE, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.inode* @malloc(i32 72, i32 %37, i32 %40)
  store %struct.inode* %41, %struct.inode** %11, align 8
  %42 = load %struct.mount*, %struct.mount** %6, align 8
  %43 = call i32 @getnewvnode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.mount* %42, i32* @ext2_vnodeops, %struct.vnode** %14)
  store i32 %43, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* null, %struct.vnode** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = load i32, i32* @M_EXT2NODE, align 4
  %49 = call i32 @free(%struct.inode* %47, i32 %48)
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %5, align 4
  br label %214

51:                                               ; preds = %34
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = load %struct.vnode*, %struct.vnode** %14, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 1
  store %struct.inode* %52, %struct.inode** %54, align 8
  %55 = load %struct.vnode*, %struct.vnode** %14, align 8
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 10
  store %struct.vnode* %55, %struct.vnode** %57, align 8
  %58 = load %struct.ext2mount*, %struct.ext2mount** %12, align 8
  %59 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %58, i32 0, i32 1
  %60 = load %struct.m_ext2fs*, %struct.m_ext2fs** %59, align 8
  store %struct.m_ext2fs* %60, %struct.m_ext2fs** %10, align 8
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 9
  store %struct.m_ext2fs* %60, %struct.m_ext2fs** %62, align 8
  %63 = load %struct.ext2mount*, %struct.ext2mount** %12, align 8
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 8
  store %struct.ext2mount* %63, %struct.ext2mount** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vnode*, %struct.vnode** %14, align 8
  %70 = getelementptr inbounds %struct.vnode, %struct.vnode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @LK_EXCLUSIVE, align 4
  %73 = call i32 @lockmgr(i32 %71, i32 %72, i32* null)
  %74 = load %struct.vnode*, %struct.vnode** %14, align 8
  %75 = load %struct.mount*, %struct.mount** %6, align 8
  %76 = call i32 @insmntque(%struct.vnode* %74, %struct.mount* %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %51
  %80 = load %struct.inode*, %struct.inode** %11, align 8
  %81 = load i32, i32* @M_EXT2NODE, align 4
  %82 = call i32 @free(%struct.inode* %80, i32 %81)
  %83 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* null, %struct.vnode** %83, align 8
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %5, align 4
  br label %214

85:                                               ; preds = %51
  %86 = load %struct.vnode*, %struct.vnode** %14, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.thread*, %struct.thread** %15, align 8
  %90 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %91 = call i32 @vfs_hash_insert(%struct.vnode* %86, i32 %87, i32 %88, %struct.thread* %89, %struct.vnode** %90, i32* null, i32* null)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %85
  %95 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %96 = load %struct.vnode*, %struct.vnode** %95, align 8
  %97 = icmp ne %struct.vnode* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %94, %85
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %5, align 4
  br label %214

100:                                              ; preds = %94
  %101 = load %struct.ext2mount*, %struct.ext2mount** %12, align 8
  %102 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %105 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @ino_to_fsba(%struct.m_ext2fs* %105, i32 %106)
  %108 = call i32 @fsbtodb(%struct.m_ext2fs* %104, i32 %107)
  %109 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %110 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @NOCRED, align 4
  %114 = call i32 @bread(i32 %103, i32 %108, i32 %112, i32 %113, %struct.buf** %13)
  store i32 %114, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %100
  %117 = load %struct.buf*, %struct.buf** %13, align 8
  %118 = call i32 @brelse(%struct.buf* %117)
  %119 = load %struct.vnode*, %struct.vnode** %14, align 8
  %120 = call i32 @vput(%struct.vnode* %119)
  %121 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* null, %struct.vnode** %121, align 8
  %122 = load i32, i32* %18, align 4
  store i32 %122, i32* %5, align 4
  br label %214

123:                                              ; preds = %100
  %124 = load %struct.buf*, %struct.buf** %13, align 8
  %125 = getelementptr inbounds %struct.buf, %struct.buf* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %129 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %128)
  %130 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @ino_to_fsbo(%struct.m_ext2fs* %130, i32 %131)
  %133 = mul nsw i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %127, i64 %134
  %136 = bitcast i8* %135 to %struct.ext2fs_dinode*
  %137 = load %struct.inode*, %struct.inode** %11, align 8
  %138 = call i32 @ext2_ei2i(%struct.ext2fs_dinode* %136, %struct.inode* %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %123
  %142 = load %struct.buf*, %struct.buf** %13, align 8
  %143 = call i32 @brelse(%struct.buf* %142)
  %144 = load %struct.vnode*, %struct.vnode** %14, align 8
  %145 = call i32 @vput(%struct.vnode* %144)
  %146 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* null, %struct.vnode** %146, align 8
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %5, align 4
  br label %214

148:                                              ; preds = %123
  %149 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @ino_to_cg(%struct.m_ext2fs* %149, i32 %150)
  %152 = load %struct.inode*, %struct.inode** %11, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 8
  %154 = load %struct.inode*, %struct.inode** %11, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 5
  store i64 0, i64* %155, align 8
  %156 = load %struct.inode*, %struct.inode** %11, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 4
  store i64 0, i64* %157, align 8
  %158 = load %struct.inode*, %struct.inode** %11, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @IN_E4EXTENTS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %200, label %164

164:                                              ; preds = %148
  %165 = load %struct.inode*, %struct.inode** %11, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @S_ISDIR(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load %struct.inode*, %struct.inode** %11, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @S_ISREG(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %200

176:                                              ; preds = %170, %164
  %177 = load %struct.inode*, %struct.inode** %11, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %181 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @howmany(i32 %179, i64 %182)
  store i32 %183, i32* %17, align 4
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %16, align 4
  br label %185

185:                                              ; preds = %196, %176
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* @EXT2_NDIR_BLOCKS, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %185
  %190 = load %struct.inode*, %struct.inode** %11, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 1
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 0, i64* %195, align 8
  br label %196

196:                                              ; preds = %189
  %197 = load i32, i32* %16, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %16, align 4
  br label %185

199:                                              ; preds = %185
  br label %200

200:                                              ; preds = %199, %170, %148
  %201 = load %struct.buf*, %struct.buf** %13, align 8
  %202 = call i32 @bqrelse(%struct.buf* %201)
  %203 = load %struct.mount*, %struct.mount** %6, align 8
  %204 = call i32 @ext2_vinit(%struct.mount* %203, i32* @ext2_fifoops, %struct.vnode** %14)
  store i32 %204, i32* %18, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load %struct.vnode*, %struct.vnode** %14, align 8
  %208 = call i32 @vput(%struct.vnode* %207)
  %209 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* null, %struct.vnode** %209, align 8
  %210 = load i32, i32* %18, align 4
  store i32 %210, i32* %5, align 4
  br label %214

211:                                              ; preds = %200
  %212 = load %struct.vnode*, %struct.vnode** %14, align 8
  %213 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %212, %struct.vnode** %213, align 8
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %211, %206, %141, %116, %98, %79, %45, %32
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @vfs_hash_get(%struct.mount*, i32, i32, %struct.thread*, %struct.vnode**, i32*, i32*) #1

declare dso_local %struct.ext2mount* @VFSTOEXT2(%struct.mount*) #1

declare dso_local %struct.inode* @malloc(i32, i32, i32) #1

declare dso_local i32 @getnewvnode(i8*, %struct.mount*, i32*, %struct.vnode**) #1

declare dso_local i32 @free(%struct.inode*, i32) #1

declare dso_local i32 @lockmgr(i32, i32, i32*) #1

declare dso_local i32 @insmntque(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @vfs_hash_insert(%struct.vnode*, i32, i32, %struct.thread*, %struct.vnode**, i32*, i32*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ino_to_fsba(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @ext2_ei2i(%struct.ext2fs_dinode*, %struct.inode*) #1

declare dso_local i32 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

declare dso_local i32 @ino_to_fsbo(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ino_to_cg(%struct.m_ext2fs*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @howmany(i32, i64) #1

declare dso_local i32 @bqrelse(%struct.buf*) #1

declare dso_local i32 @ext2_vinit(%struct.mount*, i32*, %struct.vnode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
