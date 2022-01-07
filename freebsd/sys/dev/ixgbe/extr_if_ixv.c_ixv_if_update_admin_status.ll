; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_update_admin_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_update_admin_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 (i32)* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Link is up %d Gbps %s \0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Full Duplex\00", align 1
@LINK_STATE_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Link is Down\0A\00", align 1
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixv_if_update_admin_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_if_update_admin_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.adapter* @iflib_get_softc(i32 %6)
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @iflib_get_dev(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* @TRUE, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 %10, i64* %14, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 3
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 2
  %21 = load i64, i64* @FALSE, align 8
  %22 = call i64 @ixgbe_check_link(%struct.TYPE_5__* %16, i32* %18, i64* %20, i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @IXGBE_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FALSE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load i32, i32* %2, align 4
  %35 = call %struct.TYPE_6__* @iflib_get_ifp(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i32 %37(i32 %38)
  br label %40

40:                                               ; preds = %33, %26, %1
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load i64, i64* @bootverbose, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 128
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 10, i32 1
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %54, %51
  %64 = load i64, i64* @TRUE, align 8
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @LINK_STATE_UP, align 4
  %69 = call i32 @IF_Gbps(i32 10)
  %70 = call i32 @iflib_link_state_change(i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %45
  br label %92

72:                                               ; preds = %40
  %73 = load %struct.adapter*, %struct.adapter** %3, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TRUE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load i64, i64* @bootverbose, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @LINK_STATE_DOWN, align 4
  %87 = call i32 @iflib_link_state_change(i32 %85, i32 %86, i32 0)
  %88 = load i64, i64* @FALSE, align 8
  %89 = load %struct.adapter*, %struct.adapter** %3, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %72
  br label %92

92:                                               ; preds = %91, %71
  %93 = load %struct.adapter*, %struct.adapter** %3, align 8
  %94 = call i32 @ixv_update_stats(%struct.adapter* %93)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i64 @ixgbe_check_link(%struct.TYPE_5__*, i32*, i64*, i64) #1

declare dso_local %struct.TYPE_6__* @iflib_get_ifp(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_link_state_change(i32, i32, i32) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @ixv_update_stats(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
