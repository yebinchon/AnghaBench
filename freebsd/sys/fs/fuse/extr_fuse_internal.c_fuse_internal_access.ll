; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.mount = type { i32 }
%struct.fuse_dispatcher = type { %struct.fuse_access_in* }
%struct.fuse_access_in = type { i32 }
%struct.fuse_data = type { i32, i32 }
%struct.vattr = type { i32, i32, i32 }

@F_OK = common dso_local global i32 0, align 4
@VMODIFY_PERMS = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@FSESS_DAEMON_CAN_SPY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FSESS_DEFAULT_PERMISSIONS = common dso_local global i32 0, align 4
@FUSE_ACCESS = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@VAPPEND = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_access(%struct.vnode* %0, i32 %1, %struct.thread* %2, %struct.ucred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mount*, align 8
  %15 = alloca %struct.fuse_dispatcher, align 8
  %16 = alloca %struct.fuse_access_in*, align 8
  %17 = alloca %struct.fuse_data*, align 8
  %18 = alloca %struct.vattr, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.thread* %2, %struct.thread** %8, align 8
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @F_OK, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.vnode*, %struct.vnode** %6, align 8
  %21 = call %struct.mount* @vnode_mount(%struct.vnode* %20)
  store %struct.mount* %21, %struct.mount** %14, align 8
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = call i32 @vnode_vtype(%struct.vnode* %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.mount*, %struct.mount** %14, align 8
  %25 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %24)
  store %struct.fuse_data* %25, %struct.fuse_data** %17, align 8
  %26 = load %struct.fuse_data*, %struct.fuse_data** %17, align 8
  %27 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %146

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @VMODIFY_PERMS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.mount*, %struct.mount** %14, align 8
  %39 = call i64 @vfs_isrdonly(%struct.mount* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.vnode*, %struct.vnode** %6, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %47 [
    i32 130, label %45
    i32 129, label %45
    i32 128, label %45
  ]

45:                                               ; preds = %41, %41, %41
  %46 = load i32, i32* @EROFS, align 4
  store i32 %46, i32* %5, align 4
  br label %146

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %37, %32
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @FSESS_DAEMON_CAN_SPY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.fuse_data*, %struct.fuse_data** %17, align 8
  %56 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ucred*, %struct.ucred** %9, align 8
  %59 = call i64 @fuse_match_cred(i32 %57, %struct.ucred* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @EPERM, align 4
  store i32 %62, i32* %5, align 4
  br label %146

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @FSESS_DEFAULT_PERMISSIONS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.vnode*, %struct.vnode** %6, align 8
  %71 = load %struct.ucred*, %struct.ucred** %9, align 8
  %72 = load %struct.thread*, %struct.thread** %8, align 8
  %73 = call i32 @fuse_internal_getattr(%struct.vnode* %70, %struct.vattr* %18, %struct.ucred* %71, %struct.thread* %72)
  %74 = load %struct.vnode*, %struct.vnode** %6, align 8
  %75 = getelementptr inbounds %struct.vnode, %struct.vnode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.ucred*, %struct.ucred** %9, align 8
  %85 = call i32 @vaccess(i32 %76, i32 %78, i32 %80, i32 %82, i32 %83, %struct.ucred* %84, i32* null)
  store i32 %85, i32* %5, align 4
  br label %146

86:                                               ; preds = %64
  %87 = load %struct.mount*, %struct.mount** %14, align 8
  %88 = load i32, i32* @FUSE_ACCESS, align 4
  %89 = call i32 @fsess_isimpl(%struct.mount* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %146

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @VWRITE, align 4
  %95 = load i32, i32* @VAPPEND, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @VADMIN, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %93, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load i32, i32* @W_OK, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %101, %92
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @VREAD, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @R_OK, align 4
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @VEXEC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @X_OK, align 4
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = call i32 @fdisp_init(%struct.fuse_dispatcher* %15, i32 4)
  %125 = load i32, i32* @FUSE_ACCESS, align 4
  %126 = load %struct.vnode*, %struct.vnode** %6, align 8
  %127 = load %struct.thread*, %struct.thread** %8, align 8
  %128 = load %struct.ucred*, %struct.ucred** %9, align 8
  %129 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %15, i32 %125, %struct.vnode* %126, %struct.thread* %127, %struct.ucred* %128)
  %130 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %15, i32 0, i32 0
  %131 = load %struct.fuse_access_in*, %struct.fuse_access_in** %130, align 8
  store %struct.fuse_access_in* %131, %struct.fuse_access_in** %16, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.fuse_access_in*, %struct.fuse_access_in** %16, align 8
  %134 = getelementptr inbounds %struct.fuse_access_in, %struct.fuse_access_in* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %15)
  store i32 %135, i32* %10, align 4
  %136 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %15)
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @ENOSYS, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %123
  %141 = load %struct.mount*, %struct.mount** %14, align 8
  %142 = load i32, i32* @FUSE_ACCESS, align 4
  %143 = call i32 @fsess_set_notimpl(%struct.mount* %141, i32 %142)
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %140, %123
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %91, %69, %61, %45, %31
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @vnode_vtype(%struct.vnode*) #1

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i64 @vfs_isrdonly(%struct.mount*) #1

declare dso_local i64 @fuse_match_cred(i32, %struct.ucred*) #1

declare dso_local i32 @fuse_internal_getattr(%struct.vnode*, %struct.vattr*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @fsess_isimpl(%struct.mount*, i32) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fsess_set_notimpl(%struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
