; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.ipv6cp = type { i32, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32 }
%struct.bundle = type { i32 }
%struct.link = type { i32 }
%struct.fsm_parent = type { i32 }

@ipv6cp_Init.timer_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [15 x i8] c"IPV6CP restart\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"IPV6CP openmode\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"IPV6CP stopped\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"IPV6CP\00", align 1
@PROTO_IPV6CP = common dso_local global i32 0, align 4
@IPV6CP_MAXCODE = common dso_local global i32 0, align 4
@LogIPV6CP = common dso_local global i32 0, align 4
@ipv6cp_Callbacks = common dso_local global i32 0, align 4
@DEF_FSMRETRY = common dso_local global i32 0, align 4
@DEF_FSMTRIES = common dso_local global i8* null, align 8
@IPV6CP_IFIDLEN = common dso_local global i32 0, align 4
@probe = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SAMPLE_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6cp_Init(%struct.ipv6cp* %0, %struct.bundle* %1, %struct.link* %2, %struct.fsm_parent* %3) #0 {
  %5 = alloca %struct.ipv6cp*, align 8
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca %struct.link*, align 8
  %8 = alloca %struct.fsm_parent*, align 8
  %9 = alloca i32, align 4
  store %struct.ipv6cp* %0, %struct.ipv6cp** %5, align 8
  store %struct.bundle* %1, %struct.bundle** %6, align 8
  store %struct.link* %2, %struct.link** %7, align 8
  store %struct.fsm_parent* %3, %struct.fsm_parent** %8, align 8
  %10 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %11 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %10, i32 0, i32 5
  %12 = load i32, i32* @PROTO_IPV6CP, align 4
  %13 = load i32, i32* @IPV6CP_MAXCODE, align 4
  %14 = load i32, i32* @LogIPV6CP, align 4
  %15 = load %struct.bundle*, %struct.bundle** %6, align 8
  %16 = load %struct.link*, %struct.link** %7, align 8
  %17 = load %struct.fsm_parent*, %struct.fsm_parent** %8, align 8
  %18 = call i32 @fsm_Init(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %12, i32 1, i32 %13, i32 %14, %struct.bundle* %15, %struct.link* %16, %struct.fsm_parent* %17, i32* @ipv6cp_Callbacks, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @ipv6cp_Init.timer_names, i64 0, i64 0))
  %19 = load i32, i32* @DEF_FSMRETRY, align 4
  %20 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %21 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 8
  %24 = load i8*, i8** @DEF_FSMTRIES, align 8
  %25 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %26 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %24, i8** %28, align 8
  %29 = load i8*, i8** @DEF_FSMTRIES, align 8
  %30 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %31 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  %34 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %35 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @SetInterfaceID(i32 %36, i32 0)
  br label %38

38:                                               ; preds = %43, %4
  %39 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %40 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SetInterfaceID(i32 %41, i32 1)
  br label %43

43:                                               ; preds = %38
  %44 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %45 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %48 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %51 = call i64 @memcmp(i32 %46, i32 %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %38, label %53

53:                                               ; preds = %43
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @probe, i32 0, i32 0), align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %53
  store i32 100, i32* %9, align 4
  br label %57

57:                                               ; preds = %96, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %62 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %63 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %66 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ipcp_SetIPv6address(%struct.ipv6cp* %61, i32 %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %60, %57
  %72 = phi i1 [ false, %57 ], [ %70, %60 ]
  br i1 %72, label %73, label %97

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %94, %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  %77 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %78 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @SetInterfaceID(i32 %79, i32 1)
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %86 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %89 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %92 = call i64 @memcmp(i32 %87, i32 %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  br label %94

94:                                               ; preds = %84, %81
  %95 = phi i1 [ false, %81 ], [ %93, %84 ]
  br i1 %95, label %74, label %96

96:                                               ; preds = %94
  br label %57

97:                                               ; preds = %71
  br label %98

98:                                               ; preds = %97, %53
  %99 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %100 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %99, i32 0, i32 1
  %101 = load i32, i32* @SAMPLE_PERIOD, align 4
  %102 = call i32 @throughput_init(i32* %100, i32 %101)
  %103 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %104 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memset(i32 %105, i8 signext 0, i32 4)
  %107 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %108 = call i32 @ipv6cp_Setup(%struct.ipv6cp* %107)
  ret void
}

declare dso_local i32 @fsm_Init(i32*, i8*, i32, i32, i32, i32, %struct.bundle*, %struct.link*, %struct.fsm_parent*, i32*, i8**) #1

declare dso_local i32 @SetInterfaceID(i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ipcp_SetIPv6address(%struct.ipv6cp*, i32, i32) #1

declare dso_local i32 @throughput_init(i32*, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @ipv6cp_Setup(%struct.ipv6cp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
