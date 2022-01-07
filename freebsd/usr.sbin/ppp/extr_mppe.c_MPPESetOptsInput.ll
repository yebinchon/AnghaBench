; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPESetOptsInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPESetOptsInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32 }
%struct.fsm_opt = type { i32 }
%struct.ccp_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@MODE_ACK = common dso_local global i32 0, align 4
@MPPE_MasterKeyValid = common dso_local global i32 0, align 4
@MODE_NAK = common dso_local global i32 0, align 4
@MPPE_OPT_MASK = common dso_local global i32 0, align 4
@MPPE_OPT_STATELESS = common dso_local global i32 0, align 4
@MPPE_STATEFUL = common dso_local global i64 0, align 8
@MPPE_STATELESS = common dso_local global i64 0, align 8
@MPPE_OPT_BITMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bundle*, %struct.fsm_opt*, %struct.ccp_config*)* @MPPESetOptsInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPPESetOptsInput(%struct.bundle* %0, %struct.fsm_opt* %1, %struct.ccp_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.fsm_opt*, align 8
  %7 = alloca %struct.ccp_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store %struct.fsm_opt* %1, %struct.fsm_opt** %6, align 8
  store %struct.ccp_config* %2, %struct.ccp_config** %7, align 8
  %11 = load i32, i32* @MODE_ACK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %13 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ua_ntohl(i32 %14, i32* %9)
  %16 = load i32, i32* @MPPE_MasterKeyValid, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  %22 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %23 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ua_htonl(i32* %9, i32 %24)
  %26 = load i32, i32* @MODE_NAK, align 4
  store i32 %26, i32* %4, align 4
  br label %137

27:                                               ; preds = %18
  %28 = load i32, i32* @MODE_ACK, align 4
  store i32 %28, i32* %4, align 4
  br label %137

29:                                               ; preds = %3
  %30 = load %struct.bundle*, %struct.bundle** %5, align 8
  %31 = load %struct.ccp_config*, %struct.ccp_config** %7, align 8
  %32 = call i32 @MPPE_ConfigVal(%struct.bundle* %30, %struct.ccp_config* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MPPE_OPT_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @MODE_NAK, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @MPPE_OPT_STATELESS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.ccp_config*, %struct.ccp_config** %7, align 8
  %47 = getelementptr inbounds %struct.ccp_config, %struct.ccp_config* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MPPE_STATEFUL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @MODE_NAK, align 4
  store i32 %53, i32* %10, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @MPPE_OPT_STATELESS, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %52
  br label %74

59:                                               ; preds = %40
  %60 = load %struct.ccp_config*, %struct.ccp_config** %7, align 8
  %61 = getelementptr inbounds %struct.ccp_config, %struct.ccp_config* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MPPE_STATELESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @MODE_NAK, align 4
  store i32 %67, i32* %10, align 4
  br label %73

68:                                               ; preds = %59
  %69 = load i32, i32* @MPPE_OPT_STATELESS, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %68, %66
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.ccp_config*, %struct.ccp_config** %7, align 8
  %76 = getelementptr inbounds %struct.ccp_config, %struct.ccp_config* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %82 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ua_htonl(i32* %8, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  br label %92

90:                                               ; preds = %80
  %91 = load i32, i32* @MODE_NAK, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* %4, align 4
  br label %137

94:                                               ; preds = %74
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @MPPE_OPT_BITMASK, align 4
  %97 = and i32 %95, %96
  switch i32 %97, label %99 [
    i32 130, label %98
    i32 128, label %98
    i32 129, label %98
  ]

98:                                               ; preds = %94, %94, %94
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @MODE_NAK, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32, i32* @MPPE_OPT_BITMASK, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, 130
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, 130
  store i32 %111, i32* %8, align 4
  br label %131

112:                                              ; preds = %101
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, 128
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, 128
  store i32 %118, i32* %8, align 4
  br label %130

119:                                              ; preds = %112
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 129
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, 129
  store i32 %125, i32* %8, align 4
  br label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, 130
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %129, %116
  br label %131

131:                                              ; preds = %130, %109
  %132 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %133 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ua_htonl(i32* %8, i32 %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %131, %92, %27, %21
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @ua_ntohl(i32, i32*) #1

declare dso_local i32 @ua_htonl(i32*, i32) #1

declare dso_local i32 @MPPE_ConfigVal(%struct.bundle*, %struct.ccp_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
