; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_nameicap_tracker_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_nameicap_tracker_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i64 }
%struct.nameicap_tracker = type { %struct.vnode* }

@NI_LCF_CAP_DOTDOT = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NI_LCF_BENEATH_ABS = common dso_local global i32 0, align 4
@NI_LCF_BENEATH_LATCHED = common dso_local global i32 0, align 4
@NI_LCF_LATCH = common dso_local global i32 0, align 4
@nt_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@nm_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameidata*, %struct.vnode*)* @nameicap_tracker_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameicap_tracker_add(%struct.nameidata* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.nameicap_tracker*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %6 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %7 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NI_LCF_CAP_DOTDOT, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VDIR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  br label %64

19:                                               ; preds = %12
  %20 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NI_LCF_BENEATH_ABS, align 4
  %24 = load i32, i32* @NI_LCF_BENEATH_LATCHED, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @NI_LCF_BENEATH_ABS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %19
  %30 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %31 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NI_LCF_LATCH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @MPASS(i32 %36)
  %38 = load %struct.vnode*, %struct.vnode** %4, align 8
  %39 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %39, i32 0, i32 2
  %41 = load %struct.vnode*, %struct.vnode** %40, align 8
  %42 = icmp ne %struct.vnode* %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %64

44:                                               ; preds = %29
  %45 = load i32, i32* @NI_LCF_BENEATH_LATCHED, align 4
  %46 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %19
  %51 = load i32, i32* @nt_zone, align 4
  %52 = load i32, i32* @M_WAITOK, align 4
  %53 = call %struct.nameicap_tracker* @uma_zalloc(i32 %51, i32 %52)
  store %struct.nameicap_tracker* %53, %struct.nameicap_tracker** %5, align 8
  %54 = load %struct.vnode*, %struct.vnode** %4, align 8
  %55 = call i32 @vhold(%struct.vnode* %54)
  %56 = load %struct.vnode*, %struct.vnode** %4, align 8
  %57 = load %struct.nameicap_tracker*, %struct.nameicap_tracker** %5, align 8
  %58 = getelementptr inbounds %struct.nameicap_tracker, %struct.nameicap_tracker* %57, i32 0, i32 0
  store %struct.vnode* %56, %struct.vnode** %58, align 8
  %59 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %59, i32 0, i32 1
  %61 = load %struct.nameicap_tracker*, %struct.nameicap_tracker** %5, align 8
  %62 = load i32, i32* @nm_link, align 4
  %63 = call i32 @TAILQ_INSERT_TAIL(i32* %60, %struct.nameicap_tracker* %61, i32 %62)
  br label %64

64:                                               ; preds = %50, %43, %18
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.nameicap_tracker* @uma_zalloc(i32, i32) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.nameicap_tracker*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
