; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vfsops.c_udf_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vfsops.c_udf_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_2__ = type { i32 (i8*, i8*, i32*)* }
%struct.mount = type { i32, %struct.vfsoptlist* }
%struct.vfsoptlist = type { i32 }
%struct.vnode = type { i32 }
%struct.udf_mnt = type { i32, i32, i32 }
%struct.nameidata = type { %struct.vnode* }

@curthread = common dso_local global %struct.thread* null, align 8
@MNT_RDONLY = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MNT_UPDATE = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@PRIV_VFS_MOUNT_PERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@UDFMNT_KICONV = common dso_local global i32 0, align 4
@udf_iconv = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"cs_disk\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cs_local\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @udf_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.udf_mnt*, align 8
  %7 = alloca %struct.vfsoptlist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nameidata, align 8
  %15 = alloca %struct.nameidata*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.udf_mnt* null, %struct.udf_mnt** %6, align 8
  store %struct.nameidata* %14, %struct.nameidata** %15, align 8
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %16, %struct.thread** %5, align 8
  %17 = load %struct.mount*, %struct.mount** %3, align 8
  %18 = getelementptr inbounds %struct.mount, %struct.mount* %17, i32 0, i32 1
  %19 = load %struct.vfsoptlist*, %struct.vfsoptlist** %18, align 8
  store %struct.vfsoptlist* %19, %struct.vfsoptlist** %7, align 8
  %20 = load %struct.mount*, %struct.mount** %3, align 8
  %21 = call i32 @MNT_ILOCK(%struct.mount* %20)
  %22 = load i32, i32* @MNT_RDONLY, align 4
  %23 = load %struct.mount*, %struct.mount** %3, align 8
  %24 = getelementptr inbounds %struct.mount, %struct.mount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.mount*, %struct.mount** %3, align 8
  %28 = call i32 @MNT_IUNLOCK(%struct.mount* %27)
  %29 = load %struct.mount*, %struct.mount** %3, align 8
  %30 = getelementptr inbounds %struct.mount, %struct.mount* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MNT_ROOTFS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOTSUP, align 4
  store i32 %36, i32* %2, align 4
  br label %198

37:                                               ; preds = %1
  store i8* null, i8** %8, align 8
  %38 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %39 = call i32 @vfs_getopt(%struct.vfsoptlist* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, i32* %12)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %2, align 4
  br label %198

53:                                               ; preds = %42, %37
  %54 = load %struct.mount*, %struct.mount** %3, align 8
  %55 = getelementptr inbounds %struct.mount, %struct.mount* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MNT_UPDATE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %198

61:                                               ; preds = %53
  %62 = load i8*, i8** %8, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %2, align 4
  br label %198

66:                                               ; preds = %61
  %67 = load %struct.nameidata*, %struct.nameidata** %15, align 8
  %68 = load i32, i32* @LOOKUP, align 4
  %69 = load i32, i32* @FOLLOW, align 4
  %70 = load i32, i32* @LOCKLEAF, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @UIO_SYSSPACE, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.thread*, %struct.thread** %5, align 8
  %75 = call i32 @NDINIT(%struct.nameidata* %67, i32 %68, i32 %71, i32 %72, i8* %73, %struct.thread* %74)
  %76 = load %struct.nameidata*, %struct.nameidata** %15, align 8
  %77 = call i32 @namei(%struct.nameidata* %76)
  store i32 %77, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %2, align 4
  br label %198

81:                                               ; preds = %66
  %82 = load %struct.nameidata*, %struct.nameidata** %15, align 8
  %83 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %84 = call i32 @NDFREE(%struct.nameidata* %82, i32 %83)
  %85 = load %struct.nameidata*, %struct.nameidata** %15, align 8
  %86 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %85, i32 0, i32 0
  %87 = load %struct.vnode*, %struct.vnode** %86, align 8
  store %struct.vnode* %87, %struct.vnode** %4, align 8
  %88 = load %struct.vnode*, %struct.vnode** %4, align 8
  %89 = call i64 @vn_isdisk(%struct.vnode* %88, i32* %11)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load %struct.vnode*, %struct.vnode** %4, align 8
  %93 = call i32 @vput(%struct.vnode* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %2, align 4
  br label %198

95:                                               ; preds = %81
  %96 = load %struct.vnode*, %struct.vnode** %4, align 8
  %97 = load i32, i32* @VREAD, align 4
  %98 = load %struct.thread*, %struct.thread** %5, align 8
  %99 = getelementptr inbounds %struct.thread, %struct.thread* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.thread*, %struct.thread** %5, align 8
  %102 = call i32 @VOP_ACCESS(%struct.vnode* %96, i32 %97, i32 %100, %struct.thread* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load %struct.thread*, %struct.thread** %5, align 8
  %107 = load i32, i32* @PRIV_VFS_MOUNT_PERM, align 4
  %108 = call i32 @priv_check(%struct.thread* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %105, %95
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.vnode*, %struct.vnode** %4, align 8
  %114 = call i32 @vput(%struct.vnode* %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %2, align 4
  br label %198

116:                                              ; preds = %109
  %117 = load %struct.vnode*, %struct.vnode** %4, align 8
  %118 = load %struct.mount*, %struct.mount** %3, align 8
  %119 = call i32 @udf_mountfs(%struct.vnode* %117, %struct.mount* %118)
  store i32 %119, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.vnode*, %struct.vnode** %4, align 8
  %123 = call i32 @vrele(%struct.vnode* %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %2, align 4
  br label %198

125:                                              ; preds = %116
  %126 = load %struct.mount*, %struct.mount** %3, align 8
  %127 = call %struct.udf_mnt* @VFSTOUDFFS(%struct.mount* %126)
  store %struct.udf_mnt* %127, %struct.udf_mnt** %6, align 8
  store i32* null, i32** %13, align 8
  %128 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %129 = bitcast i32** %13 to i8**
  %130 = call i32 @vfs_getopt(%struct.vfsoptlist* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %129, i32* %12)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ne i64 %135, 4
  br i1 %136, label %137, label %139

137:                                              ; preds = %133, %125
  %138 = load i32, i32* @EINVAL, align 4
  store i32 %138, i32* %2, align 4
  br label %198

139:                                              ; preds = %133
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %143 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %145 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @UDFMNT_KICONV, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %194

150:                                              ; preds = %139
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udf_iconv, align 8
  %152 = icmp ne %struct.TYPE_2__* %151, null
  br i1 %152, label %153, label %194

153:                                              ; preds = %150
  store i8* null, i8** %9, align 8
  %154 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %155 = call i32 @vfs_getopt(%struct.vfsoptlist* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9, i32* %12)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %153
  %159 = load i8*, i8** %9, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i32, i32* @EINVAL, align 4
  store i32 %168, i32* %2, align 4
  br label %198

169:                                              ; preds = %158, %153
  store i8* null, i8** %10, align 8
  %170 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %171 = call i32 @vfs_getopt(%struct.vfsoptlist* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %10, i32* %12)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %185, label %174

174:                                              ; preds = %169
  %175 = load i8*, i8** %10, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @EINVAL, align 4
  store i32 %184, i32* %2, align 4
  br label %198

185:                                              ; preds = %174, %169
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udf_iconv, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %187, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %192 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %191, i32 0, i32 2
  %193 = call i32 %188(i8* %189, i8* %190, i32* %192)
  br label %194

194:                                              ; preds = %185, %150, %139
  %195 = load %struct.mount*, %struct.mount** %3, align 8
  %196 = load i8*, i8** %8, align 8
  %197 = call i32 @vfs_mountedfrom(%struct.mount* %195, i8* %196)
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %194, %183, %167, %137, %121, %112, %91, %79, %64, %60, %51, %35
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @vfs_getopt(%struct.vfsoptlist*, i8*, i8**, i32*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i64 @vn_isdisk(%struct.vnode*, i32*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @udf_mountfs(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local %struct.udf_mnt* @VFSTOUDFFS(%struct.mount*) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
