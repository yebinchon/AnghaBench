; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_stub/extr_mac_stub.c_stub_vnode_create_extattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_stub/extr_mac_stub.c_stub_vnode_create_extattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.componentname = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.mount*, %struct.label*, %struct.vnode*, %struct.label*, %struct.vnode*, %struct.label*, %struct.componentname*)* @stub_vnode_create_extattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stub_vnode_create_extattr(%struct.ucred* %0, %struct.mount* %1, %struct.label* %2, %struct.vnode* %3, %struct.label* %4, %struct.vnode* %5, %struct.label* %6, %struct.componentname* %7) #0 {
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
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
