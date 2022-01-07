; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_ugidfw_vnode.c_ugidfw_vnode_check_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_ugidfw_vnode.c_ugidfw_vnode_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.componentname = type { i32 }

@MBI_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ugidfw_vnode_check_link(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, %struct.vnode* %3, %struct.label* %4, %struct.componentname* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.label*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.label*, align 8
  %13 = alloca %struct.componentname*, align 8
  %14 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %8, align 8
  store %struct.vnode* %1, %struct.vnode** %9, align 8
  store %struct.label* %2, %struct.label** %10, align 8
  store %struct.vnode* %3, %struct.vnode** %11, align 8
  store %struct.label* %4, %struct.label** %12, align 8
  store %struct.componentname* %5, %struct.componentname** %13, align 8
  %15 = load %struct.ucred*, %struct.ucred** %8, align 8
  %16 = load %struct.vnode*, %struct.vnode** %9, align 8
  %17 = load i32, i32* @MBI_WRITE, align 4
  %18 = call i32 @ugidfw_check_vp(%struct.ucred* %15, %struct.vnode* %16, i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %7, align 4
  br label %33

23:                                               ; preds = %6
  %24 = load %struct.ucred*, %struct.ucred** %8, align 8
  %25 = load %struct.vnode*, %struct.vnode** %11, align 8
  %26 = load i32, i32* @MBI_WRITE, align 4
  %27 = call i32 @ugidfw_check_vp(%struct.ucred* %24, %struct.vnode* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %7, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %30, %21
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @ugidfw_check_vp(%struct.ucred*, %struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
