; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_setup_copper_link_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_setup_copper_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"e1000_setup_copper_link_generic\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Forcing Speed and Duplex\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error Forcing Speed and Duplex\0A\00", align 1
@COPPER_LINK_UP_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Valid link established!!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to establish link!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_setup_copper_link_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = call i64 @e1000_copper_link_autoneg(%struct.e1000_hw* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %2, align 8
  br label %63

19:                                               ; preds = %12
  br label %36

20:                                               ; preds = %1
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.1*
  %29 = call i64 %26(%struct.e1000_hw.1* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %2, align 8
  br label %63

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = load i32, i32* @COPPER_LINK_UP_LIMIT, align 4
  %39 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %37, i32 %38, i32 10, i32* %5)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %4, align 8
  store i64 %43, i64* %2, align 8
  br label %63

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %52, align 8
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = bitcast %struct.e1000_hw* %54 to %struct.e1000_hw.0*
  %56 = call i32 %53(%struct.e1000_hw.0* %55)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = call i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %57)
  store i64 %58, i64* %4, align 8
  br label %61

59:                                               ; preds = %44
  %60 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %47
  %62 = load i64, i64* %4, align 8
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %61, %42, %32, %17
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_copper_link_autoneg(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
