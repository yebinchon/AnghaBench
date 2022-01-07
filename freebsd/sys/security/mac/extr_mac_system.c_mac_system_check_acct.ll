; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_system.c_mac_system_check_acct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_system.c_mac_system_check_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"mac_system_check_acct\00", align 1
@system_check_acct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_system_check_acct(%struct.ucred* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %6 = load %struct.vnode*, %struct.vnode** %4, align 8
  %7 = icmp ne %struct.vnode* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @system_check_acct, align 4
  %13 = load %struct.ucred*, %struct.ucred** %3, align 8
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = icmp ne %struct.vnode* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  br label %22

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32* [ %20, %17 ], [ null, %21 ]
  %24 = call i32 @MAC_POLICY_CHECK(i32 %12, %struct.ucred* %13, %struct.vnode* %14, i32* %23)
  %25 = load i32, i32* @system_check_acct, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ucred*, %struct.ucred** %3, align 8
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = call i32 @MAC_CHECK_PROBE2(i32 %25, i32 %26, %struct.ucred* %27, %struct.vnode* %28)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.ucred*, %struct.vnode*, i32*) #1

declare dso_local i32 @MAC_CHECK_PROBE2(i32, i32, %struct.ucred*, %struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
