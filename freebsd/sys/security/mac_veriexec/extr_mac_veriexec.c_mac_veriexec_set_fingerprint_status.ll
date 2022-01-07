; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_set_fingerprint_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_set_fingerprint_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_veriexec_set_fingerprint_status(%struct.vnode* %0, i32 %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = getelementptr inbounds %struct.vnode, %struct.vnode* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @strcmp(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.vnode*, %struct.vnode** %3, align 8
  %13 = call %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode* %12)
  store %struct.vnode* %13, %struct.vnode** %5, align 8
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = load i32, i32* %4, align 4
  call void @mac_veriexec_set_fingerprint_status(%struct.vnode* %14, i32 %15)
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.vnode*, %struct.vnode** %3, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SLOT_SET(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %11
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode*) #1

declare dso_local i32 @SLOT_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
