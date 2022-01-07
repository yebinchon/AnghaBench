; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_mac_bsdextended.c_ugidfw_check_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_mac_bsdextended.c_ugidfw_check_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { i32 }

@ugidfw_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ugidfw_check_vp(%struct.ucred* %0, %struct.vnode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vattr, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ugidfw_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

13:                                               ; preds = %3
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = load %struct.ucred*, %struct.ucred** %5, align 8
  %16 = call i32 @VOP_GETATTR(%struct.vnode* %14, %struct.vattr* %9, %struct.ucred* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.ucred*, %struct.ucred** %5, align 8
  %23 = load %struct.vnode*, %struct.vnode** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ugidfw_check(%struct.ucred* %22, %struct.vnode* %23, %struct.vattr* %9, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %19, %12
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @ugidfw_check(%struct.ucred*, %struct.vnode*, %struct.vattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
