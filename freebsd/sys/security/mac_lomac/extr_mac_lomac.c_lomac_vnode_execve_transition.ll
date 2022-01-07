; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_execve_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_execve_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.image_params = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MAC_LOMAC_FLAG_AUX = common dso_local global i32 0, align 4
@lomac_enabled = common dso_local global i64 0, align 8
@revocation_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"executing\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucred*, %struct.ucred*, %struct.vnode*, %struct.label*, %struct.label*, %struct.image_params*, %struct.label*)* @lomac_vnode_execve_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lomac_vnode_execve_transition(%struct.ucred* %0, %struct.ucred* %1, %struct.vnode* %2, %struct.label* %3, %struct.label* %4, %struct.image_params* %5, %struct.label* %6) #0 {
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.label*, align 8
  %12 = alloca %struct.label*, align 8
  %13 = alloca %struct.image_params*, align 8
  %14 = alloca %struct.label*, align 8
  %15 = alloca %struct.mac_lomac*, align 8
  %16 = alloca %struct.mac_lomac*, align 8
  %17 = alloca %struct.mac_lomac*, align 8
  %18 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %8, align 8
  store %struct.ucred* %1, %struct.ucred** %9, align 8
  store %struct.vnode* %2, %struct.vnode** %10, align 8
  store %struct.label* %3, %struct.label** %11, align 8
  store %struct.label* %4, %struct.label** %12, align 8
  store %struct.image_params* %5, %struct.image_params** %13, align 8
  store %struct.label* %6, %struct.label** %14, align 8
  %19 = load %struct.ucred*, %struct.ucred** %8, align 8
  %20 = getelementptr inbounds %struct.ucred, %struct.ucred* %19, i32 0, i32 0
  %21 = load %struct.label*, %struct.label** %20, align 8
  %22 = call %struct.mac_lomac* @SLOT(%struct.label* %21)
  store %struct.mac_lomac* %22, %struct.mac_lomac** %15, align 8
  %23 = load %struct.ucred*, %struct.ucred** %9, align 8
  %24 = getelementptr inbounds %struct.ucred, %struct.ucred* %23, i32 0, i32 0
  %25 = load %struct.label*, %struct.label** %24, align 8
  %26 = call %struct.mac_lomac* @SLOT(%struct.label* %25)
  store %struct.mac_lomac* %26, %struct.mac_lomac** %16, align 8
  %27 = load %struct.label*, %struct.label** %11, align 8
  %28 = call %struct.mac_lomac* @SLOT(%struct.label* %27)
  store %struct.mac_lomac* %28, %struct.mac_lomac** %17, align 8
  %29 = load %struct.label*, %struct.label** %12, align 8
  %30 = icmp ne %struct.label* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load %struct.label*, %struct.label** %12, align 8
  %33 = call %struct.mac_lomac* @SLOT(%struct.label* %32)
  br label %36

34:                                               ; preds = %7
  %35 = load %struct.mac_lomac*, %struct.mac_lomac** %17, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi %struct.mac_lomac* [ %33, %31 ], [ %35, %34 ]
  store %struct.mac_lomac* %37, %struct.mac_lomac** %18, align 8
  %38 = load %struct.mac_lomac*, %struct.mac_lomac** %15, align 8
  %39 = load %struct.mac_lomac*, %struct.mac_lomac** %16, align 8
  %40 = call i32 @lomac_copy(%struct.mac_lomac* %38, %struct.mac_lomac* %39)
  %41 = load %struct.mac_lomac*, %struct.mac_lomac** %18, align 8
  %42 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAC_LOMAC_FLAG_AUX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %36
  %48 = load %struct.mac_lomac*, %struct.mac_lomac** %18, align 8
  %49 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %48, i32 0, i32 1
  %50 = load %struct.mac_lomac*, %struct.mac_lomac** %16, align 8
  %51 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %50, i32 0, i32 2
  %52 = call i32 @lomac_dominate_element(%struct.TYPE_2__* %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %47
  %55 = load %struct.mac_lomac*, %struct.mac_lomac** %18, align 8
  %56 = load %struct.mac_lomac*, %struct.mac_lomac** %16, align 8
  %57 = call i64 @lomac_auxsingle_in_range(%struct.mac_lomac* %55, %struct.mac_lomac* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.mac_lomac*, %struct.mac_lomac** %16, align 8
  %61 = load %struct.mac_lomac*, %struct.mac_lomac** %18, align 8
  %62 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mac_lomac*, %struct.mac_lomac** %18, align 8
  %66 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @lomac_set_single(%struct.mac_lomac* %60, i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %59, %54, %47, %36
  %71 = load i64, i64* @lomac_enabled, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i64, i64* @revocation_enabled, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.mac_lomac*, %struct.mac_lomac** %17, align 8
  %78 = load %struct.mac_lomac*, %struct.mac_lomac** %15, align 8
  %79 = call i32 @lomac_dominate_single(%struct.mac_lomac* %77, %struct.mac_lomac* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.mac_lomac*, %struct.mac_lomac** %15, align 8
  %83 = load %struct.mac_lomac*, %struct.mac_lomac** %17, align 8
  %84 = load %struct.vnode*, %struct.vnode** %10, align 8
  %85 = call i32 @maybe_demote(%struct.mac_lomac* %82, %struct.mac_lomac* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.vnode* %84)
  br label %86

86:                                               ; preds = %81, %76, %73, %70
  ret void
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_copy(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_dominate_element(%struct.TYPE_2__*, i32*) #1

declare dso_local i64 @lomac_auxsingle_in_range(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_set_single(%struct.mac_lomac*, i32, i32) #1

declare dso_local i32 @lomac_dominate_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @maybe_demote(%struct.mac_lomac*, %struct.mac_lomac*, i8*, i8*, %struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
