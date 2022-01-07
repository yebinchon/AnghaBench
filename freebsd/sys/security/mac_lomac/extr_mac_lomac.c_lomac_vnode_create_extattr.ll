; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_create_extattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_create_extattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.componentname = type { i32 }
%struct.mac_lomac = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MAC_LOMAC_FLAG_AUX = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@MAC_LOMAC_EXTATTR_NAMESPACE = common dso_local global i32 0, align 4
@MAC_LOMAC_EXTATTR_NAME = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.mount*, %struct.label*, %struct.vnode*, %struct.label*, %struct.vnode*, %struct.label*, %struct.componentname*)* @lomac_vnode_create_extattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_vnode_create_extattr(%struct.ucred* %0, %struct.mount* %1, %struct.label* %2, %struct.vnode* %3, %struct.label* %4, %struct.vnode* %5, %struct.label* %6, %struct.componentname* %7) #0 {
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca %struct.label*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.label*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.label*, align 8
  %16 = alloca %struct.componentname*, align 8
  %17 = alloca %struct.mac_lomac*, align 8
  %18 = alloca %struct.mac_lomac*, align 8
  %19 = alloca %struct.mac_lomac*, align 8
  %20 = alloca %struct.mac_lomac, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %9, align 8
  store %struct.mount* %1, %struct.mount** %10, align 8
  store %struct.label* %2, %struct.label** %11, align 8
  store %struct.vnode* %3, %struct.vnode** %12, align 8
  store %struct.label* %4, %struct.label** %13, align 8
  store %struct.vnode* %5, %struct.vnode** %14, align 8
  store %struct.label* %6, %struct.label** %15, align 8
  store %struct.componentname* %7, %struct.componentname** %16, align 8
  store i64 12, i64* %21, align 8
  %23 = load i64, i64* %21, align 8
  %24 = call i32 @bzero(%struct.mac_lomac* %20, i64 %23)
  %25 = load %struct.ucred*, %struct.ucred** %9, align 8
  %26 = getelementptr inbounds %struct.ucred, %struct.ucred* %25, i32 0, i32 0
  %27 = load %struct.label*, %struct.label** %26, align 8
  %28 = call %struct.mac_lomac* @SLOT(%struct.label* %27)
  store %struct.mac_lomac* %28, %struct.mac_lomac** %17, align 8
  %29 = load %struct.label*, %struct.label** %15, align 8
  %30 = call %struct.mac_lomac* @SLOT(%struct.label* %29)
  store %struct.mac_lomac* %30, %struct.mac_lomac** %18, align 8
  %31 = load %struct.label*, %struct.label** %13, align 8
  %32 = call %struct.mac_lomac* @SLOT(%struct.label* %31)
  store %struct.mac_lomac* %32, %struct.mac_lomac** %19, align 8
  %33 = load %struct.mac_lomac*, %struct.mac_lomac** %19, align 8
  %34 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAC_LOMAC_FLAG_AUX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %8
  %40 = load %struct.mac_lomac*, %struct.mac_lomac** %19, align 8
  %41 = call i32 @lomac_copy_auxsingle(%struct.mac_lomac* %40, %struct.mac_lomac* %20)
  %42 = load %struct.mac_lomac*, %struct.mac_lomac** %19, align 8
  %43 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mac_lomac*, %struct.mac_lomac** %19, align 8
  %47 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @lomac_set_single(%struct.mac_lomac* %20, i32 %45, i32 %49)
  br label %54

51:                                               ; preds = %8
  %52 = load %struct.mac_lomac*, %struct.mac_lomac** %17, align 8
  %53 = call i32 @lomac_copy_single(%struct.mac_lomac* %52, %struct.mac_lomac* %20)
  br label %54

54:                                               ; preds = %51, %39
  %55 = load %struct.vnode*, %struct.vnode** %14, align 8
  %56 = load i32, i32* @IO_NODELOCKED, align 4
  %57 = load i32, i32* @MAC_LOMAC_EXTATTR_NAMESPACE, align 4
  %58 = load i32, i32* @MAC_LOMAC_EXTATTR_NAME, align 4
  %59 = load i64, i64* %21, align 8
  %60 = bitcast %struct.mac_lomac* %20 to i8*
  %61 = load i32, i32* @curthread, align 4
  %62 = call i32 @vn_extattr_set(%struct.vnode* %55, i32 %56, i32 %57, i32 %58, i64 %59, i8* %60, i32 %61)
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %22, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load %struct.mac_lomac*, %struct.mac_lomac** %18, align 8
  %67 = call i32 @lomac_copy(%struct.mac_lomac* %20, %struct.mac_lomac* %66)
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* %22, align 4
  ret i32 %69
}

declare dso_local i32 @bzero(%struct.mac_lomac*, i64) #1

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_copy_auxsingle(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_set_single(%struct.mac_lomac*, i32, i32) #1

declare dso_local i32 @lomac_copy_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @vn_extattr_set(%struct.vnode*, i32, i32, i32, i64, i8*, i32) #1

declare dso_local i32 @lomac_copy(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
