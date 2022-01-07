; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_setowner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_setowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@lomac_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, i32, i32)* @lomac_vnode_check_setowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_vnode_check_setowner(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mac_lomac*, align 8
  %13 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store %struct.label* %2, %struct.label** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @lomac_enabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %31

17:                                               ; preds = %5
  %18 = load %struct.ucred*, %struct.ucred** %7, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 0
  %20 = load %struct.label*, %struct.label** %19, align 8
  %21 = call %struct.mac_lomac* @SLOT(%struct.label* %20)
  store %struct.mac_lomac* %21, %struct.mac_lomac** %12, align 8
  %22 = load %struct.label*, %struct.label** %9, align 8
  %23 = call %struct.mac_lomac* @SLOT(%struct.label* %22)
  store %struct.mac_lomac* %23, %struct.mac_lomac** %13, align 8
  %24 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %25 = load %struct.mac_lomac*, %struct.mac_lomac** %13, align 8
  %26 = call i32 @lomac_subject_dominate(%struct.mac_lomac* %24, %struct.mac_lomac* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @EACCES, align 4
  store i32 %29, i32* %6, align 4
  br label %31

30:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %28, %16
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_subject_dominate(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
