; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_symlinkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_symlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mount = type { i32 }
%struct.vattr = type { i32, i32 }
%struct.nameidata = type { i64, i64, i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@namei_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NOCACHE = common dso_local global i32 0, align 4
@cap_symlinkat_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@V_XSLEEP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4
@VLNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_symlinkat(%struct.thread* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mount*, align 8
  %12 = alloca %struct.vattr, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.nameidata, align 8
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @UIO_SYSSPACE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %13, align 8
  br label %34

22:                                               ; preds = %5
  %23 = load i32, i32* @namei_zone, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = call i8* @uma_zalloc(i32 %23, i32 %24)
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = call i32 @copyinstr(i8* %26, i8* %27, i32 %28, i32* null)
  store i32 %29, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %133

32:                                               ; preds = %22
  %33 = load i8*, i8** %14, align 8
  store i8* %33, i8** %13, align 8
  br label %34

34:                                               ; preds = %32, %20
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @AUDIT_ARG_TEXT(i8* %35)
  br label %37

37:                                               ; preds = %99, %34
  %38 = call i32 (...) @bwillwrite()
  %39 = load i32, i32* @CREATE, align 4
  %40 = load i32, i32* @LOCKPARENT, align 4
  %41 = load i32, i32* @SAVENAME, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @AUDITVNODE1, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @NOCACHE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.thread*, %struct.thread** %6, align 8
  %51 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %15, i32 %39, i32 %46, i32 %47, i8* %48, i32 %49, i32* @cap_symlinkat_rights, %struct.thread* %50)
  %52 = call i32 @namei(%struct.nameidata* %15)
  store i32 %52, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %133

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %61 = call i32 @NDFREE(%struct.nameidata* %15, i32 %60)
  %62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @vrele(i64 %69)
  br label %75

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @vput(i64 %73)
  br label %75

75:                                               ; preds = %71, %67
  %76 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @vrele(i64 %77)
  %79 = load i32, i32* @EEXIST, align 4
  store i32 %79, i32* %16, align 4
  br label %133

80:                                               ; preds = %55
  %81 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32, i32* @V_NOWAIT, align 4
  %85 = call i32 @vn_start_write(i32* %83, %struct.mount** %11, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %89 = call i32 @NDFREE(%struct.nameidata* %15, i32 %88)
  %90 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @vput(i64 %91)
  %93 = load i32, i32* @V_XSLEEP, align 4
  %94 = load i32, i32* @PCATCH, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @vn_start_write(i32* null, %struct.mount** %11, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %133

99:                                               ; preds = %87
  br label %37

100:                                              ; preds = %80
  %101 = call i32 @VATTR_NULL(%struct.vattr* %12)
  %102 = load i32, i32* @ACCESSPERMS, align 4
  %103 = load %struct.thread*, %struct.thread** %6, align 8
  %104 = getelementptr inbounds %struct.thread, %struct.thread* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %102, %110
  %112 = getelementptr inbounds %struct.vattr, %struct.vattr* %12, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %116 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 2
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @VOP_SYMLINK(i64 %114, i64* %115, i32* %116, %struct.vattr* %12, i8* %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %100
  %122 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @vput(i64 %123)
  br label %125

125:                                              ; preds = %121, %100
  %126 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %127 = call i32 @NDFREE(%struct.nameidata* %15, i32 %126)
  %128 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @vput(i64 %129)
  %131 = load %struct.mount*, %struct.mount** %11, align 8
  %132 = call i32 @vn_finished_write(%struct.mount* %131)
  br label %133

133:                                              ; preds = %125, %98, %75, %54, %31
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @UIO_SYSSPACE, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32, i32* @namei_zone, align 4
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 @uma_zfree(i32 %138, i8* %139)
  br label %141

141:                                              ; preds = %137, %133
  %142 = load i32, i32* %16, align 4
  ret i32 %142
}

declare dso_local i8* @uma_zalloc(i32, i32) #1

declare dso_local i32 @copyinstr(i8*, i8*, i32, i32*) #1

declare dso_local i32 @AUDIT_ARG_TEXT(i8*) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vrele(i64) #1

declare dso_local i32 @vput(i64) #1

declare dso_local i32 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @VOP_SYMLINK(i64, i64*, i32*, %struct.vattr*, i8*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @uma_zfree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
