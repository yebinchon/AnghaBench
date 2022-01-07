; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_rename_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_rename_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.componentname = type { i32 }
%struct.mac_lomac = type { i32 }

@lomac_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, %struct.vnode*, %struct.label*, i32, %struct.componentname*)* @lomac_vnode_check_rename_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_vnode_check_rename_to(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, %struct.vnode* %3, %struct.label* %4, i32 %5, %struct.componentname* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.label*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.label*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.componentname*, align 8
  %16 = alloca %struct.mac_lomac*, align 8
  %17 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %9, align 8
  store %struct.vnode* %1, %struct.vnode** %10, align 8
  store %struct.label* %2, %struct.label** %11, align 8
  store %struct.vnode* %3, %struct.vnode** %12, align 8
  store %struct.label* %4, %struct.label** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.componentname* %6, %struct.componentname** %15, align 8
  %18 = load i32, i32* @lomac_enabled, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %48

21:                                               ; preds = %7
  %22 = load %struct.ucred*, %struct.ucred** %9, align 8
  %23 = getelementptr inbounds %struct.ucred, %struct.ucred* %22, i32 0, i32 0
  %24 = load %struct.label*, %struct.label** %23, align 8
  %25 = call %struct.mac_lomac* @SLOT(%struct.label* %24)
  store %struct.mac_lomac* %25, %struct.mac_lomac** %16, align 8
  %26 = load %struct.label*, %struct.label** %11, align 8
  %27 = call %struct.mac_lomac* @SLOT(%struct.label* %26)
  store %struct.mac_lomac* %27, %struct.mac_lomac** %17, align 8
  %28 = load %struct.mac_lomac*, %struct.mac_lomac** %16, align 8
  %29 = load %struct.mac_lomac*, %struct.mac_lomac** %17, align 8
  %30 = call i32 @lomac_subject_dominate(%struct.mac_lomac* %28, %struct.mac_lomac* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @EACCES, align 4
  store i32 %33, i32* %8, align 4
  br label %48

34:                                               ; preds = %21
  %35 = load %struct.vnode*, %struct.vnode** %12, align 8
  %36 = icmp ne %struct.vnode* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.label*, %struct.label** %13, align 8
  %39 = call %struct.mac_lomac* @SLOT(%struct.label* %38)
  store %struct.mac_lomac* %39, %struct.mac_lomac** %17, align 8
  %40 = load %struct.mac_lomac*, %struct.mac_lomac** %16, align 8
  %41 = load %struct.mac_lomac*, %struct.mac_lomac** %17, align 8
  %42 = call i32 @lomac_subject_dominate(%struct.mac_lomac* %40, %struct.mac_lomac* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EACCES, align 4
  store i32 %45, i32* %8, align 4
  br label %48

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %34
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %44, %32, %20
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_subject_dominate(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
