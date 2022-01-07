; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_do_link_state_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_do_link_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64, i32, i64, i32 (%struct.ifnet*)*, i64, i64, i32*, i32*, i32 }

@IFT_ETHER = common dso_local global i64 0, align 8
@IFT_L2VLAN = common dso_local global i64 0, align 8
@curvnet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"IFNET\00", align 1
@LINK_STATE_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"LINK_UP\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LINK_DOWN\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%d link states coalesced\0A\00", align 1
@log_link_state_change = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"link state changed to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@ifnet_link_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @do_link_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_link_state_change(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ifnet*
  store %struct.ifnet* %8, %struct.ifnet** %5, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @CURVNET_SET(i32 %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = call i32 @rt_ifmsg(%struct.ifnet* %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %24 = call i32 @vlan_link_state_p(%struct.ifnet* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IFT_ETHER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IFT_L2VLAN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31, %25
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ng_ether_link_state_p(%struct.ifnet* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %37, %31
  %47 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %53 = call i32 @carp_linkstate_p(%struct.ifnet* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 4
  %62 = load i32 (%struct.ifnet*)*, i32 (%struct.ifnet*)** %61, align 8
  %63 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %64 = call i32 %62(%struct.ifnet* %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @lagg_linkstate_p(%struct.ifnet* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* @curvnet, align 4
  %76 = call i64 @IS_DEFAULT_VNET(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @LINK_STATE_UP, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %87 = call i32 @devctl_notify(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %81, i8* %86, i32* null)
  br label %88

88:                                               ; preds = %78, %74
  %89 = load i32, i32* %4, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i64, i64* @log_link_state_change, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @LINK_STATE_UP, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %105 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %98, %95
  %107 = load i32, i32* @ifnet_link_event, align 4
  %108 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @EVENTHANDLER_INVOKE(i32 %107, %struct.ifnet* %108, i32 %109)
  %111 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @rt_ifmsg(%struct.ifnet*) #1

declare dso_local i32 @vlan_link_state_p(%struct.ifnet*) #1

declare dso_local i32 @ng_ether_link_state_p(%struct.ifnet*, i32) #1

declare dso_local i32 @carp_linkstate_p(%struct.ifnet*) #1

declare dso_local i32 @lagg_linkstate_p(%struct.ifnet*, i32) #1

declare dso_local i64 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @devctl_notify(i8*, i32, i8*, i32*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, ...) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, %struct.ifnet*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
