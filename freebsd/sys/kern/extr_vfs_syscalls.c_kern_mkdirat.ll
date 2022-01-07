; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_mkdirat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_mkdirat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { i32, i32 }
%struct.nameidata = type { %struct.vnode*, %struct.vnode*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CREATE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NOCACHE = common dso_local global i32 0, align 4
@cap_mkdirat_rights = common dso_local global i32 0, align 4
@WILLBEDIR = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@V_XSLEEP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_mkdirat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vattr, align 4
  %15 = alloca %struct.nameidata, align 8
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @AUDIT_ARG_MODE(i32 %17)
  br label %19

19:                                               ; preds = %86, %5
  %20 = call i32 (...) @bwillwrite()
  %21 = load i32, i32* @CREATE, align 4
  %22 = load i32, i32* @LOCKPARENT, align 4
  %23 = load i32, i32* @SAVENAME, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @AUDITVNODE1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NOCACHE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.thread*, %struct.thread** %7, align 8
  %33 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %15, i32 %21, i32 %28, i32 %29, i8* %30, i32 %31, i32* @cap_mkdirat_rights, %struct.thread* %32)
  %34 = load i32, i32* @WILLBEDIR, align 4
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = call i32 @namei(%struct.nameidata* %15)
  store i32 %39, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %6, align 4
  br label %124

43:                                               ; preds = %19
  %44 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %45 = load %struct.vnode*, %struct.vnode** %44, align 8
  store %struct.vnode* %45, %struct.vnode** %13, align 8
  %46 = load %struct.vnode*, %struct.vnode** %13, align 8
  %47 = icmp ne %struct.vnode* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %50 = call i32 @NDFREE(%struct.nameidata* %15, i32 %49)
  %51 = load %struct.vnode*, %struct.vnode** %13, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %53 = load %struct.vnode*, %struct.vnode** %52, align 8
  %54 = icmp eq %struct.vnode* %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %57 = load %struct.vnode*, %struct.vnode** %56, align 8
  %58 = call i32 @vrele(%struct.vnode* %57)
  br label %63

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %61 = load %struct.vnode*, %struct.vnode** %60, align 8
  %62 = call i32 @vput(%struct.vnode* %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.vnode*, %struct.vnode** %13, align 8
  %65 = call i32 @vrele(%struct.vnode* %64)
  %66 = load i32, i32* @EEXIST, align 4
  store i32 %66, i32* %6, align 4
  br label %124

67:                                               ; preds = %43
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %69 = load %struct.vnode*, %struct.vnode** %68, align 8
  %70 = load i32, i32* @V_NOWAIT, align 4
  %71 = call i32 @vn_start_write(%struct.vnode* %69, %struct.mount** %12, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %75 = call i32 @NDFREE(%struct.nameidata* %15, i32 %74)
  %76 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %77 = load %struct.vnode*, %struct.vnode** %76, align 8
  %78 = call i32 @vput(%struct.vnode* %77)
  %79 = load i32, i32* @V_XSLEEP, align 4
  %80 = load i32, i32* @PCATCH, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @vn_start_write(%struct.vnode* null, %struct.mount** %12, i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %6, align 4
  br label %124

86:                                               ; preds = %73
  br label %19

87:                                               ; preds = %67
  %88 = call i32 @VATTR_NULL(%struct.vattr* %14)
  %89 = load i32, i32* @VDIR, align 4
  %90 = getelementptr inbounds %struct.vattr, %struct.vattr* %14, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @ACCESSPERMS, align 4
  %93 = and i32 %91, %92
  %94 = load %struct.thread*, %struct.thread** %7, align 8
  %95 = getelementptr inbounds %struct.thread, %struct.thread* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %93, %101
  %103 = getelementptr inbounds %struct.vattr, %struct.vattr* %14, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %105 = load %struct.vnode*, %struct.vnode** %104, align 8
  %106 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %107 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 2
  %108 = call i32 @VOP_MKDIR(%struct.vnode* %105, %struct.vnode** %106, %struct.TYPE_7__* %107, %struct.vattr* %14)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %110 = call i32 @NDFREE(%struct.nameidata* %15, i32 %109)
  %111 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %112 = load %struct.vnode*, %struct.vnode** %111, align 8
  %113 = call i32 @vput(%struct.vnode* %112)
  %114 = load i32, i32* %16, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %87
  %117 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %118 = load %struct.vnode*, %struct.vnode** %117, align 8
  %119 = call i32 @vput(%struct.vnode* %118)
  br label %120

120:                                              ; preds = %116, %87
  %121 = load %struct.mount*, %struct.mount** %12, align 8
  %122 = call i32 @vn_finished_write(%struct.mount* %121)
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %120, %84, %63, %41
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @AUDIT_ARG_MODE(i32) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @VOP_MKDIR(%struct.vnode*, %struct.vnode**, %struct.TYPE_7__*, %struct.vattr*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
