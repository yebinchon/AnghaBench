; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_mkfifoat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_mkfifoat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mount = type { i32 }
%struct.vattr = type { i32, i32 }
%struct.nameidata = type { i32*, i32*, i32 }

@CREATE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NOCACHE = common dso_local global i32 0, align 4
@cap_mkfifoat_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@V_XSLEEP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_mkfifoat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.vattr, align 4
  %14 = alloca %struct.nameidata, align 8
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @AUDIT_ARG_MODE(i32 %16)
  br label %18

18:                                               ; preds = %81, %5
  %19 = call i32 (...) @bwillwrite()
  %20 = load i32, i32* @CREATE, align 4
  %21 = load i32, i32* @LOCKPARENT, align 4
  %22 = load i32, i32* @SAVENAME, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @AUDITVNODE1, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @NOCACHE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.thread*, %struct.thread** %7, align 8
  %32 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %14, i32 %20, i32 %27, i32 %28, i8* %29, i32 %30, i32* @cap_mkfifoat_rights, %struct.thread* %31)
  %33 = call i32 @namei(%struct.nameidata* %14)
  store i32 %33, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %6, align 4
  br label %119

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %43 = call i32 @NDFREE(%struct.nameidata* %14, i32 %42)
  %44 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @vrele(i32* %51)
  br label %57

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @vput(i32* %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @vrele(i32* %59)
  %61 = load i32, i32* @EEXIST, align 4
  store i32 %61, i32* %6, align 4
  br label %119

62:                                               ; preds = %37
  %63 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @V_NOWAIT, align 4
  %66 = call i32 @vn_start_write(i32* %64, %struct.mount** %12, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %70 = call i32 @NDFREE(%struct.nameidata* %14, i32 %69)
  %71 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @vput(i32* %72)
  %74 = load i32, i32* @V_XSLEEP, align 4
  %75 = load i32, i32* @PCATCH, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @vn_start_write(i32* null, %struct.mount** %12, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %6, align 4
  br label %119

81:                                               ; preds = %68
  br label %18

82:                                               ; preds = %62
  %83 = call i32 @VATTR_NULL(%struct.vattr* %13)
  %84 = load i32, i32* @VFIFO, align 4
  %85 = getelementptr inbounds %struct.vattr, %struct.vattr* %13, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @ALLPERMS, align 4
  %88 = and i32 %86, %87
  %89 = load %struct.thread*, %struct.thread** %7, align 8
  %90 = getelementptr inbounds %struct.thread, %struct.thread* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %88, %96
  %98 = getelementptr inbounds %struct.vattr, %struct.vattr* %13, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %102 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 2
  %103 = call i32 @VOP_MKNOD(i32* %100, i32** %101, i32* %102, %struct.vattr* %13)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %82
  %107 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @vput(i32* %108)
  br label %110

110:                                              ; preds = %106, %82
  %111 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @vput(i32* %112)
  %114 = load %struct.mount*, %struct.mount** %12, align 8
  %115 = call i32 @vn_finished_write(%struct.mount* %114)
  %116 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %117 = call i32 @NDFREE(%struct.nameidata* %14, i32 %116)
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %110, %79, %57, %35
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @AUDIT_ARG_MODE(i32) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vrele(i32*) #1

declare dso_local i32 @vput(i32*) #1

declare dso_local i32 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @VOP_MKNOD(i32*, i32**, i32*, %struct.vattr*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
