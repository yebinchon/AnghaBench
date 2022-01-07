; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_do_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_do_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vattr = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.fuse_dispatcher = type { i64, %struct.fuse_getattr_in* }
%struct.fuse_getattr_in = type { i64 }
%struct.fuse_vnode_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.timespec, %struct.timespec, i32 }
%struct.timespec = type { i32, i32 }
%struct.fuse_attr_out = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@FUSE_GETATTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FN_SIZECHANGE = common dso_local global i32 0, align 4
@FN_CTIMECHANGE = common dso_local global i32 0, align 4
@FN_MTIMECHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_do_getattr(%struct.vnode* %0, %struct.vattr* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vattr*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.fuse_dispatcher, align 8
  %10 = alloca %struct.fuse_vnode_data*, align 8
  %11 = alloca %struct.fuse_getattr_in*, align 8
  %12 = alloca %struct.fuse_attr_out*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec, align 4
  %15 = alloca %struct.timespec, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vattr* %1, %struct.vattr** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = call %struct.fuse_vnode_data* @VTOFUD(%struct.vnode* %18)
  store %struct.fuse_vnode_data* %19, %struct.fuse_vnode_data** %10, align 8
  %20 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %10, align 8
  %21 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %10, align 8
  %25 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = bitcast %struct.timespec* %14 to i8*
  %28 = bitcast %struct.timespec* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %10, align 8
  %30 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = bitcast %struct.timespec* %15 to i8*
  %33 = bitcast %struct.timespec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 8, i1 false)
  %34 = call i32 @fdisp_init(%struct.fuse_dispatcher* %9, i32 8)
  %35 = load i32, i32* @FUSE_GETATTR, align 4
  %36 = load %struct.vnode*, %struct.vnode** %5, align 8
  %37 = load %struct.thread*, %struct.thread** %8, align 8
  %38 = load %struct.ucred*, %struct.ucred** %7, align 8
  %39 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %9, i32 %35, %struct.vnode* %36, %struct.thread* %37, %struct.ucred* %38)
  %40 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %9, i32 0, i32 1
  %41 = load %struct.fuse_getattr_in*, %struct.fuse_getattr_in** %40, align 8
  store %struct.fuse_getattr_in* %41, %struct.fuse_getattr_in** %11, align 8
  %42 = load %struct.fuse_getattr_in*, %struct.fuse_getattr_in** %11, align 8
  %43 = getelementptr inbounds %struct.fuse_getattr_in, %struct.fuse_getattr_in* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %9)
  store i32 %44, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @ENOENT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.vnode*, %struct.vnode** %5, align 8
  %52 = call i32 @fuse_internal_vnode_disappear(%struct.vnode* %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %131

54:                                               ; preds = %4
  %55 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.fuse_attr_out*
  store %struct.fuse_attr_out* %57, %struct.fuse_attr_out** %12, align 8
  %58 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %12, align 8
  %59 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @IFTOVT(i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %10, align 8
  %64 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FN_SIZECHANGE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %54
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %12, align 8
  %72 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %54
  %75 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %10, align 8
  %76 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FN_CTIMECHANGE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %12, align 8
  %85 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %12, align 8
  %90 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %81, %74
  %93 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %10, align 8
  %94 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FN_MTIMECHANGE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %12, align 8
  %103 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %12, align 8
  %108 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %99, %92
  %111 = load %struct.vnode*, %struct.vnode** %5, align 8
  %112 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %12, align 8
  %113 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %112, i32 0, i32 2
  %114 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %12, align 8
  %115 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.fuse_attr_out*, %struct.fuse_attr_out** %12, align 8
  %118 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.vattr*, %struct.vattr** %6, align 8
  %121 = call i32 @fuse_internal_cache_attrs(%struct.vnode* %111, %struct.TYPE_4__* %113, i32 %116, i32 %119, %struct.vattr* %120)
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.vnode*, %struct.vnode** %5, align 8
  %124 = call i32 @vnode_vtype(%struct.vnode* %123)
  %125 = icmp ne i32 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %110
  %127 = load %struct.vnode*, %struct.vnode** %5, align 8
  %128 = call i32 @fuse_internal_vnode_disappear(%struct.vnode* %127)
  %129 = load i32, i32* @ENOENT, align 4
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %126, %110
  br label %131

131:                                              ; preds = %130, %53
  %132 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %9)
  %133 = load i32, i32* %17, align 4
  ret i32 %133
}

declare dso_local %struct.fuse_vnode_data* @VTOFUD(%struct.vnode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fuse_internal_vnode_disappear(%struct.vnode*) #1

declare dso_local i32 @IFTOVT(i32) #1

declare dso_local i32 @fuse_internal_cache_attrs(%struct.vnode*, %struct.TYPE_4__*, i32, i32, %struct.vattr*) #1

declare dso_local i32 @vnode_vtype(%struct.vnode*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
