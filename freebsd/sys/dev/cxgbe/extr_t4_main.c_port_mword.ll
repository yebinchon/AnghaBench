; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_port_mword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_port_mword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32 }

@M_FW_PORT_CAP32_SPEED = common dso_local global i32 0, align 4
@IFM_100_T = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@IFM_10G_KX4 = common dso_local global i32 0, align 4
@IFM_10G_CX4 = common dso_local global i32 0, align 4
@IFM_1000_KX = common dso_local global i32 0, align 4
@IFM_10G_KR = common dso_local global i32 0, align 4
@IFM_25G_KR = common dso_local global i32 0, align 4
@IFM_40G_KR4 = common dso_local global i32 0, align 4
@IFM_50G_KR2 = common dso_local global i32 0, align 4
@IFM_100G_KR4 = common dso_local global i32 0, align 4
@IFM_1000_LX = common dso_local global i32 0, align 4
@IFM_10G_LR = common dso_local global i32 0, align 4
@IFM_25G_LR = common dso_local global i32 0, align 4
@IFM_40G_LR4 = common dso_local global i32 0, align 4
@IFM_50G_LR2 = common dso_local global i32 0, align 4
@IFM_100G_LR4 = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_25G_SR = common dso_local global i32 0, align 4
@IFM_40G_SR4 = common dso_local global i32 0, align 4
@IFM_50G_SR2 = common dso_local global i32 0, align 4
@IFM_100G_SR4 = common dso_local global i32 0, align 4
@IFM_10G_ER = common dso_local global i32 0, align 4
@IFM_1000_CX = common dso_local global i32 0, align 4
@IFM_10G_TWINAX = common dso_local global i32 0, align 4
@IFM_25G_CR = common dso_local global i32 0, align 4
@IFM_40G_CR4 = common dso_local global i32 0, align 4
@IFM_50G_CR2 = common dso_local global i32 0, align 4
@IFM_100G_CR4 = common dso_local global i32 0, align 4
@IFM_10G_LRM = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@IFM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*, i32)* @port_mword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_mword(%struct.port_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @M_FW_PORT_CAP32_SPEED, align 4
  %8 = and i32 %6, %7
  %9 = call i32 @MPASS(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @powerof2(i32 %10)
  %12 = call i32 @MPASS(i32 %11)
  %13 = load %struct.port_info*, %struct.port_info** %4, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %127 [
    i32 148, label %16
    i32 146, label %16
    i32 147, label %16
    i32 134, label %25
    i32 142, label %31
    i32 135, label %37
    i32 139, label %43
    i32 149, label %43
    i32 150, label %43
    i32 151, label %43
    i32 138, label %43
    i32 137, label %43
    i32 136, label %43
    i32 140, label %58
    i32 141, label %58
    i32 129, label %58
    i32 130, label %58
    i32 132, label %58
    i32 131, label %58
    i32 144, label %58
    i32 143, label %58
    i32 145, label %58
    i32 128, label %58
    i32 133, label %125
  ]

16:                                               ; preds = %2, %2, %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %24 [
    i32 168, label %18
    i32 166, label %20
    i32 167, label %22
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @IFM_100_T, align 4
  store i32 %19, i32* %3, align 4
  br label %129

20:                                               ; preds = %16
  %21 = load i32, i32* @IFM_1000_T, align 4
  store i32 %21, i32* %3, align 4
  br label %129

22:                                               ; preds = %16
  %23 = load i32, i32* @IFM_10G_T, align 4
  store i32 %23, i32* %3, align 4
  br label %129

24:                                               ; preds = %16
  br label %127

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 167
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @IFM_10G_KX4, align 4
  store i32 %29, i32* %3, align 4
  br label %129

30:                                               ; preds = %25
  br label %127

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 167
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @IFM_10G_CX4, align 4
  store i32 %35, i32* %3, align 4
  br label %129

36:                                               ; preds = %31
  br label %127

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 166
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @IFM_1000_KX, align 4
  store i32 %41, i32* %3, align 4
  br label %129

42:                                               ; preds = %37
  br label %127

43:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %57 [
    i32 166, label %45
    i32 167, label %47
    i32 165, label %49
    i32 164, label %51
    i32 163, label %53
    i32 169, label %55
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @IFM_1000_KX, align 4
  store i32 %46, i32* %3, align 4
  br label %129

47:                                               ; preds = %43
  %48 = load i32, i32* @IFM_10G_KR, align 4
  store i32 %48, i32* %3, align 4
  br label %129

49:                                               ; preds = %43
  %50 = load i32, i32* @IFM_25G_KR, align 4
  store i32 %50, i32* %3, align 4
  br label %129

51:                                               ; preds = %43
  %52 = load i32, i32* @IFM_40G_KR4, align 4
  store i32 %52, i32* %3, align 4
  br label %129

53:                                               ; preds = %43
  %54 = load i32, i32* @IFM_50G_KR2, align 4
  store i32 %54, i32* %3, align 4
  br label %129

55:                                               ; preds = %43
  %56 = load i32, i32* @IFM_100G_KR4, align 4
  store i32 %56, i32* %3, align 4
  br label %129

57:                                               ; preds = %43
  br label %127

58:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %59 = load %struct.port_info*, %struct.port_info** %4, align 8
  %60 = getelementptr inbounds %struct.port_info, %struct.port_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %124 [
    i32 160, label %62
    i32 155, label %77
    i32 162, label %92
    i32 153, label %98
    i32 154, label %98
    i32 159, label %113
    i32 158, label %119
    i32 161, label %121
    i32 152, label %121
    i32 156, label %121
    i32 157, label %122
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  switch i32 %63, label %76 [
    i32 166, label %64
    i32 167, label %66
    i32 165, label %68
    i32 164, label %70
    i32 163, label %72
    i32 169, label %74
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @IFM_1000_LX, align 4
  store i32 %65, i32* %3, align 4
  br label %129

66:                                               ; preds = %62
  %67 = load i32, i32* @IFM_10G_LR, align 4
  store i32 %67, i32* %3, align 4
  br label %129

68:                                               ; preds = %62
  %69 = load i32, i32* @IFM_25G_LR, align 4
  store i32 %69, i32* %3, align 4
  br label %129

70:                                               ; preds = %62
  %71 = load i32, i32* @IFM_40G_LR4, align 4
  store i32 %71, i32* %3, align 4
  br label %129

72:                                               ; preds = %62
  %73 = load i32, i32* @IFM_50G_LR2, align 4
  store i32 %73, i32* %3, align 4
  br label %129

74:                                               ; preds = %62
  %75 = load i32, i32* @IFM_100G_LR4, align 4
  store i32 %75, i32* %3, align 4
  br label %129

76:                                               ; preds = %62
  br label %124

77:                                               ; preds = %58
  %78 = load i32, i32* %5, align 4
  switch i32 %78, label %91 [
    i32 166, label %79
    i32 167, label %81
    i32 165, label %83
    i32 164, label %85
    i32 163, label %87
    i32 169, label %89
  ]

79:                                               ; preds = %77
  %80 = load i32, i32* @IFM_1000_SX, align 4
  store i32 %80, i32* %3, align 4
  br label %129

81:                                               ; preds = %77
  %82 = load i32, i32* @IFM_10G_SR, align 4
  store i32 %82, i32* %3, align 4
  br label %129

83:                                               ; preds = %77
  %84 = load i32, i32* @IFM_25G_SR, align 4
  store i32 %84, i32* %3, align 4
  br label %129

85:                                               ; preds = %77
  %86 = load i32, i32* @IFM_40G_SR4, align 4
  store i32 %86, i32* %3, align 4
  br label %129

87:                                               ; preds = %77
  %88 = load i32, i32* @IFM_50G_SR2, align 4
  store i32 %88, i32* %3, align 4
  br label %129

89:                                               ; preds = %77
  %90 = load i32, i32* @IFM_100G_SR4, align 4
  store i32 %90, i32* %3, align 4
  br label %129

91:                                               ; preds = %77
  br label %124

92:                                               ; preds = %58
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 167
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @IFM_10G_ER, align 4
  store i32 %96, i32* %3, align 4
  br label %129

97:                                               ; preds = %92
  br label %124

98:                                               ; preds = %58, %58
  %99 = load i32, i32* %5, align 4
  switch i32 %99, label %112 [
    i32 166, label %100
    i32 167, label %102
    i32 165, label %104
    i32 164, label %106
    i32 163, label %108
    i32 169, label %110
  ]

100:                                              ; preds = %98
  %101 = load i32, i32* @IFM_1000_CX, align 4
  store i32 %101, i32* %3, align 4
  br label %129

102:                                              ; preds = %98
  %103 = load i32, i32* @IFM_10G_TWINAX, align 4
  store i32 %103, i32* %3, align 4
  br label %129

104:                                              ; preds = %98
  %105 = load i32, i32* @IFM_25G_CR, align 4
  store i32 %105, i32* %3, align 4
  br label %129

106:                                              ; preds = %98
  %107 = load i32, i32* @IFM_40G_CR4, align 4
  store i32 %107, i32* %3, align 4
  br label %129

108:                                              ; preds = %98
  %109 = load i32, i32* @IFM_50G_CR2, align 4
  store i32 %109, i32* %3, align 4
  br label %129

110:                                              ; preds = %98
  %111 = load i32, i32* @IFM_100G_CR4, align 4
  store i32 %111, i32* %3, align 4
  br label %129

112:                                              ; preds = %98
  br label %124

113:                                              ; preds = %58
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 167
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @IFM_10G_LRM, align 4
  store i32 %117, i32* %3, align 4
  br label %129

118:                                              ; preds = %113
  br label %124

119:                                              ; preds = %58
  %120 = call i32 @MPASS(i32 0)
  br label %121

121:                                              ; preds = %58, %58, %58, %119
  br label %124

122:                                              ; preds = %58
  %123 = load i32, i32* @IFM_NONE, align 4
  store i32 %123, i32* %3, align 4
  br label %129

124:                                              ; preds = %58, %121, %118, %112, %97, %91, %76
  br label %127

125:                                              ; preds = %2
  %126 = load i32, i32* @IFM_NONE, align 4
  store i32 %126, i32* %3, align 4
  br label %129

127:                                              ; preds = %2, %124, %57, %42, %36, %30, %24
  %128 = load i32, i32* @IFM_UNKNOWN, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %125, %122, %116, %110, %108, %106, %104, %102, %100, %95, %89, %87, %85, %83, %81, %79, %74, %72, %70, %68, %66, %64, %55, %53, %51, %49, %47, %45, %40, %34, %28, %22, %20, %18
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @powerof2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
