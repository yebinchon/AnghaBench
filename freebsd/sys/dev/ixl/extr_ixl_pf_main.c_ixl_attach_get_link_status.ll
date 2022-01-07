; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_attach_get_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_attach_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw, i32 }
%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"link restart failed, aq_err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_attach_get_link_status(%struct.ixl_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  %7 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %8 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %7, i32 0, i32 1
  store %struct.i40e_hw* %8, %struct.i40e_hw** %4, align 8
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 33
  br i1 %22, label %29, label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %46

29:                                               ; preds = %23, %17
  %30 = call i32 @i40e_msec_delay(i32 75)
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @i40e_aq_set_link_restart_an(%struct.i40e_hw* %31, i32 %32, i32* null)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %39 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %55

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %49 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %52 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %53 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %52, i32 0, i32 0
  %54 = call i32 @i40e_get_link_status(%struct.i40e_hw* %51, i32* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %46, %36
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @i40e_aq_set_link_restart_an(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @i40e_get_link_status(%struct.i40e_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
