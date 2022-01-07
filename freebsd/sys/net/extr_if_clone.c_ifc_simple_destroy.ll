; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_clone.c_ifc_simple_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_clone.c_ifc_simple_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32, i32 (%struct.ifnet*)* }
%struct.ifnet = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, %struct.ifnet*)* @ifc_simple_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifc_simple_destroy(%struct.if_clone* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_clone*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.if_clone*, %struct.if_clone** %4, align 8
  %12 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.if_clone*, %struct.if_clone** %4, align 8
  %19 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %18, i32 0, i32 1
  %20 = load i32 (%struct.ifnet*)*, i32 (%struct.ifnet*)** %19, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = call i32 %20(%struct.ifnet* %21)
  %23 = load %struct.if_clone*, %struct.if_clone** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ifc_free_unit(%struct.if_clone* %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %17, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ifc_free_unit(%struct.if_clone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
