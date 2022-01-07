; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_rename_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_rename_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.componentname = type { i32 }
%struct.mac_lomac = type { i32 }

@lomac_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, %struct.vnode*, %struct.label*, %struct.componentname*)* @lomac_vnode_check_rename_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_vnode_check_rename_from(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, %struct.vnode* %3, %struct.label* %4, %struct.componentname* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.label*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.label*, align 8
  %13 = alloca %struct.componentname*, align 8
  %14 = alloca %struct.mac_lomac*, align 8
  %15 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %8, align 8
  store %struct.vnode* %1, %struct.vnode** %9, align 8
  store %struct.label* %2, %struct.label** %10, align 8
  store %struct.vnode* %3, %struct.vnode** %11, align 8
  store %struct.label* %4, %struct.label** %12, align 8
  store %struct.componentname* %5, %struct.componentname** %13, align 8
  %16 = load i32, i32* @lomac_enabled, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %42

19:                                               ; preds = %6
  %20 = load %struct.ucred*, %struct.ucred** %8, align 8
  %21 = getelementptr inbounds %struct.ucred, %struct.ucred* %20, i32 0, i32 0
  %22 = load %struct.label*, %struct.label** %21, align 8
  %23 = call %struct.mac_lomac* @SLOT(%struct.label* %22)
  store %struct.mac_lomac* %23, %struct.mac_lomac** %14, align 8
  %24 = load %struct.label*, %struct.label** %10, align 8
  %25 = call %struct.mac_lomac* @SLOT(%struct.label* %24)
  store %struct.mac_lomac* %25, %struct.mac_lomac** %15, align 8
  %26 = load %struct.mac_lomac*, %struct.mac_lomac** %14, align 8
  %27 = load %struct.mac_lomac*, %struct.mac_lomac** %15, align 8
  %28 = call i32 @lomac_subject_dominate(%struct.mac_lomac* %26, %struct.mac_lomac* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @EACCES, align 4
  store i32 %31, i32* %7, align 4
  br label %42

32:                                               ; preds = %19
  %33 = load %struct.label*, %struct.label** %12, align 8
  %34 = call %struct.mac_lomac* @SLOT(%struct.label* %33)
  store %struct.mac_lomac* %34, %struct.mac_lomac** %15, align 8
  %35 = load %struct.mac_lomac*, %struct.mac_lomac** %14, align 8
  %36 = load %struct.mac_lomac*, %struct.mac_lomac** %15, align 8
  %37 = call i32 @lomac_subject_dominate(%struct.mac_lomac* %35, %struct.mac_lomac* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EACCES, align 4
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %39, %30, %18
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_subject_dominate(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
