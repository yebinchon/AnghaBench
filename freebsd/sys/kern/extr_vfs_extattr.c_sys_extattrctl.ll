; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_sys_extattrctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_sys_extattrctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.extattrctl_args = type { i32*, i32, i32, i32*, i32* }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.nameidata = type { %struct.vnode* }

@EXTATTR_MAXNAMELEN = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNODE2 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NDF_NO_VP_RELE = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@NDF_NO_VP_UNLOCK = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_extattrctl(%struct.thread* %0, %struct.extattrctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.extattrctl_args*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.nameidata, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.extattrctl_args* %1, %struct.extattrctl_args** %5, align 8
  %14 = load i32, i32* @EXTATTR_MAXNAMELEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %19 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @AUDIT_ARG_CMD(i32 %20)
  %22 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %23 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @AUDIT_ARG_VALUE(i32 %24)
  %26 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %27 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %32 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @EXTATTR_MAXNAMELEN, align 4
  %35 = call i32 @copyinstr(i32* %33, i8* %17, i32 %34, i32* null)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %158

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %2
  %42 = call i32 @AUDIT_ARG_TEXT(i8* %17)
  store %struct.mount* null, %struct.mount** %8, align 8
  store %struct.vnode* null, %struct.vnode** %6, align 8
  %43 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %44 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load i32, i32* @LOOKUP, align 4
  %49 = load i32, i32* @FOLLOW, align 4
  %50 = load i32, i32* @AUDITVNODE2, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @UIO_USERSPACE, align 4
  %53 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %54 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = call i32 @NDINIT(%struct.nameidata* %7, i32 %48, i32 %51, i32 %52, i32* %55, %struct.thread* %56)
  %58 = call i32 @namei(%struct.nameidata* %7)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %158

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %65 = load %struct.vnode*, %struct.vnode** %64, align 8
  store %struct.vnode* %65, %struct.vnode** %6, align 8
  %66 = load i32, i32* @NDF_NO_VP_RELE, align 4
  %67 = call i32 @NDFREE(%struct.nameidata* %7, i32 %66)
  br label %68

68:                                               ; preds = %63, %41
  %69 = load i32, i32* @LOOKUP, align 4
  %70 = load i32, i32* @FOLLOW, align 4
  %71 = load i32, i32* @LOCKLEAF, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @AUDITVNODE1, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @UIO_USERSPACE, align 4
  %76 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %77 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.thread*, %struct.thread** %4, align 8
  %80 = call i32 @NDINIT(%struct.nameidata* %7, i32 %69, i32 %74, i32 %75, i32* %78, %struct.thread* %79)
  %81 = call i32 @namei(%struct.nameidata* %7)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %144

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %87 = load %struct.vnode*, %struct.vnode** %86, align 8
  %88 = getelementptr inbounds %struct.vnode, %struct.vnode* %87, i32 0, i32 0
  %89 = load %struct.mount*, %struct.mount** %88, align 8
  store %struct.mount* %89, %struct.mount** %8, align 8
  %90 = load %struct.mount*, %struct.mount** %8, align 8
  %91 = call i32 @vfs_busy(%struct.mount* %90, i32 0)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = call i32 @NDFREE(%struct.nameidata* %7, i32 0)
  store %struct.mount* null, %struct.mount** %8, align 8
  br label %144

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %98 = load %struct.vnode*, %struct.vnode** %97, align 8
  %99 = call i32 @VOP_UNLOCK(%struct.vnode* %98, i32 0)
  %100 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %101 = load %struct.vnode*, %struct.vnode** %100, align 8
  %102 = load i32, i32* @V_WAIT, align 4
  %103 = load i32, i32* @PCATCH, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @vn_start_write(%struct.vnode* %101, %struct.mount** %9, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @NDF_NO_VP_UNLOCK, align 4
  %107 = call i32 @NDFREE(%struct.nameidata* %7, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  br label %144

111:                                              ; preds = %96
  %112 = load %struct.vnode*, %struct.vnode** %6, align 8
  %113 = icmp ne %struct.vnode* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.vnode*, %struct.vnode** %6, align 8
  %116 = load i32, i32* @LK_EXCLUSIVE, align 4
  %117 = call i32 @vn_lock(%struct.vnode* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.mount*, %struct.mount** %9, align 8
  %122 = call i32 @vn_finished_write(%struct.mount* %121)
  br label %144

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %111
  %125 = load %struct.mount*, %struct.mount** %8, align 8
  %126 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %127 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.vnode*, %struct.vnode** %6, align 8
  %130 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %131 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.extattrctl_args*, %struct.extattrctl_args** %5, align 8
  %134 = getelementptr inbounds %struct.extattrctl_args, %struct.extattrctl_args* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %124
  br label %139

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %138, %137
  %140 = phi i8* [ %17, %137 ], [ null, %138 ]
  %141 = call i32 @VFS_EXTATTRCTL(%struct.mount* %125, i32 %128, %struct.vnode* %129, i32 %132, i8* %140)
  store i32 %141, i32* %12, align 4
  %142 = load %struct.mount*, %struct.mount** %9, align 8
  %143 = call i32 @vn_finished_write(%struct.mount* %142)
  br label %144

144:                                              ; preds = %139, %120, %110, %94, %84
  %145 = load %struct.mount*, %struct.mount** %8, align 8
  %146 = icmp ne %struct.mount* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.mount*, %struct.mount** %8, align 8
  %149 = call i32 @vfs_unbusy(%struct.mount* %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load %struct.vnode*, %struct.vnode** %6, align 8
  %152 = icmp ne %struct.vnode* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.vnode*, %struct.vnode** %6, align 8
  %155 = call i32 @vrele(%struct.vnode* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %158

158:                                              ; preds = %156, %61, %38
  %159 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AUDIT_ARG_CMD(i32) #2

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #2

declare dso_local i32 @copyinstr(i32*, i8*, i32, i32*) #2

declare dso_local i32 @AUDIT_ARG_TEXT(i8*) #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32*, %struct.thread*) #2

declare dso_local i32 @namei(%struct.nameidata*) #2

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #2

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #2

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #2

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #2

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #2

declare dso_local i32 @vn_finished_write(%struct.mount*) #2

declare dso_local i32 @VFS_EXTATTRCTL(%struct.mount*, i32, %struct.vnode*, i32, i8*) #2

declare dso_local i32 @vfs_unbusy(%struct.mount*) #2

declare dso_local i32 @vrele(%struct.vnode*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
