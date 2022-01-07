; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_handle_rx_mdd_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_handle_rx_mdd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.ixl_vf*, i32, %struct.i40e_hw }
%struct.ixl_vf = type { i32 }
%struct.i40e_hw = type { i32 }

@I40E_GL_MDET_RX = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_VALID_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_FUNCTION_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_EVENT_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_EVENT_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_QUEUE_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_RX_QUEUE_SHIFT = common dso_local global i32 0, align 4
@I40E_PF_MDET_RX = common dso_local global i32 0, align 4
@I40E_PF_MDET_RX_VALID_MASK = common dso_local global i32 0, align 4
@I40E_VP_MDET_RX_VALID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Malicious Driver Detection event %d on RX queue %d, pf number %d (PF-%d), (VF-%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Malicious Driver Detection event %d on RX queue %d, pf number %d, (VF-%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Malicious Driver Detection event %d on RX queue %d, pf number %d (PF-%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"RX Malicious Driver Detection event (unknown)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*)* @ixl_handle_rx_mdd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_handle_rx_mdd_event(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixl_vf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %16 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %17 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %16, i32 0, i32 3
  store %struct.i40e_hw* %17, %struct.i40e_hw** %3, align 8
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %19 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %22 = load i32, i32* @I40E_GL_MDET_RX, align 4
  %23 = call i32 @rd32(%struct.i40e_hw* %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @I40E_GL_MDET_RX_VALID_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @I40E_GL_MDET_RX_FUNCTION_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @I40E_GL_MDET_RX_FUNCTION_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @I40E_GL_MDET_RX_EVENT_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @I40E_GL_MDET_RX_EVENT_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @I40E_GL_MDET_RX_QUEUE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @I40E_GL_MDET_RX_QUEUE_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %45 = load i32, i32* @I40E_GL_MDET_RX, align 4
  %46 = call i32 @wr32(%struct.i40e_hw* %44, i32 %45, i32 -1)
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %28, %1
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %147

51:                                               ; preds = %47
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %53 = load i32, i32* @I40E_PF_MDET_RX, align 4
  %54 = call i32 @rd32(%struct.i40e_hw* %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @I40E_PF_MDET_RX_VALID_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = load i32, i32* @I40E_PF_MDET_RX, align 4
  %62 = call i32 @wr32(%struct.i40e_hw* %60, i32 %61, i32 65535)
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %64 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %59, %51
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %99, %66
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %70 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %67
  %74 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %75 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %74, i32 0, i32 1
  %76 = load %struct.ixl_vf*, %struct.ixl_vf** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %76, i64 %78
  store %struct.ixl_vf* %79, %struct.ixl_vf** %5, align 8
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @I40E_VP_MDET_RX(i32 %81)
  %83 = call i32 @rd32(%struct.i40e_hw* %80, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @I40E_VP_MDET_RX_VALID_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %73
  %89 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @I40E_VP_MDET_RX(i32 %90)
  %92 = call i32 @wr32(%struct.i40e_hw* %89, i32 %91, i32 65535)
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %13, align 4
  %94 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %95 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  store i32 1, i32* %8, align 4
  br label %98

98:                                               ; preds = %88, %73
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %67

102:                                              ; preds = %67
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  br label %147

116:                                              ; preds = %105, %102
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 (i32, i8*, ...) @device_printf(i32 %123, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %125, i32 %126, i32 %127)
  br label %146

129:                                              ; preds = %119, %116
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %136, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %138, i32 %139, i32 %140)
  br label %145

142:                                              ; preds = %132, %129
  %143 = load i32, i32* %4, align 4
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %135
  br label %146

146:                                              ; preds = %145, %122
  br label %147

147:                                              ; preds = %50, %146, %108
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VP_MDET_RX(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
