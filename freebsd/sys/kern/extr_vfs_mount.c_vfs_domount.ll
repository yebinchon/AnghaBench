; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_domount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_domount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vfsoptlist = type { i32 }
%struct.vfsconf = type { i32 }
%struct.nameidata = type { %struct.vnode* }
%struct.vnode = type { i32 }

@MFSNAMELEN = common dso_local global i64 0, align 8
@MNAMELEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@usermount = common dso_local global i64 0, align 8
@PRIV_VFS_MOUNT = common dso_local global i32 0, align 4
@MNT_EXPORTED = common dso_local global i32 0, align 4
@PRIV_VFS_MOUNT_EXPORTED = common dso_local global i32 0, align 4
@MNT_SUIDDIR = common dso_local global i32 0, align 4
@PRIV_VFS_MOUNT_SUIDDIR = common dso_local global i32 0, align 4
@MNT_NOSUID = common dso_local global i32 0, align 4
@MNT_USER = common dso_local global i32 0, align 4
@PRIV_VFS_MOUNT_NONUSER = common dso_local global i32 0, align 4
@MNT_UPDATE = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@MNT_NOCOVER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i8*, i32, %struct.vfsoptlist**)* @vfs_domount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_domount(%struct.thread* %0, i8* %1, i8* %2, i32 %3, %struct.vfsoptlist** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vfsoptlist**, align 8
  %12 = alloca %struct.vfsconf*, align 8
  %13 = alloca %struct.nameidata, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.vfsoptlist** %4, %struct.vfsoptlist*** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load i64, i64* @MFSNAMELEN, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = load i64, i64* @MNAMELEN, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %5
  %27 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %27, i32* %6, align 4
  br label %198

28:                                               ; preds = %21
  %29 = load %struct.thread*, %struct.thread** %7, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @jailed(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* @usermount, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34, %28
  %38 = load %struct.thread*, %struct.thread** %7, align 8
  %39 = load i32, i32* @PRIV_VFS_MOUNT, align 4
  %40 = call i32 @priv_check(%struct.thread* %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %6, align 4
  br label %198

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MNT_EXPORTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.thread*, %struct.thread** %7, align 8
  %52 = load i32, i32* @PRIV_VFS_MOUNT_EXPORTED, align 4
  %53 = call i32 @priv_check(%struct.thread* %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %6, align 4
  br label %198

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @MNT_SUIDDIR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.thread*, %struct.thread** %7, align 8
  %66 = load i32, i32* @PRIV_VFS_MOUNT_SUIDDIR, align 4
  %67 = call i32 @priv_check(%struct.thread* %65, i32 %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %6, align 4
  br label %198

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @MNT_NOSUID, align 4
  %76 = load i32, i32* @MNT_USER, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load i32, i32* @MNT_NOSUID, align 4
  %80 = load i32, i32* @MNT_USER, align 4
  %81 = or i32 %79, %80
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %73
  %84 = load %struct.thread*, %struct.thread** %7, align 8
  %85 = load i32, i32* @PRIV_VFS_MOUNT_NONUSER, align 4
  %86 = call i32 @priv_check(%struct.thread* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* @MNT_NOSUID, align 4
  %90 = load i32, i32* @MNT_USER, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %88, %83
  br label %95

95:                                               ; preds = %94, %73
  store %struct.vfsconf* null, %struct.vfsconf** %12, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @MNT_UPDATE, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MNT_ROOTFS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  %107 = call %struct.vfsconf* @vfs_byname(i8* %106)
  store %struct.vfsconf* %107, %struct.vfsconf** %12, align 8
  br label %112

108:                                              ; preds = %100
  %109 = load i8*, i8** %8, align 8
  %110 = load %struct.thread*, %struct.thread** %7, align 8
  %111 = call %struct.vfsconf* @vfs_byname_kld(i8* %109, %struct.thread* %110, i32* %16)
  store %struct.vfsconf* %111, %struct.vfsconf** %12, align 8
  br label %112

112:                                              ; preds = %108, %105
  %113 = load %struct.vfsconf*, %struct.vfsconf** %12, align 8
  %114 = icmp eq %struct.vfsconf* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @ENODEV, align 4
  store i32 %116, i32* %6, align 4
  br label %198

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %95
  %119 = load i32, i32* @LOOKUP, align 4
  %120 = load i32, i32* @FOLLOW, align 4
  %121 = load i32, i32* @LOCKLEAF, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @AUDITVNODE1, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @UIO_SYSSPACE, align 4
  %126 = load i8*, i8** %9, align 8
  %127 = load %struct.thread*, %struct.thread** %7, align 8
  %128 = call i32 @NDINIT(%struct.nameidata* %13, i32 %119, i32 %124, i32 %125, i8* %126, %struct.thread* %127)
  %129 = call i32 @namei(%struct.nameidata* %13)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %118
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %6, align 4
  br label %198

134:                                              ; preds = %118
  %135 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %136 = call i32 @NDFREE(%struct.nameidata* %13, i32 %135)
  %137 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %138 = load %struct.vnode*, %struct.vnode** %137, align 8
  store %struct.vnode* %138, %struct.vnode** %14, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @MNT_UPDATE, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %190

143:                                              ; preds = %134
  %144 = load %struct.vnode*, %struct.vnode** %14, align 8
  %145 = getelementptr inbounds %struct.vnode, %struct.vnode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @VV_ROOT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %143
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @MNT_NOCOVER, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.vnode*, %struct.vnode** %14, align 8
  %157 = call i32 @vput(%struct.vnode* %156)
  %158 = load i32, i32* @EBUSY, align 4
  store i32 %158, i32* %6, align 4
  br label %198

159:                                              ; preds = %150, %143
  %160 = load i64, i64* @MNAMELEN, align 8
  %161 = load i32, i32* @M_TEMP, align 4
  %162 = load i32, i32* @M_WAITOK, align 4
  %163 = call i8* @malloc(i64 %160, i32 %161, i32 %162)
  store i8* %163, i8** %15, align 8
  %164 = load i8*, i8** %15, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 @strcpy(i8* %164, i8* %165)
  %167 = load %struct.thread*, %struct.thread** %7, align 8
  %168 = load %struct.vnode*, %struct.vnode** %14, align 8
  %169 = load i8*, i8** %15, align 8
  %170 = load i64, i64* @MNAMELEN, align 8
  %171 = call i32 @vn_path_to_global_path(%struct.thread* %167, %struct.vnode* %168, i8* %169, i64 %170)
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %159
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* @ENODEV, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %174, %159
  %179 = load %struct.thread*, %struct.thread** %7, align 8
  %180 = load %struct.vfsconf*, %struct.vfsconf** %12, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = load %struct.vnode*, %struct.vnode** %14, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.vfsoptlist**, %struct.vfsoptlist*** %11, align 8
  %185 = call i32 @vfs_domount_first(%struct.thread* %179, %struct.vfsconf* %180, i8* %181, %struct.vnode* %182, i32 %183, %struct.vfsoptlist** %184)
  store i32 %185, i32* %16, align 4
  br label %186

186:                                              ; preds = %178, %174
  %187 = load i8*, i8** %15, align 8
  %188 = load i32, i32* @M_TEMP, align 4
  %189 = call i32 @free(i8* %187, i32 %188)
  br label %196

190:                                              ; preds = %134
  %191 = load %struct.thread*, %struct.thread** %7, align 8
  %192 = load %struct.vnode*, %struct.vnode** %14, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.vfsoptlist**, %struct.vfsoptlist*** %11, align 8
  %195 = call i32 @vfs_domount_update(%struct.thread* %191, %struct.vnode* %192, i32 %193, %struct.vfsoptlist** %194)
  store i32 %195, i32* %16, align 4
  br label %196

196:                                              ; preds = %190, %186
  %197 = load i32, i32* %16, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %196, %155, %132, %115, %70, %56, %42, %26
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @jailed(i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local %struct.vfsconf* @vfs_byname(i8*) #1

declare dso_local %struct.vfsconf* @vfs_byname_kld(i8*, %struct.thread*, i32*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @vn_path_to_global_path(%struct.thread*, %struct.vnode*, i8*, i64) #1

declare dso_local i32 @vfs_domount_first(%struct.thread*, %struct.vfsconf*, i8*, %struct.vnode*, i32, %struct.vfsoptlist**) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @vfs_domount_update(%struct.thread*, %struct.vnode*, i32, %struct.vfsoptlist**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
