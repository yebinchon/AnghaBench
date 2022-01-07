; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.image_params = type { i32, %struct.vattr*, i32 }
%struct.vattr = type { i32 }
%struct.nameidata = type { i32 }
%struct.file = type { i32, i32 }

@CAP_READ = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"MAC_VERIEXEC_CHECK_SYSCALL: file is not vnode type (type=0x%x)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"mac_veriexec_fingerprint_check_image: va_mode=%o, check_files=%d\0A\00", align 1
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VVERIFY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i8*)* @mac_veriexec_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_veriexec_syscall(%struct.thread* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.image_params, align 8
  %9 = alloca %struct.nameidata, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vattr, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %129 [
    i32 129, label %15
    i32 128, label %99
  ]

15:                                               ; preds = %3
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i32, i32* @CAP_READ, align 4
  %20 = call i32 @cap_rights_init(i32* %10, i32 %19)
  %21 = call i32 @getvnode(%struct.thread* %16, i64 %18, i32 %20, %struct.file** %12)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %133

26:                                               ; preds = %15
  %27 = load %struct.file*, %struct.file** %12, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DTYPE_VNODE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.file*, %struct.file** %12, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @MAC_VERIEXEC_DBG(i32 3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %13, align 4
  br label %95

38:                                               ; preds = %26
  %39 = call i32 @bzero(%struct.image_params* %8, i32 24)
  %40 = load %struct.thread*, %struct.thread** %5, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.image_params, %struct.image_params* %8, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.file*, %struct.file** %12, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.image_params, %struct.image_params* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.image_params, %struct.image_params* %8, i32 0, i32 1
  store %struct.vattr* %11, %struct.vattr** %48, align 8
  %49 = getelementptr inbounds %struct.image_params, %struct.image_params* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @LK_EXCLUSIVE, align 4
  %52 = load i32, i32* @LK_RETRY, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @vn_lock(i32 %50, i32 %53)
  %55 = load %struct.file*, %struct.file** %12, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.thread*, %struct.thread** %5, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @VOP_GETATTR(i32 %57, %struct.vattr* %11, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %38
  br label %91

65:                                               ; preds = %38
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @S_IXUSR, align 4
  %71 = load i32, i32* @S_IXGRP, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @S_IXOTH, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %69, %74
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, i32, ...) @MAC_VERIEXEC_DBG(i32 2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %77)
  %79 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @S_IXUSR, align 4
  %82 = load i32, i32* @S_IXGRP, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @S_IXOTH, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %80, %85
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load %struct.thread*, %struct.thread** %5, align 8
  %90 = call i32 @mac_veriexec_fingerprint_check_image(%struct.image_params* %8, i32 %88, %struct.thread* %89)
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %65, %64
  %92 = getelementptr inbounds %struct.image_params, %struct.image_params* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @VOP_UNLOCK(i32 %93, i32 0)
  br label %95

95:                                               ; preds = %91, %32
  %96 = load %struct.file*, %struct.file** %12, align 8
  %97 = load %struct.thread*, %struct.thread** %5, align 8
  %98 = call i32 @fdrop(%struct.file* %96, %struct.thread* %97)
  br label %131

99:                                               ; preds = %3
  %100 = load i32, i32* @LOOKUP, align 4
  %101 = load i32, i32* @FOLLOW, align 4
  %102 = load i32, i32* @LOCKLEAF, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @LOCKSHARED, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @AUDITVNODE1, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @UIO_USERSPACE, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.thread*, %struct.thread** %5, align 8
  %111 = call i32 @NDINIT(%struct.nameidata* %9, i32 %100, i32 %107, i32 %108, i8* %109, %struct.thread* %110)
  %112 = call i32 @namei(%struct.nameidata* %9)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  br label %131

116:                                              ; preds = %99
  %117 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %118 = call i32 @NDFREE(%struct.nameidata* %9, i32 %117)
  %119 = load %struct.thread*, %struct.thread** %5, align 8
  %120 = getelementptr inbounds %struct.thread, %struct.thread* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @VVERIFY, align 4
  %125 = call i32 @mac_veriexec_check_vp(i32 %121, i32 %123, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @vput(i32 %127)
  br label %131

129:                                              ; preds = %3
  %130 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %129, %116, %115, %95
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %24
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @getvnode(%struct.thread*, i64, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @MAC_VERIEXEC_DBG(i32, i8*, i32, ...) #1

declare dso_local i32 @bzero(%struct.image_params*, i32) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local i32 @VOP_GETATTR(i32, %struct.vattr*, i32) #1

declare dso_local i32 @mac_veriexec_fingerprint_check_image(%struct.image_params*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @mac_veriexec_check_vp(i32, i32, i32) #1

declare dso_local i32 @vput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
