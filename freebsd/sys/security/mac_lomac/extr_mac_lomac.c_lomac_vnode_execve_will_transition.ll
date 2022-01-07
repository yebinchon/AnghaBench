; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_execve_will_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_execve_will_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.image_params = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32, i32, i32 }

@lomac_enabled = common dso_local global i32 0, align 4
@revocation_enabled = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_AUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, %struct.label*, %struct.image_params*, %struct.label*)* @lomac_vnode_execve_will_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_vnode_execve_will_transition(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, %struct.label* %3, %struct.image_params* %4, %struct.label* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.label*, align 8
  %11 = alloca %struct.label*, align 8
  %12 = alloca %struct.image_params*, align 8
  %13 = alloca %struct.label*, align 8
  %14 = alloca %struct.mac_lomac*, align 8
  %15 = alloca %struct.mac_lomac*, align 8
  %16 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %8, align 8
  store %struct.vnode* %1, %struct.vnode** %9, align 8
  store %struct.label* %2, %struct.label** %10, align 8
  store %struct.label* %3, %struct.label** %11, align 8
  store %struct.image_params* %4, %struct.image_params** %12, align 8
  store %struct.label* %5, %struct.label** %13, align 8
  %17 = load i32, i32* @lomac_enabled, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @revocation_enabled, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %6
  store i32 0, i32* %7, align 4
  br label %66

23:                                               ; preds = %19
  %24 = load %struct.ucred*, %struct.ucred** %8, align 8
  %25 = getelementptr inbounds %struct.ucred, %struct.ucred* %24, i32 0, i32 0
  %26 = load %struct.label*, %struct.label** %25, align 8
  %27 = call %struct.mac_lomac* @SLOT(%struct.label* %26)
  store %struct.mac_lomac* %27, %struct.mac_lomac** %14, align 8
  %28 = load %struct.label*, %struct.label** %10, align 8
  %29 = call %struct.mac_lomac* @SLOT(%struct.label* %28)
  store %struct.mac_lomac* %29, %struct.mac_lomac** %15, align 8
  %30 = load %struct.label*, %struct.label** %11, align 8
  %31 = icmp ne %struct.label* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.label*, %struct.label** %11, align 8
  %34 = call %struct.mac_lomac* @SLOT(%struct.label* %33)
  br label %37

35:                                               ; preds = %23
  %36 = load %struct.mac_lomac*, %struct.mac_lomac** %15, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi %struct.mac_lomac* [ %34, %32 ], [ %36, %35 ]
  store %struct.mac_lomac* %38, %struct.mac_lomac** %16, align 8
  %39 = load %struct.mac_lomac*, %struct.mac_lomac** %16, align 8
  %40 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAC_LOMAC_FLAG_AUX, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.mac_lomac*, %struct.mac_lomac** %16, align 8
  %47 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %46, i32 0, i32 2
  %48 = load %struct.mac_lomac*, %struct.mac_lomac** %14, align 8
  %49 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %48, i32 0, i32 1
  %50 = call i32 @lomac_dominate_element(i32* %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.mac_lomac*, %struct.mac_lomac** %16, align 8
  %54 = load %struct.mac_lomac*, %struct.mac_lomac** %14, align 8
  %55 = call i64 @lomac_auxsingle_in_range(%struct.mac_lomac* %53, %struct.mac_lomac* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52, %45, %37
  %58 = load %struct.mac_lomac*, %struct.mac_lomac** %15, align 8
  %59 = load %struct.mac_lomac*, %struct.mac_lomac** %14, align 8
  %60 = call i32 @lomac_dominate_single(%struct.mac_lomac* %58, %struct.mac_lomac* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ true, %52 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %22
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_dominate_element(i32*, i32*) #1

declare dso_local i64 @lomac_auxsingle_in_range(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_dominate_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
