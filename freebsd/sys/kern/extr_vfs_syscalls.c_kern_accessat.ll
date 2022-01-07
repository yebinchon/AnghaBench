; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_accessat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_accessat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i64, i64, i64, i64* }
%struct.vnode = type { i32 }
%struct.nameidata = type { %struct.vnode* }

@AT_EACCESS = common dso_local global i32 0, align 4
@AT_BENEATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@BENEATH = common dso_local global i32 0, align 4
@cap_fstat_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_accessat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ucred*, align 8
  %15 = alloca %struct.ucred*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.nameidata, align 8
  %18 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @AT_EACCESS, align 4
  %21 = load i32, i32* @AT_BENEATH, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %7, align 4
  br label %143

28:                                               ; preds = %6
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @F_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @R_OK, align 4
  %35 = load i32, i32* @W_OK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @X_OK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %33, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %7, align 4
  br label %143

44:                                               ; preds = %32, %28
  %45 = load %struct.thread*, %struct.thread** %8, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 0
  %47 = load %struct.ucred*, %struct.ucred** %46, align 8
  store %struct.ucred* %47, %struct.ucred** %14, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @AT_EACCESS, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %44
  %53 = load %struct.ucred*, %struct.ucred** %14, align 8
  %54 = getelementptr inbounds %struct.ucred, %struct.ucred* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ucred*, %struct.ucred** %14, align 8
  %57 = getelementptr inbounds %struct.ucred, %struct.ucred* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %52
  %61 = load %struct.ucred*, %struct.ucred** %14, align 8
  %62 = getelementptr inbounds %struct.ucred, %struct.ucred* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ucred*, %struct.ucred** %14, align 8
  %65 = getelementptr inbounds %struct.ucred, %struct.ucred* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %63, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %60, %52
  %71 = load %struct.ucred*, %struct.ucred** %14, align 8
  %72 = call %struct.ucred* @crdup(%struct.ucred* %71)
  store %struct.ucred* %72, %struct.ucred** %15, align 8
  %73 = load %struct.ucred*, %struct.ucred** %14, align 8
  %74 = getelementptr inbounds %struct.ucred, %struct.ucred* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ucred*, %struct.ucred** %15, align 8
  %77 = getelementptr inbounds %struct.ucred, %struct.ucred* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ucred*, %struct.ucred** %14, align 8
  %79 = getelementptr inbounds %struct.ucred, %struct.ucred* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ucred*, %struct.ucred** %15, align 8
  %82 = getelementptr inbounds %struct.ucred, %struct.ucred* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %80, i64* %84, align 8
  %85 = load %struct.ucred*, %struct.ucred** %15, align 8
  %86 = load %struct.thread*, %struct.thread** %8, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 0
  store %struct.ucred* %85, %struct.ucred** %87, align 8
  br label %90

88:                                               ; preds = %60, %44
  %89 = load %struct.ucred*, %struct.ucred** %14, align 8
  store %struct.ucred* %89, %struct.ucred** %15, align 8
  br label %90

90:                                               ; preds = %88, %70
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @AUDIT_ARG_VALUE(i32 %91)
  %93 = load i32, i32* @LOOKUP, align 4
  %94 = load i32, i32* @FOLLOW, align 4
  %95 = load i32, i32* @LOCKSHARED, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @LOCKLEAF, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @AUDITVNODE1, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @AT_BENEATH, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = load i32, i32* @BENEATH, align 4
  br label %108

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = or i32 %100, %109
  %111 = load i32, i32* %11, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.thread*, %struct.thread** %8, align 8
  %115 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %17, i32 %93, i32 %110, i32 %111, i8* %112, i32 %113, i32* @cap_fstat_rights, %struct.thread* %114)
  %116 = call i32 @namei(%struct.nameidata* %17)
  store i32 %116, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %131

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %121 = load %struct.vnode*, %struct.vnode** %120, align 8
  store %struct.vnode* %121, %struct.vnode** %16, align 8
  %122 = load %struct.vnode*, %struct.vnode** %16, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.ucred*, %struct.ucred** %15, align 8
  %125 = load %struct.thread*, %struct.thread** %8, align 8
  %126 = call i32 @vn_access(%struct.vnode* %122, i32 %123, %struct.ucred* %124, %struct.thread* %125)
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %128 = call i32 @NDFREE(%struct.nameidata* %17, i32 %127)
  %129 = load %struct.vnode*, %struct.vnode** %16, align 8
  %130 = call i32 @vput(%struct.vnode* %129)
  br label %131

131:                                              ; preds = %119, %118
  %132 = load %struct.ucred*, %struct.ucred** %15, align 8
  %133 = load %struct.ucred*, %struct.ucred** %14, align 8
  %134 = icmp ne %struct.ucred* %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load %struct.ucred*, %struct.ucred** %14, align 8
  %137 = load %struct.thread*, %struct.thread** %8, align 8
  %138 = getelementptr inbounds %struct.thread, %struct.thread* %137, i32 0, i32 0
  store %struct.ucred* %136, %struct.ucred** %138, align 8
  %139 = load %struct.ucred*, %struct.ucred** %15, align 8
  %140 = call i32 @crfree(%struct.ucred* %139)
  br label %141

141:                                              ; preds = %135, %131
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %141, %42, %26
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local %struct.ucred* @crdup(%struct.ucred*) #1

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vn_access(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
