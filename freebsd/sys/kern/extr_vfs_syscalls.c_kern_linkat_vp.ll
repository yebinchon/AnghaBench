; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_linkat_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_linkat_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i64, i64 }
%struct.nameidata = type { %struct.vnode*, i32, %struct.vnode* }
%struct.mount = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@AUDITVNODE2 = common dso_local global i32 0, align 4
@NOCACHE = common dso_local global i32 0, align 4
@cap_linkat_target_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@V_XSLEEP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.vnode*, i32, i8*, i32)* @kern_linkat_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_linkat_vp(%struct.thread* %0, %struct.vnode* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nameidata, align 8
  %13 = alloca %struct.mount*, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.vnode*, %struct.vnode** %8, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VDIR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load %struct.vnode*, %struct.vnode** %8, align 8
  %22 = call i32 @vrele(%struct.vnode* %21)
  %23 = load i32, i32* @EPERM, align 4
  store i32 %23, i32* %6, align 4
  br label %162

24:                                               ; preds = %5
  %25 = load i32, i32* @CREATE, align 4
  %26 = load i32, i32* @LOCKPARENT, align 4
  %27 = load i32, i32* @SAVENAME, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AUDITVNODE2, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @NOCACHE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.thread*, %struct.thread** %7, align 8
  %37 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %12, i32 %25, i32 %32, i32 %33, i8* %34, i32 %35, i32* @cap_linkat_target_rights, %struct.thread* %36)
  %38 = call i32 @namei(%struct.nameidata* %12)
  store i32 %38, i32* %14, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %158

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 2
  %42 = load %struct.vnode*, %struct.vnode** %41, align 8
  %43 = icmp ne %struct.vnode* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %46 = call i32 @NDFREE(%struct.nameidata* %12, i32 %45)
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %48 = load %struct.vnode*, %struct.vnode** %47, align 8
  %49 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 2
  %50 = load %struct.vnode*, %struct.vnode** %49, align 8
  %51 = icmp eq %struct.vnode* %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %54 = load %struct.vnode*, %struct.vnode** %53, align 8
  %55 = call i32 @vrele(%struct.vnode* %54)
  br label %60

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %58 = load %struct.vnode*, %struct.vnode** %57, align 8
  %59 = call i32 @vput(%struct.vnode* %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 2
  %62 = load %struct.vnode*, %struct.vnode** %61, align 8
  %63 = call i32 @vrele(%struct.vnode* %62)
  %64 = load %struct.vnode*, %struct.vnode** %8, align 8
  %65 = call i32 @vrele(%struct.vnode* %64)
  %66 = load i32, i32* @EEXIST, align 4
  store i32 %66, i32* %6, align 4
  br label %162

67:                                               ; preds = %40
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %69 = load %struct.vnode*, %struct.vnode** %68, align 8
  %70 = getelementptr inbounds %struct.vnode, %struct.vnode* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.vnode*, %struct.vnode** %8, align 8
  %73 = getelementptr inbounds %struct.vnode, %struct.vnode* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %67
  %77 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %78 = call i32 @NDFREE(%struct.nameidata* %12, i32 %77)
  %79 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %80 = load %struct.vnode*, %struct.vnode** %79, align 8
  %81 = call i32 @vput(%struct.vnode* %80)
  %82 = load %struct.vnode*, %struct.vnode** %8, align 8
  %83 = call i32 @vrele(%struct.vnode* %82)
  %84 = load i32, i32* @EXDEV, align 4
  store i32 %84, i32* %6, align 4
  br label %162

85:                                               ; preds = %67
  %86 = load %struct.vnode*, %struct.vnode** %8, align 8
  %87 = load i32, i32* @LK_EXCLUSIVE, align 4
  %88 = call i32 @vn_lock(%struct.vnode* %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %146

90:                                               ; preds = %85
  %91 = load %struct.vnode*, %struct.vnode** %8, align 8
  %92 = load %struct.thread*, %struct.thread** %7, align 8
  %93 = getelementptr inbounds %struct.thread, %struct.thread* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @can_hardlink(%struct.vnode* %91, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load %struct.vnode*, %struct.vnode** %8, align 8
  %100 = call i32 @vput(%struct.vnode* %99)
  %101 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %102 = load %struct.vnode*, %struct.vnode** %101, align 8
  %103 = call i32 @vput(%struct.vnode* %102)
  %104 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %105 = call i32 @NDFREE(%struct.nameidata* %12, i32 %104)
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %6, align 4
  br label %162

107:                                              ; preds = %90
  %108 = load %struct.vnode*, %struct.vnode** %8, align 8
  %109 = load i32, i32* @V_NOWAIT, align 4
  %110 = call i32 @vn_start_write(%struct.vnode* %108, %struct.mount** %13, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %107
  %114 = load %struct.vnode*, %struct.vnode** %8, align 8
  %115 = call i32 @vput(%struct.vnode* %114)
  %116 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %117 = load %struct.vnode*, %struct.vnode** %116, align 8
  %118 = call i32 @vput(%struct.vnode* %117)
  %119 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %120 = call i32 @NDFREE(%struct.nameidata* %12, i32 %119)
  %121 = load i32, i32* @V_XSLEEP, align 4
  %122 = load i32, i32* @PCATCH, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @vn_start_write(%struct.vnode* null, %struct.mount** %13, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %6, align 4
  br label %162

129:                                              ; preds = %113
  %130 = load i32, i32* @EAGAIN, align 4
  store i32 %130, i32* %6, align 4
  br label %162

131:                                              ; preds = %107
  %132 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %133 = load %struct.vnode*, %struct.vnode** %132, align 8
  %134 = load %struct.vnode*, %struct.vnode** %8, align 8
  %135 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 1
  %136 = call i32 @VOP_LINK(%struct.vnode* %133, %struct.vnode* %134, i32* %135)
  store i32 %136, i32* %14, align 4
  %137 = load %struct.vnode*, %struct.vnode** %8, align 8
  %138 = call i32 @VOP_UNLOCK(%struct.vnode* %137, i32 0)
  %139 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %140 = load %struct.vnode*, %struct.vnode** %139, align 8
  %141 = call i32 @vput(%struct.vnode* %140)
  %142 = load %struct.mount*, %struct.mount** %13, align 8
  %143 = call i32 @vn_finished_write(%struct.mount* %142)
  %144 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %145 = call i32 @NDFREE(%struct.nameidata* %12, i32 %144)
  br label %155

146:                                              ; preds = %85
  %147 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %148 = load %struct.vnode*, %struct.vnode** %147, align 8
  %149 = call i32 @vput(%struct.vnode* %148)
  %150 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %151 = call i32 @NDFREE(%struct.nameidata* %12, i32 %150)
  %152 = load %struct.vnode*, %struct.vnode** %8, align 8
  %153 = call i32 @vrele(%struct.vnode* %152)
  %154 = load i32, i32* @EAGAIN, align 4
  store i32 %154, i32* %6, align 4
  br label %162

155:                                              ; preds = %131
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %24
  %159 = load %struct.vnode*, %struct.vnode** %8, align 8
  %160 = call i32 @vrele(%struct.vnode* %159)
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %146, %129, %127, %98, %76, %60, %20
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @can_hardlink(%struct.vnode*, i32) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @VOP_LINK(%struct.vnode*, %struct.vnode*, i32*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
