; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_gig_downshift_workaround_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_gig_downshift_workaround_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"e1000_gig_downshift_workaround_ich8lan\00", align 1
@e1000_ich8lan = common dso_local global i64 0, align 8
@e1000_phy_ife = common dso_local global i64 0, align 8
@E1000_KMRNCTRLSTA_DIAG_OFFSET = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_DIAG_NELPBK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_ich8lan, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_phy_ife, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %1
  br label %47

20:                                               ; preds = %12
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = load i32, i32* @E1000_KMRNCTRLSTA_DIAG_OFFSET, align 4
  %23 = call i64 @e1000_read_kmrn_reg_generic(%struct.e1000_hw* %21, i32 %22, i32* %4)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %47

27:                                               ; preds = %20
  %28 = load i32, i32* @E1000_KMRNCTRLSTA_DIAG_NELPBK, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = load i32, i32* @E1000_KMRNCTRLSTA_DIAG_OFFSET, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @e1000_write_kmrn_reg_generic(%struct.e1000_hw* %31, i32 %32, i32 %33)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %47

38:                                               ; preds = %27
  %39 = load i32, i32* @E1000_KMRNCTRLSTA_DIAG_NELPBK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = load i32, i32* @E1000_KMRNCTRLSTA_DIAG_OFFSET, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @e1000_write_kmrn_reg_generic(%struct.e1000_hw* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %37, %26, %19
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_read_kmrn_reg_generic(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_kmrn_reg_generic(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
