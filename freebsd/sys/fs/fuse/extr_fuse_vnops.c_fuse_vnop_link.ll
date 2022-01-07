; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_link_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { i64 }
%struct.fuse_dispatcher = type { %struct.fuse_entry_out* }
%struct.fuse_entry_out = type { i32, i32, i32 }
%struct.fuse_link_in = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@FUSE_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@FUSE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_link_args*)* @fuse_vnop_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_link(%struct.vop_link_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_link_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.fuse_dispatcher, align 8
  %9 = alloca %struct.fuse_entry_out*, align 8
  %10 = alloca %struct.fuse_link_in, align 4
  %11 = alloca i32, align 4
  store %struct.vop_link_args* %0, %struct.vop_link_args** %3, align 8
  %12 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %12, i32 0, i32 2
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %4, align 8
  %15 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %15, i32 0, i32 1
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %17, %struct.vnode** %5, align 8
  %18 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %18, i32 0, i32 0
  %20 = load %struct.componentname*, %struct.componentname** %19, align 8
  store %struct.componentname* %20, %struct.componentname** %6, align 8
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call %struct.vattr* @VTOVA(%struct.vnode* %21)
  store %struct.vattr* %22, %struct.vattr** %7, align 8
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = call i64 @fuse_isdeadfs(%struct.vnode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %88

28:                                               ; preds = %1
  %29 = load %struct.vnode*, %struct.vnode** %5, align 8
  %30 = call i64 @vnode_mount(%struct.vnode* %29)
  %31 = load %struct.vnode*, %struct.vnode** %4, align 8
  %32 = call i64 @vnode_mount(%struct.vnode* %31)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EXDEV, align 4
  store i32 %35, i32* %2, align 4
  br label %88

36:                                               ; preds = %28
  %37 = load %struct.vattr*, %struct.vattr** %7, align 8
  %38 = icmp ne %struct.vattr* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.vattr*, %struct.vattr** %7, align 8
  %41 = getelementptr inbounds %struct.vattr, %struct.vattr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FUSE_LINK_MAX, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EMLINK, align 4
  store i32 %46, i32* %2, align 4
  br label %88

47:                                               ; preds = %39, %36
  %48 = load %struct.vnode*, %struct.vnode** %4, align 8
  %49 = call i32 @VTOI(%struct.vnode* %48)
  %50 = getelementptr inbounds %struct.fuse_link_in, %struct.fuse_link_in* %10, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = call i32 @fdisp_init(%struct.fuse_dispatcher* %8, i32 0)
  %52 = load %struct.vnode*, %struct.vnode** %5, align 8
  %53 = call i64 @vnode_mount(%struct.vnode* %52)
  %54 = load %struct.vnode*, %struct.vnode** %5, align 8
  %55 = call i32 @VTOI(%struct.vnode* %54)
  %56 = load %struct.componentname*, %struct.componentname** %6, align 8
  %57 = load i32, i32* @FUSE_LINK, align 4
  %58 = call i32 @fuse_internal_newentry_makerequest(i64 %53, i32 %55, %struct.componentname* %56, i32 %57, %struct.fuse_link_in* %10, i32 4, %struct.fuse_dispatcher* %8)
  %59 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %8)
  store i32 %59, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %85

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %8, i32 0, i32 0
  %64 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %63, align 8
  store %struct.fuse_entry_out* %64, %struct.fuse_entry_out** %9, align 8
  %65 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %66 = load %struct.vnode*, %struct.vnode** %4, align 8
  %67 = call i32 @vnode_vtype(%struct.vnode* %66)
  %68 = call i32 @fuse_internal_checkentry(%struct.fuse_entry_out* %65, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %62
  %72 = load %struct.vnode*, %struct.vnode** %5, align 8
  %73 = call i32 @fuse_vnode_clear_attr_cache(%struct.vnode* %72)
  %74 = load %struct.vnode*, %struct.vnode** %4, align 8
  %75 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %76 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %75, i32 0, i32 2
  %77 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %78 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %81 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fuse_internal_cache_attrs(%struct.vnode* %74, i32* %76, i32 %79, i32 %82, i32* null)
  br label %84

84:                                               ; preds = %71, %62
  br label %85

85:                                               ; preds = %84, %61
  %86 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %8)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %45, %34, %26
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.vattr* @VTOVA(%struct.vnode*) #1

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i64 @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @VTOI(%struct.vnode*) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fuse_internal_newentry_makerequest(i64, i32, %struct.componentname*, i32, %struct.fuse_link_in*, i32, %struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fuse_internal_checkentry(%struct.fuse_entry_out*, i32) #1

declare dso_local i32 @vnode_vtype(%struct.vnode*) #1

declare dso_local i32 @fuse_vnode_clear_attr_cache(%struct.vnode*) #1

declare dso_local i32 @fuse_internal_cache_attrs(%struct.vnode*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
