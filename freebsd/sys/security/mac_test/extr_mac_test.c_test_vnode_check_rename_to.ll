; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_vnode_check_rename_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_vnode_check_rename_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.componentname = type { i32 }

@MAGIC_CRED = common dso_local global i32 0, align 4
@MAGIC_VNODE = common dso_local global i32 0, align 4
@vnode_check_rename_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, %struct.vnode*, %struct.label*, i32, %struct.componentname*)* @test_vnode_check_rename_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_vnode_check_rename_to(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, %struct.vnode* %3, %struct.label* %4, i32 %5, %struct.componentname* %6) #0 {
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.label*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.label*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.componentname*, align 8
  store %struct.ucred* %0, %struct.ucred** %8, align 8
  store %struct.vnode* %1, %struct.vnode** %9, align 8
  store %struct.label* %2, %struct.label** %10, align 8
  store %struct.vnode* %3, %struct.vnode** %11, align 8
  store %struct.label* %4, %struct.label** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.componentname* %6, %struct.componentname** %14, align 8
  %15 = load %struct.ucred*, %struct.ucred** %8, align 8
  %16 = getelementptr inbounds %struct.ucred, %struct.ucred* %15, i32 0, i32 0
  %17 = load %struct.label*, %struct.label** %16, align 8
  %18 = load i32, i32* @MAGIC_CRED, align 4
  %19 = call i32 @LABEL_CHECK(%struct.label* %17, i32 %18)
  %20 = load %struct.label*, %struct.label** %10, align 8
  %21 = load i32, i32* @MAGIC_VNODE, align 4
  %22 = call i32 @LABEL_CHECK(%struct.label* %20, i32 %21)
  %23 = load %struct.label*, %struct.label** %12, align 8
  %24 = load i32, i32* @MAGIC_VNODE, align 4
  %25 = call i32 @LABEL_CHECK(%struct.label* %23, i32 %24)
  %26 = load i32, i32* @vnode_check_rename_to, align 4
  %27 = call i32 @COUNTER_INC(i32 %26)
  ret i32 0
}

declare dso_local i32 @LABEL_CHECK(%struct.label*, i32) #1

declare dso_local i32 @COUNTER_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
