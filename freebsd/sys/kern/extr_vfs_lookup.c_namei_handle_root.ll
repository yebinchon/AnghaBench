; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_namei_handle_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_namei_handle_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.vnode*, i32, %struct.componentname }
%struct.vnode = type { i32 }
%struct.componentname = type { i32, i8* }

@NI_LCF_STRICTRELATIVE = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@BENEATH = common dso_local global i32 0, align 4
@NI_LCF_BENEATH_ABS = common dso_local global i32 0, align 4
@NI_LCF_BENEATH_LATCHED = common dso_local global i32 0, align 4
@CAPFAIL_LOOKUP = common dso_local global i32 0, align 4
@KTR_CAPFAIL = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.vnode**)* @namei_handle_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @namei_handle_root(%struct.nameidata* %0, %struct.vnode** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.componentname*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store %struct.vnode** %1, %struct.vnode*** %5, align 8
  %7 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %8 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 3
  store %struct.componentname* %8, %struct.componentname** %6, align 8
  %9 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %10 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NI_LCF_STRICTRELATIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load %struct.componentname*, %struct.componentname** %6, align 8
  %19 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BENEATH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = load i32, i32* @NI_LCF_BENEATH_ABS, align 4
  %26 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @NI_LCF_BENEATH_LATCHED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %33 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %37 = call i32 @nameicap_cleanup(%struct.nameidata* %36, i32 0)
  br label %38

38:                                               ; preds = %24, %17
  br label %39

39:                                               ; preds = %46, %38
  %40 = load %struct.componentname*, %struct.componentname** %6, align 8
  %41 = getelementptr inbounds %struct.componentname, %struct.componentname* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.componentname*, %struct.componentname** %6, align 8
  %48 = getelementptr inbounds %struct.componentname, %struct.componentname* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %48, align 8
  %51 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  br label %39

55:                                               ; preds = %39
  %56 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %56, i32 0, i32 1
  %58 = load %struct.vnode*, %struct.vnode** %57, align 8
  %59 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %58, %struct.vnode** %59, align 8
  %60 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %61 = load %struct.vnode*, %struct.vnode** %60, align 8
  %62 = call i32 @vrefact(%struct.vnode* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @nameicap_cleanup(%struct.nameidata*, i32) #1

declare dso_local i32 @vrefact(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
