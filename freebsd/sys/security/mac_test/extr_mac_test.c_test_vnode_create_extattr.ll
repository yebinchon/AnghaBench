; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_vnode_create_extattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_vnode_create_extattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.componentname = type { i32 }

@MAGIC_CRED = common dso_local global i32 0, align 4
@MAGIC_MOUNT = common dso_local global i32 0, align 4
@MAGIC_VNODE = common dso_local global i32 0, align 4
@vnode_create_extattr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.mount*, %struct.label*, %struct.vnode*, %struct.label*, %struct.vnode*, %struct.label*, %struct.componentname*)* @test_vnode_create_extattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_vnode_create_extattr(%struct.ucred* %0, %struct.mount* %1, %struct.label* %2, %struct.vnode* %3, %struct.label* %4, %struct.vnode* %5, %struct.label* %6, %struct.componentname* %7) #0 {
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca %struct.label*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.label*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.label*, align 8
  %16 = alloca %struct.componentname*, align 8
  store %struct.ucred* %0, %struct.ucred** %9, align 8
  store %struct.mount* %1, %struct.mount** %10, align 8
  store %struct.label* %2, %struct.label** %11, align 8
  store %struct.vnode* %3, %struct.vnode** %12, align 8
  store %struct.label* %4, %struct.label** %13, align 8
  store %struct.vnode* %5, %struct.vnode** %14, align 8
  store %struct.label* %6, %struct.label** %15, align 8
  store %struct.componentname* %7, %struct.componentname** %16, align 8
  %17 = load %struct.ucred*, %struct.ucred** %9, align 8
  %18 = getelementptr inbounds %struct.ucred, %struct.ucred* %17, i32 0, i32 0
  %19 = load %struct.label*, %struct.label** %18, align 8
  %20 = load i32, i32* @MAGIC_CRED, align 4
  %21 = call i32 @LABEL_CHECK(%struct.label* %19, i32 %20)
  %22 = load %struct.label*, %struct.label** %11, align 8
  %23 = load i32, i32* @MAGIC_MOUNT, align 4
  %24 = call i32 @LABEL_CHECK(%struct.label* %22, i32 %23)
  %25 = load %struct.label*, %struct.label** %13, align 8
  %26 = load i32, i32* @MAGIC_VNODE, align 4
  %27 = call i32 @LABEL_CHECK(%struct.label* %25, i32 %26)
  %28 = load i32, i32* @vnode_create_extattr, align 4
  %29 = call i32 @COUNTER_INC(i32 %28)
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
