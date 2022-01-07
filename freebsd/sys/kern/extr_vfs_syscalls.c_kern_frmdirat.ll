; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_frmdirat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_frmdirat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i64, i32, i32 }
%struct.file = type { %struct.vnode* }
%struct.nameidata = type { %struct.vnode*, i32, %struct.vnode* }

@FD_NONE = common dso_local global i32 0, align 4
@CAP_LOOKUP = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@AT_BENEATH = common dso_local global i32 0, align 4
@BENEATH = common dso_local global i32 0, align 4
@cap_unlinkat_rights = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@V_XSLEEP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@VFS_NOTIFY_UPPER_UNLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_frmdirat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mount*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.file*, align 8
  %17 = alloca %struct.nameidata, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.file* null, %struct.file** %16, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @FD_NONE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %6
  %24 = load %struct.thread*, %struct.thread** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @CAP_LOOKUP, align 4
  %27 = call i32 @cap_rights_init(i32* %18, i32 %26)
  %28 = call i32 @getvnode(%struct.thread* %24, i32 %25, i32 %27, %struct.file** %16)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %19, align 4
  store i32 %32, i32* %7, align 4
  br label %180

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %6
  br label %35

35:                                               ; preds = %140, %34
  %36 = call i32 (...) @bwillwrite()
  %37 = load i32, i32* @DELETE, align 4
  %38 = load i32, i32* @LOCKPARENT, align 4
  %39 = load i32, i32* @LOCKLEAF, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @AUDITVNODE1, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @AT_BENEATH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @BENEATH, align 4
  br label %50

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = or i32 %42, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.thread*, %struct.thread** %8, align 8
  %57 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %17, i32 %37, i32 %52, i32 %53, i8* %54, i32 %55, i32* @cap_unlinkat_rights, %struct.thread* %56)
  %58 = call i32 @namei(%struct.nameidata* %17)
  store i32 %58, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %171

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 2
  %63 = load %struct.vnode*, %struct.vnode** %62, align 8
  store %struct.vnode* %63, %struct.vnode** %15, align 8
  %64 = load %struct.vnode*, %struct.vnode** %15, align 8
  %65 = getelementptr inbounds %struct.vnode, %struct.vnode* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VDIR, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @ENOTDIR, align 4
  store i32 %70, i32* %19, align 4
  br label %153

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %73 = load %struct.vnode*, %struct.vnode** %72, align 8
  %74 = load %struct.vnode*, %struct.vnode** %15, align 8
  %75 = icmp eq %struct.vnode* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %19, align 4
  br label %153

78:                                               ; preds = %71
  %79 = load %struct.vnode*, %struct.vnode** %15, align 8
  %80 = getelementptr inbounds %struct.vnode, %struct.vnode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @VV_ROOT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @EBUSY, align 4
  store i32 %86, i32* %19, align 4
  br label %153

87:                                               ; preds = %78
  %88 = load %struct.file*, %struct.file** %16, align 8
  %89 = icmp ne %struct.file* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load %struct.file*, %struct.file** %16, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  %93 = load %struct.vnode*, %struct.vnode** %92, align 8
  %94 = load %struct.vnode*, %struct.vnode** %15, align 8
  %95 = icmp ne %struct.vnode* %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load %struct.file*, %struct.file** %16, align 8
  %98 = getelementptr inbounds %struct.file, %struct.file* %97, i32 0, i32 0
  %99 = load %struct.vnode*, %struct.vnode** %98, align 8
  %100 = getelementptr inbounds %struct.vnode, %struct.vnode* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VI_DOOMED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @EBADF, align 4
  store i32 %106, i32* %19, align 4
  br label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @EDEADLK, align 4
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %107, %105
  br label %153

110:                                              ; preds = %90, %87
  %111 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %112 = load %struct.vnode*, %struct.vnode** %111, align 8
  %113 = load i32, i32* @V_NOWAIT, align 4
  %114 = call i32 @vn_start_write(%struct.vnode* %112, %struct.mount** %14, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %110
  %117 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %118 = call i32 @NDFREE(%struct.nameidata* %17, i32 %117)
  %119 = load %struct.vnode*, %struct.vnode** %15, align 8
  %120 = call i32 @vput(%struct.vnode* %119)
  %121 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %122 = load %struct.vnode*, %struct.vnode** %121, align 8
  %123 = load %struct.vnode*, %struct.vnode** %15, align 8
  %124 = icmp eq %struct.vnode* %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %127 = load %struct.vnode*, %struct.vnode** %126, align 8
  %128 = call i32 @vrele(%struct.vnode* %127)
  br label %133

129:                                              ; preds = %116
  %130 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %131 = load %struct.vnode*, %struct.vnode** %130, align 8
  %132 = call i32 @vput(%struct.vnode* %131)
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i32, i32* @V_XSLEEP, align 4
  %135 = load i32, i32* @PCATCH, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @vn_start_write(%struct.vnode* null, %struct.mount** %14, i32 %136)
  store i32 %137, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %171

140:                                              ; preds = %133
  br label %35

141:                                              ; preds = %110
  %142 = load %struct.vnode*, %struct.vnode** %15, align 8
  %143 = load i32, i32* @VFS_NOTIFY_UPPER_UNLINK, align 4
  %144 = call i32 @vfs_notify_upper(%struct.vnode* %142, i32 %143)
  %145 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %146 = load %struct.vnode*, %struct.vnode** %145, align 8
  %147 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 2
  %148 = load %struct.vnode*, %struct.vnode** %147, align 8
  %149 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 1
  %150 = call i32 @VOP_RMDIR(%struct.vnode* %146, %struct.vnode* %148, i32* %149)
  store i32 %150, i32* %19, align 4
  %151 = load %struct.mount*, %struct.mount** %14, align 8
  %152 = call i32 @vn_finished_write(%struct.mount* %151)
  br label %153

153:                                              ; preds = %141, %109, %85, %76, %69
  %154 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %155 = call i32 @NDFREE(%struct.nameidata* %17, i32 %154)
  %156 = load %struct.vnode*, %struct.vnode** %15, align 8
  %157 = call i32 @vput(%struct.vnode* %156)
  %158 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %159 = load %struct.vnode*, %struct.vnode** %158, align 8
  %160 = load %struct.vnode*, %struct.vnode** %15, align 8
  %161 = icmp eq %struct.vnode* %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %164 = load %struct.vnode*, %struct.vnode** %163, align 8
  %165 = call i32 @vrele(%struct.vnode* %164)
  br label %170

166:                                              ; preds = %153
  %167 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %168 = load %struct.vnode*, %struct.vnode** %167, align 8
  %169 = call i32 @vput(%struct.vnode* %168)
  br label %170

170:                                              ; preds = %166, %162
  br label %171

171:                                              ; preds = %170, %139, %60
  %172 = load %struct.file*, %struct.file** %16, align 8
  %173 = icmp ne %struct.file* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load %struct.file*, %struct.file** %16, align 8
  %176 = load %struct.thread*, %struct.thread** %8, align 8
  %177 = call i32 @fdrop(%struct.file* %175, %struct.thread* %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i32, i32* %19, align 4
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %178, %31
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @getvnode(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vfs_notify_upper(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_RMDIR(%struct.vnode*, %struct.vnode*, i32*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
