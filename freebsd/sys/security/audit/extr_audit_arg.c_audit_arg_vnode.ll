; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i32 }
%struct.vnode_au_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vattr = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"audit_arg_vnode\00", align 1
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode_au_info*)* @audit_arg_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_arg_vnode(%struct.vnode* %0, %struct.vnode_au_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode_au_info*, align 8
  %6 = alloca %struct.vattr, align 4
  %7 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.vnode_au_info* %1, %struct.vnode_au_info** %5, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @VOP_GETATTR(%struct.vnode* %10, %struct.vattr* %6, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vnode_au_info*, %struct.vnode_au_info** %5, align 8
  %23 = getelementptr inbounds %struct.vnode_au_info, %struct.vnode_au_info* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vnode_au_info*, %struct.vnode_au_info** %5, align 8
  %27 = getelementptr inbounds %struct.vnode_au_info, %struct.vnode_au_info* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vnode_au_info*, %struct.vnode_au_info** %5, align 8
  %31 = getelementptr inbounds %struct.vnode_au_info, %struct.vnode_au_info* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vnode_au_info*, %struct.vnode_au_info** %5, align 8
  %35 = getelementptr inbounds %struct.vnode_au_info, %struct.vnode_au_info* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vnode_au_info*, %struct.vnode_au_info** %5, align 8
  %39 = getelementptr inbounds %struct.vnode_au_info, %struct.vnode_au_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vnode_au_info*, %struct.vnode_au_info** %5, align 8
  %43 = getelementptr inbounds %struct.vnode_au_info, %struct.vnode_au_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vnode_au_info*, %struct.vnode_au_info** %5, align 8
  %47 = getelementptr inbounds %struct.vnode_au_info, %struct.vnode_au_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %19, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
