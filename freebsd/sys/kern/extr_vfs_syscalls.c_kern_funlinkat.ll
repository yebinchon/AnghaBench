; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_funlinkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_funlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.file = type { %struct.vnode* }
%struct.vnode = type { i64, i32, i32 }
%struct.nameidata = type { %struct.vnode*, i32, %struct.vnode* }
%struct.stat = type { i64 }

@FD_NONE = common dso_local global i32 0, align 4
@cap_no_rights = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@AT_BENEATH = common dso_local global i32 0, align 4
@BENEATH = common dso_local global i32 0, align 4
@cap_unlinkat_rights = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NOCRED = common dso_local global i32 0, align 4
@EIDRM = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@V_XSLEEP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@VFS_NOTIFY_UPPER_UNLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_funlinkat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.mount*, align 8
  %17 = alloca %struct.file*, align 8
  %18 = alloca %struct.vnode*, align 8
  %19 = alloca %struct.nameidata, align 8
  %20 = alloca %struct.stat, align 8
  %21 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store %struct.file* null, %struct.file** %17, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @FD_NONE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %7
  %26 = load %struct.thread*, %struct.thread** %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @getvnode(%struct.thread* %26, i32 %27, i32* @cap_no_rights, %struct.file** %17)
  store i32 %28, i32* %21, align 4
  %29 = load i32, i32* %21, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %21, align 4
  store i32 %32, i32* %8, align 4
  br label %204

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %7
  br label %35

35:                                               ; preds = %166, %34
  %36 = call i32 (...) @bwillwrite()
  %37 = load i32, i32* @DELETE, align 4
  %38 = load i32, i32* @LOCKPARENT, align 4
  %39 = load i32, i32* @LOCKLEAF, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @AUDITVNODE1, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %14, align 4
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
  %53 = load i32, i32* %13, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.thread*, %struct.thread** %9, align 8
  %57 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %19, i32 %37, i32 %52, i32 %53, i8* %54, i32 %55, i32* @cap_unlinkat_rights, %struct.thread* %56)
  %58 = call i32 @namei(%struct.nameidata* %19)
  store i32 %58, i32* %21, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* @EINVAL, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @EPERM, align 4
  store i32 %65, i32* %21, align 4
  br label %66

66:                                               ; preds = %64, %60
  br label %195

67:                                               ; preds = %50
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 2
  %69 = load %struct.vnode*, %struct.vnode** %68, align 8
  store %struct.vnode* %69, %struct.vnode** %18, align 8
  %70 = load %struct.vnode*, %struct.vnode** %18, align 8
  %71 = getelementptr inbounds %struct.vnode, %struct.vnode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VDIR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load i64, i64* %15, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @EPERM, align 4
  store i32 %79, i32* %21, align 4
  br label %134

80:                                               ; preds = %75, %67
  %81 = load i64, i64* %15, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load %struct.vnode*, %struct.vnode** %18, align 8
  %85 = load %struct.thread*, %struct.thread** %9, align 8
  %86 = getelementptr inbounds %struct.thread, %struct.thread* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NOCRED, align 4
  %89 = load %struct.thread*, %struct.thread** %9, align 8
  %90 = call i32 @vn_stat(%struct.vnode* %84, %struct.stat* %20, i32 %87, i32 %88, %struct.thread* %89)
  store i32 %90, i32* %21, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %15, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @EIDRM, align 4
  store i32 %98, i32* %21, align 4
  br label %133

99:                                               ; preds = %92, %83, %80
  %100 = load %struct.file*, %struct.file** %17, align 8
  %101 = icmp ne %struct.file* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load %struct.file*, %struct.file** %17, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 0
  %105 = load %struct.vnode*, %struct.vnode** %104, align 8
  %106 = load %struct.vnode*, %struct.vnode** %18, align 8
  %107 = icmp ne %struct.vnode* %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load %struct.file*, %struct.file** %17, align 8
  %110 = getelementptr inbounds %struct.file, %struct.file* %109, i32 0, i32 0
  %111 = load %struct.vnode*, %struct.vnode** %110, align 8
  %112 = getelementptr inbounds %struct.vnode, %struct.vnode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @VI_DOOMED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @EBADF, align 4
  store i32 %118, i32* %21, align 4
  br label %121

119:                                              ; preds = %108
  %120 = load i32, i32* @EDEADLK, align 4
  store i32 %120, i32* %21, align 4
  br label %121

121:                                              ; preds = %119, %117
  br label %132

122:                                              ; preds = %102, %99
  %123 = load %struct.vnode*, %struct.vnode** %18, align 8
  %124 = getelementptr inbounds %struct.vnode, %struct.vnode* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @VV_ROOT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @EBUSY, align 4
  store i32 %130, i32* %21, align 4
  br label %131

131:                                              ; preds = %129, %122
  br label %132

132:                                              ; preds = %131, %121
  br label %133

133:                                              ; preds = %132, %97
  br label %134

134:                                              ; preds = %133, %78
  %135 = load i32, i32* %21, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %178

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %139 = load %struct.vnode*, %struct.vnode** %138, align 8
  %140 = load i32, i32* @V_NOWAIT, align 4
  %141 = call i32 @vn_start_write(%struct.vnode* %139, %struct.mount** %16, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %137
  %144 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %145 = call i32 @NDFREE(%struct.nameidata* %19, i32 %144)
  %146 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %147 = load %struct.vnode*, %struct.vnode** %146, align 8
  %148 = call i32 @vput(%struct.vnode* %147)
  %149 = load %struct.vnode*, %struct.vnode** %18, align 8
  %150 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %151 = load %struct.vnode*, %struct.vnode** %150, align 8
  %152 = icmp eq %struct.vnode* %149, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %143
  %154 = load %struct.vnode*, %struct.vnode** %18, align 8
  %155 = call i32 @vrele(%struct.vnode* %154)
  br label %159

156:                                              ; preds = %143
  %157 = load %struct.vnode*, %struct.vnode** %18, align 8
  %158 = call i32 @vput(%struct.vnode* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* @V_XSLEEP, align 4
  %161 = load i32, i32* @PCATCH, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @vn_start_write(%struct.vnode* null, %struct.mount** %16, i32 %162)
  store i32 %163, i32* %21, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %195

166:                                              ; preds = %159
  br label %35

167:                                              ; preds = %137
  %168 = load %struct.vnode*, %struct.vnode** %18, align 8
  %169 = load i32, i32* @VFS_NOTIFY_UPPER_UNLINK, align 4
  %170 = call i32 @vfs_notify_upper(%struct.vnode* %168, i32 %169)
  %171 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %172 = load %struct.vnode*, %struct.vnode** %171, align 8
  %173 = load %struct.vnode*, %struct.vnode** %18, align 8
  %174 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 1
  %175 = call i32 @VOP_REMOVE(%struct.vnode* %172, %struct.vnode* %173, i32* %174)
  store i32 %175, i32* %21, align 4
  %176 = load %struct.mount*, %struct.mount** %16, align 8
  %177 = call i32 @vn_finished_write(%struct.mount* %176)
  br label %178

178:                                              ; preds = %167, %134
  %179 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %180 = call i32 @NDFREE(%struct.nameidata* %19, i32 %179)
  %181 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %182 = load %struct.vnode*, %struct.vnode** %181, align 8
  %183 = call i32 @vput(%struct.vnode* %182)
  %184 = load %struct.vnode*, %struct.vnode** %18, align 8
  %185 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %186 = load %struct.vnode*, %struct.vnode** %185, align 8
  %187 = icmp eq %struct.vnode* %184, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %178
  %189 = load %struct.vnode*, %struct.vnode** %18, align 8
  %190 = call i32 @vrele(%struct.vnode* %189)
  br label %194

191:                                              ; preds = %178
  %192 = load %struct.vnode*, %struct.vnode** %18, align 8
  %193 = call i32 @vput(%struct.vnode* %192)
  br label %194

194:                                              ; preds = %191, %188
  br label %195

195:                                              ; preds = %194, %165, %66
  %196 = load %struct.file*, %struct.file** %17, align 8
  %197 = icmp ne %struct.file* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load %struct.file*, %struct.file** %17, align 8
  %200 = load %struct.thread*, %struct.thread** %9, align 8
  %201 = call i32 @fdrop(%struct.file* %199, %struct.thread* %200)
  br label %202

202:                                              ; preds = %198, %195
  %203 = load i32, i32* %21, align 4
  store i32 %203, i32* %8, align 4
  br label %204

204:                                              ; preds = %202, %31
  %205 = load i32, i32* %8, align 4
  ret i32 %205
}

declare dso_local i32 @getvnode(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vn_stat(%struct.vnode*, %struct.stat*, i32, i32, %struct.thread*) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vfs_notify_upper(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_REMOVE(%struct.vnode*, %struct.vnode*, i32*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
