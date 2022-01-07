; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_setlabel_extattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_setlabel_extattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@MAC_LOMAC_FLAG_SINGLE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@MAC_LOMAC_EXTATTR_NAMESPACE = common dso_local global i32 0, align 4
@MAC_LOMAC_EXTATTR_NAME = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, %struct.label*)* @lomac_vnode_setlabel_extattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_vnode_setlabel_extattr(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, %struct.label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.mac_lomac*, align 8
  %11 = alloca %struct.mac_lomac, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store %struct.label* %3, %struct.label** %9, align 8
  store i64 4, i64* %12, align 8
  %14 = load i64, i64* %12, align 8
  %15 = call i32 @bzero(%struct.mac_lomac* %11, i64 %14)
  %16 = load %struct.label*, %struct.label** %9, align 8
  %17 = call %struct.mac_lomac* @SLOT(%struct.label* %16)
  store %struct.mac_lomac* %17, %struct.mac_lomac** %10, align 8
  %18 = load %struct.mac_lomac*, %struct.mac_lomac** %10, align 8
  %19 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

25:                                               ; preds = %4
  %26 = load %struct.mac_lomac*, %struct.mac_lomac** %10, align 8
  %27 = call i32 @lomac_copy_single(%struct.mac_lomac* %26, %struct.mac_lomac* %11)
  %28 = load %struct.vnode*, %struct.vnode** %7, align 8
  %29 = load i32, i32* @IO_NODELOCKED, align 4
  %30 = load i32, i32* @MAC_LOMAC_EXTATTR_NAMESPACE, align 4
  %31 = load i32, i32* @MAC_LOMAC_EXTATTR_NAME, align 4
  %32 = load i64, i64* %12, align 8
  %33 = bitcast %struct.mac_lomac* %11 to i8*
  %34 = load i32, i32* @curthread, align 4
  %35 = call i32 @vn_extattr_set(%struct.vnode* %28, i32 %29, i32 %30, i32 %31, i64 %32, i8* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %25, %24
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @bzero(%struct.mac_lomac*, i64) #1

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_copy_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @vn_extattr_set(%struct.vnode*, i32, i32, i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
