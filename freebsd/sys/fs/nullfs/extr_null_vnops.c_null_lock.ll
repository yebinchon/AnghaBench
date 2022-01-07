; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_lock1_args = type { i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.null_node = type { i32 }

@LK_INTERLOCK = common dso_local global i32 0, align 4
@LK_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported lock request %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_lock1_args*)* @null_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_lock(%struct.vop_lock1_args* %0) #0 {
  %2 = alloca %struct.vop_lock1_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.null_node*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  store %struct.vop_lock1_args* %0, %struct.vop_lock1_args** %2, align 8
  %8 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %8, i32 0, i32 1
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %3, align 8
  %11 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %12 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LK_INTERLOCK, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = call i32 @VI_LOCK(%struct.vnode* %18)
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @LK_INTERLOCK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %24 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %20, %17
  %28 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %29 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  %31 = load %struct.vnode*, %struct.vnode** %3, align 8
  %32 = call %struct.null_node* @VTONULL(%struct.vnode* %31)
  store %struct.null_node* %32, %struct.null_node** %5, align 8
  %33 = load %struct.null_node*, %struct.null_node** %5, align 8
  %34 = icmp ne %struct.null_node* %33, null
  br i1 %34, label %35, label %86

35:                                               ; preds = %27
  %36 = load %struct.vnode*, %struct.vnode** %3, align 8
  %37 = call %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode* %36)
  store %struct.vnode* %37, %struct.vnode** %6, align 8
  %38 = icmp ne %struct.vnode* %37, null
  br i1 %38, label %39, label %86

39:                                               ; preds = %35
  %40 = load %struct.vnode*, %struct.vnode** %6, align 8
  %41 = call i32 @vholdnz(%struct.vnode* %40)
  %42 = load %struct.vnode*, %struct.vnode** %3, align 8
  %43 = call i32 @VI_UNLOCK(%struct.vnode* %42)
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @VOP_LOCK(%struct.vnode* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.vnode*, %struct.vnode** %3, align 8
  %48 = call %struct.null_node* @VTONULL(%struct.vnode* %47)
  %49 = icmp eq %struct.null_node* %48, null
  br i1 %49, label %50, label %83

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %50
  %54 = load i32, i32* @LK_TYPE_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %57 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @LK_TYPE_MASK, align 4
  %62 = and i32 %60, %61
  switch i32 %62, label %73 [
    i32 129, label %63
    i32 128, label %68
    i32 130, label %68
  ]

63:                                               ; preds = %53
  %64 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %65 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, 129
  store i32 %67, i32* %65, align 8
  br label %78

68:                                               ; preds = %53, %53
  %69 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %70 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, 130
  store i32 %72, i32* %70, align 8
  br label %78

73:                                               ; preds = %53
  %74 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %75 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %68, %63
  %79 = load %struct.vnode*, %struct.vnode** %6, align 8
  %80 = call i32 @VOP_UNLOCK(%struct.vnode* %79, i32 0)
  %81 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %82 = call i32 @vop_stdlock(%struct.vop_lock1_args* %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %78, %50, %39
  %84 = load %struct.vnode*, %struct.vnode** %6, align 8
  %85 = call i32 @vdrop(%struct.vnode* %84)
  br label %91

86:                                               ; preds = %35, %27
  %87 = load %struct.vnode*, %struct.vnode** %3, align 8
  %88 = call i32 @VI_UNLOCK(%struct.vnode* %87)
  %89 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %2, align 8
  %90 = call i32 @vop_stdlock(%struct.vop_lock1_args* %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local %struct.null_node* @VTONULL(%struct.vnode*) #1

declare dso_local %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode*) #1

declare dso_local i32 @vholdnz(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @VOP_LOCK(%struct.vnode*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vop_stdlock(%struct.vop_lock1_args*) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
