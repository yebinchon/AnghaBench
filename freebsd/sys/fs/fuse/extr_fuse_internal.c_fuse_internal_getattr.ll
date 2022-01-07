; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vattr = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_getattr(%struct.vnode* %0, %struct.vattr* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.vattr*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.vattr* %1, %struct.vattr** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load %struct.vnode*, %struct.vnode** %6, align 8
  %12 = call %struct.vattr* @VTOVA(%struct.vnode* %11)
  store %struct.vattr* %12, %struct.vattr** %10, align 8
  %13 = icmp ne %struct.vattr* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.vattr*, %struct.vattr** %7, align 8
  %16 = load %struct.vattr*, %struct.vattr** %10, align 8
  %17 = bitcast %struct.vattr* %15 to i8*
  %18 = bitcast %struct.vattr* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.vnode*, %struct.vnode** %6, align 8
  %21 = load %struct.vattr*, %struct.vattr** %7, align 8
  %22 = load %struct.ucred*, %struct.ucred** %8, align 8
  %23 = load %struct.thread*, %struct.thread** %9, align 8
  %24 = call i32 @fuse_internal_do_getattr(%struct.vnode* %20, %struct.vattr* %21, %struct.ucred* %22, %struct.thread* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local %struct.vattr* @VTOVA(%struct.vnode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fuse_internal_do_getattr(%struct.vnode*, %struct.vattr*, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
