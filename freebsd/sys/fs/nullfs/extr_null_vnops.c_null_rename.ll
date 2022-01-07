; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rename_args = type { %struct.vnode*, %struct.vnode*, %struct.vnode*, %struct.vnode* }
%struct.vnode = type { i64 }
%struct.null_node = type { i32 }
%struct.vop_generic_args = type { i32 }

@EXDEV = common dso_local global i32 0, align 4
@NULLV_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rename_args*)* @null_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_rename(%struct.vop_rename_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_rename_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.null_node*, align 8
  store %struct.vop_rename_args* %0, %struct.vop_rename_args** %3, align 8
  %9 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %9, i32 0, i32 3
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %12, i32 0, i32 2
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %5, align 8
  %15 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %15, i32 0, i32 1
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %17, %struct.vnode** %6, align 8
  %18 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %18, i32 0, i32 0
  %20 = load %struct.vnode*, %struct.vnode** %19, align 8
  store %struct.vnode* %20, %struct.vnode** %7, align 8
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %1
  %29 = load %struct.vnode*, %struct.vnode** %7, align 8
  %30 = icmp ne %struct.vnode* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vnode*, %struct.vnode** %7, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %31, %1
  %40 = load %struct.vnode*, %struct.vnode** %4, align 8
  %41 = load %struct.vnode*, %struct.vnode** %7, align 8
  %42 = icmp eq %struct.vnode* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = call i32 @vrele(%struct.vnode* %44)
  br label %49

46:                                               ; preds = %39
  %47 = load %struct.vnode*, %struct.vnode** %4, align 8
  %48 = call i32 @vput(%struct.vnode* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.vnode*, %struct.vnode** %7, align 8
  %51 = icmp ne %struct.vnode* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.vnode*, %struct.vnode** %7, align 8
  %54 = call i32 @vput(%struct.vnode* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.vnode*, %struct.vnode** %6, align 8
  %57 = call i32 @vrele(%struct.vnode* %56)
  %58 = load %struct.vnode*, %struct.vnode** %5, align 8
  %59 = call i32 @vrele(%struct.vnode* %58)
  %60 = load i32, i32* @EXDEV, align 4
  store i32 %60, i32* %2, align 4
  br label %76

61:                                               ; preds = %31, %28
  %62 = load %struct.vnode*, %struct.vnode** %7, align 8
  %63 = icmp ne %struct.vnode* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.vnode*, %struct.vnode** %7, align 8
  %66 = call %struct.null_node* @VTONULL(%struct.vnode* %65)
  store %struct.null_node* %66, %struct.null_node** %8, align 8
  %67 = load i32, i32* @NULLV_DROP, align 4
  %68 = load %struct.null_node*, %struct.null_node** %8, align 8
  %69 = getelementptr inbounds %struct.null_node, %struct.null_node* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %61
  %73 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %74 = bitcast %struct.vop_rename_args* %73 to %struct.vop_generic_args*
  %75 = call i32 @null_bypass(%struct.vop_generic_args* %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %55
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local %struct.null_node* @VTONULL(%struct.vnode*) #1

declare dso_local i32 @null_bypass(%struct.vop_generic_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
