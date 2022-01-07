; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mxge_add_maddr_ctx = type { i32, %struct.TYPE_4__* }

@MXGEFW_ENABLE_ALLMULTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed MXGEFW_ENABLE_ALLMULTI, error status: %d\0A\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MXGEFW_LEAVE_ALL_MULTICAST_GROUPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Failed MXGEFW_LEAVE_ALL_MULTICAST_GROUPS, error status: %d\0A\00", align 1
@mxge_add_maddr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed MXGEFW_JOIN_MULTICAST_GROUP, error status:%d\09\00", align 1
@MXGEFW_DISABLE_ALLMULTI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Failed MXGEFW_DISABLE_ALLMULTI, error status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @mxge_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_set_multicast_list(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.mxge_add_maddr_ctx, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = load i32, i32* @MXGEFW_ENABLE_ALLMULTI, align 4
  %18 = call i32 @mxge_send_cmd(%struct.TYPE_4__* %16, i32 %17, i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %82

27:                                               ; preds = %15
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %82

33:                                               ; preds = %27
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %82

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = load i32, i32* @MXGEFW_LEAVE_ALL_MULTICAST_GROUPS, align 4
  %44 = call i32 @mxge_send_cmd(%struct.TYPE_4__* %42, i32 %43, i32* %5)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %82

53:                                               ; preds = %41
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.mxge_add_maddr_ctx, %struct.mxge_add_maddr_ctx* %3, i32 0, i32 1
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %55, align 8
  %56 = getelementptr inbounds %struct.mxge_add_maddr_ctx, %struct.mxge_add_maddr_ctx* %3, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = load i32, i32* @mxge_add_maddr, align 4
  %59 = call i32 @if_foreach_llmaddr(%struct.ifnet* %57, i32 %58, %struct.mxge_add_maddr_ctx* %3)
  %60 = getelementptr inbounds %struct.mxge_add_maddr_ctx, %struct.mxge_add_maddr_ctx* %3, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.mxge_add_maddr_ctx, %struct.mxge_add_maddr_ctx* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %82

70:                                               ; preds = %53
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = load i32, i32* @MXGEFW_DISABLE_ALLMULTI, align 4
  %73 = call i32 @mxge_send_cmd(%struct.TYPE_4__* %71, i32 %72, i32* %5)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %14, %21, %32, %40, %47, %63, %76, %70
  ret void
}

declare dso_local i32 @mxge_send_cmd(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.mxge_add_maddr_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
