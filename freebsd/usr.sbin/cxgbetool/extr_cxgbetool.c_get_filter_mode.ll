; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_get_filter_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_get_filter_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHELSIO_T4_GET_FILTER_MODE = common dso_local global i32 0, align 4
@T4_FILTER_IPv4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ipv4 \00", align 1
@T4_FILTER_IPv6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ipv6 \00", align 1
@T4_FILTER_IP_SADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sip \00", align 1
@T4_FILTER_IP_DADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"dip \00", align 1
@T4_FILTER_IP_SPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"sport \00", align 1
@T4_FILTER_IP_DPORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"dport \00", align 1
@T4_FILTER_IP_FRAGMENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"frag \00", align 1
@T4_FILTER_MPS_HIT_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"matchtype \00", align 1
@T4_FILTER_MAC_IDX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"macidx \00", align 1
@T4_FILTER_ETH_TYPE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"ethtype \00", align 1
@T4_FILTER_IP_PROTO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"proto \00", align 1
@T4_FILTER_IP_TOS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"tos \00", align 1
@T4_FILTER_VLAN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"vlan \00", align 1
@T4_FILTER_VNIC = common dso_local global i32 0, align 4
@T4_FILTER_IC_VNIC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"vnic_id \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ovlan \00", align 1
@T4_FILTER_PORT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"iport \00", align 1
@T4_FILTER_FCoE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"fcoe \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_filter_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_filter_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @CHELSIO_T4_GET_FILTER_MODE, align 4
  %8 = call i32 @doit(i32 %7, i32* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %135

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @T4_FILTER_IPv4, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @T4_FILTER_IPv6, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @T4_FILTER_IP_SADDR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @T4_FILTER_IP_DADDR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @T4_FILTER_IP_SPORT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @T4_FILTER_IP_DPORT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @T4_FILTER_IP_FRAGMENT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @T4_FILTER_MPS_HIT_TYPE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @T4_FILTER_MAC_IDX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @T4_FILTER_ETH_TYPE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @T4_FILTER_IP_PROTO, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @T4_FILTER_IP_TOS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @T4_FILTER_VLAN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @T4_FILTER_VNIC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @T4_FILTER_IC_VNIC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %118

116:                                              ; preds = %109
  %117 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %114
  br label %119

119:                                              ; preds = %118, %104
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @T4_FILTER_PORT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %119
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @T4_FILTER_FCoE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %126
  %134 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %11
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @doit(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
