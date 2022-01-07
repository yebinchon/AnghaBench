; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_mknodat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_mknodat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.vattr = type { i32, i32, i32 }
%struct.nameidata = type { %struct.vnode*, %struct.vnode*, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@PRIV_VFS_MKNOD_DEV = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PRIV_VFS_MKNOD_WHT = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NOCACHE = common dso_local global i32 0, align 4
@cap_mknodat_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i32 0, align 4
@VCHR = common dso_local global i32 0, align 4
@VBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"kern_mknod: invalid mode\00", align 1
@V_NOWAIT = common dso_local global i32 0, align 4
@V_XSLEEP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_mknodat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.mount*, align 8
  %16 = alloca %struct.vattr, align 4
  %17 = alloca %struct.nameidata, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @AUDIT_ARG_MODE(i32 %20)
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @AUDIT_ARG_DEV(i32 %22)
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @S_IFMT, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %55 [
    i32 130, label %27
    i32 131, label %27
    i32 128, label %40
    i32 129, label %44
  ]

27:                                               ; preds = %6, %6
  %28 = load %struct.thread*, %struct.thread** %8, align 8
  %29 = load i32, i32* @PRIV_VFS_MKNOD_DEV, align 4
  %30 = call i32 @priv_check(%struct.thread* %28, i32 %29)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @VNOVAL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %37, %33, %27
  br label %57

40:                                               ; preds = %6
  %41 = load %struct.thread*, %struct.thread** %8, align 8
  %42 = load i32, i32* @PRIV_VFS_MKNOD_WHT, align 4
  %43 = call i32 @priv_check(%struct.thread* %41, i32 %42)
  store i32 %43, i32* %18, align 4
  br label %57

44:                                               ; preds = %6
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.thread*, %struct.thread** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @kern_mkfifoat(%struct.thread* %48, i32 %49, i8* %50, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %191

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %6, %54
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %18, align 4
  br label %57

57:                                               ; preds = %55, %40, %39
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %7, align 4
  br label %191

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %155, %62
  %64 = call i32 (...) @bwillwrite()
  %65 = load i32, i32* @CREATE, align 4
  %66 = load i32, i32* @LOCKPARENT, align 4
  %67 = load i32, i32* @SAVENAME, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @AUDITVNODE1, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @NOCACHE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.thread*, %struct.thread** %8, align 8
  %77 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %17, i32 %65, i32 %72, i32 %73, i8* %74, i32 %75, i32* @cap_mknodat_rights, %struct.thread* %76)
  %78 = call i32 @namei(%struct.nameidata* %17)
  store i32 %78, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %7, align 4
  br label %191

82:                                               ; preds = %63
  %83 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 1
  %84 = load %struct.vnode*, %struct.vnode** %83, align 8
  store %struct.vnode* %84, %struct.vnode** %14, align 8
  %85 = load %struct.vnode*, %struct.vnode** %14, align 8
  %86 = icmp ne %struct.vnode* %85, null
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %89 = call i32 @NDFREE(%struct.nameidata* %17, i32 %88)
  %90 = load %struct.vnode*, %struct.vnode** %14, align 8
  %91 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %92 = load %struct.vnode*, %struct.vnode** %91, align 8
  %93 = icmp eq %struct.vnode* %90, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %96 = load %struct.vnode*, %struct.vnode** %95, align 8
  %97 = call i32 @vrele(%struct.vnode* %96)
  br label %102

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %100 = load %struct.vnode*, %struct.vnode** %99, align 8
  %101 = call i32 @vput(%struct.vnode* %100)
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.vnode*, %struct.vnode** %14, align 8
  %104 = call i32 @vrele(%struct.vnode* %103)
  %105 = load i32, i32* @EEXIST, align 4
  store i32 %105, i32* %7, align 4
  br label %191

106:                                              ; preds = %82
  %107 = call i32 @VATTR_NULL(%struct.vattr* %16)
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @ALLPERMS, align 4
  %110 = and i32 %108, %109
  %111 = load %struct.thread*, %struct.thread** %8, align 8
  %112 = getelementptr inbounds %struct.thread, %struct.thread* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %110, %118
  %120 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %13, align 4
  %122 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 2
  store i32 %121, i32* %122, align 4
  store i32 0, i32* %19, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @S_IFMT, align 4
  %125 = and i32 %123, %124
  switch i32 %125, label %133 [
    i32 130, label %126
    i32 131, label %129
    i32 128, label %132
  ]

126:                                              ; preds = %106
  %127 = load i32, i32* @VCHR, align 4
  %128 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  br label %135

129:                                              ; preds = %106
  %130 = load i32, i32* @VBLK, align 4
  %131 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  br label %135

132:                                              ; preds = %106
  store i32 1, i32* %19, align 4
  br label %135

133:                                              ; preds = %106
  %134 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %132, %129, %126
  br label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %138 = load %struct.vnode*, %struct.vnode** %137, align 8
  %139 = load i32, i32* @V_NOWAIT, align 4
  %140 = call i32 @vn_start_write(%struct.vnode* %138, %struct.mount** %15, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %136
  %143 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %144 = call i32 @NDFREE(%struct.nameidata* %17, i32 %143)
  %145 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %146 = load %struct.vnode*, %struct.vnode** %145, align 8
  %147 = call i32 @vput(%struct.vnode* %146)
  %148 = load i32, i32* @V_XSLEEP, align 4
  %149 = load i32, i32* @PCATCH, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @vn_start_write(%struct.vnode* null, %struct.mount** %15, i32 %150)
  store i32 %151, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* %18, align 4
  store i32 %154, i32* %7, align 4
  br label %191

155:                                              ; preds = %142
  br label %63

156:                                              ; preds = %136
  %157 = load i32, i32* %18, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %182

159:                                              ; preds = %156
  %160 = load i32, i32* %19, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %164 = load %struct.vnode*, %struct.vnode** %163, align 8
  %165 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 2
  %166 = load i32, i32* @CREATE, align 4
  %167 = call i32 @VOP_WHITEOUT(%struct.vnode* %164, i32* %165, i32 %166)
  store i32 %167, i32* %18, align 4
  br label %181

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %170 = load %struct.vnode*, %struct.vnode** %169, align 8
  %171 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 1
  %172 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 2
  %173 = call i32 @VOP_MKNOD(%struct.vnode* %170, %struct.vnode** %171, i32* %172, %struct.vattr* %16)
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 1
  %178 = load %struct.vnode*, %struct.vnode** %177, align 8
  %179 = call i32 @vput(%struct.vnode* %178)
  br label %180

180:                                              ; preds = %176, %168
  br label %181

181:                                              ; preds = %180, %162
  br label %182

182:                                              ; preds = %181, %156
  %183 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %184 = call i32 @NDFREE(%struct.nameidata* %17, i32 %183)
  %185 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %186 = load %struct.vnode*, %struct.vnode** %185, align 8
  %187 = call i32 @vput(%struct.vnode* %186)
  %188 = load %struct.mount*, %struct.mount** %15, align 8
  %189 = call i32 @vn_finished_write(%struct.mount* %188)
  %190 = load i32, i32* %18, align 4
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %182, %153, %102, %80, %60, %47
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i32 @AUDIT_ARG_MODE(i32) #1

declare dso_local i32 @AUDIT_ARG_DEV(i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @kern_mkfifoat(%struct.thread*, i32, i8*, i32, i32) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @VOP_WHITEOUT(%struct.vnode*, i32*, i32) #1

declare dso_local i32 @VOP_MKNOD(%struct.vnode*, %struct.vnode**, i32*, %struct.vattr*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
