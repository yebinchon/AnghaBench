; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_updatemtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_updatemtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.if_mtuinfo = type { i32, %struct.ifnet* }
%struct.rib_head = type { i32, i32 (i32*, i32, %struct.if_mtuinfo.0*)* }
%struct.if_mtuinfo.0 = type opaque

@AF_MAX = common dso_local global i32 0, align 4
@rt_numfibs = common dso_local global i32 0, align 4
@if_updatemtu_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_updatemtu(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.if_mtuinfo, align 8
  %4 = alloca %struct.rib_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.if_mtuinfo, %struct.if_mtuinfo* %3, i32 0, i32 1
  store %struct.ifnet* %7, %struct.ifnet** %8, align 8
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %46, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AF_MAX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @if_getmtu_family(%struct.ifnet* %14, i32 %15)
  %17 = getelementptr inbounds %struct.if_mtuinfo, %struct.if_mtuinfo* %3, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %42, %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @rt_numfibs, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.rib_head* @rt_tables_get_rnh(i32 %23, i32 %24)
  store %struct.rib_head* %25, %struct.rib_head** %4, align 8
  %26 = load %struct.rib_head*, %struct.rib_head** %4, align 8
  %27 = icmp eq %struct.rib_head* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %42

29:                                               ; preds = %22
  %30 = load %struct.rib_head*, %struct.rib_head** %4, align 8
  %31 = call i32 @RIB_WLOCK(%struct.rib_head* %30)
  %32 = load %struct.rib_head*, %struct.rib_head** %4, align 8
  %33 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %32, i32 0, i32 1
  %34 = load i32 (i32*, i32, %struct.if_mtuinfo.0*)*, i32 (i32*, i32, %struct.if_mtuinfo.0*)** %33, align 8
  %35 = load %struct.rib_head*, %struct.rib_head** %4, align 8
  %36 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %35, i32 0, i32 0
  %37 = load i32, i32* @if_updatemtu_cb, align 4
  %38 = bitcast %struct.if_mtuinfo* %3 to %struct.if_mtuinfo.0*
  %39 = call i32 %34(i32* %36, i32 %37, %struct.if_mtuinfo.0* %38)
  %40 = load %struct.rib_head*, %struct.rib_head** %4, align 8
  %41 = call i32 @RIB_WUNLOCK(%struct.rib_head* %40)
  br label %42

42:                                               ; preds = %29, %28
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %18

45:                                               ; preds = %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %9

49:                                               ; preds = %9
  ret void
}

declare dso_local i32 @if_getmtu_family(%struct.ifnet*, i32) #1

declare dso_local %struct.rib_head* @rt_tables_get_rnh(i32, i32) #1

declare dso_local i32 @RIB_WLOCK(%struct.rib_head*) #1

declare dso_local i32 @RIB_WUNLOCK(%struct.rib_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
