; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_handle_tx_mdd_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_handle_tx_mdd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.ixl_vf*, i32, %struct.i40e_hw }
%struct.ixl_vf = type { i32 }
%struct.i40e_hw = type { i32 }

@I40E_GL_MDET_TX = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_VALID_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_PF_NUM_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_PF_NUM_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_VF_NUM_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_VF_NUM_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_EVENT_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_EVENT_SHIFT = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_QUEUE_MASK = common dso_local global i32 0, align 4
@I40E_GL_MDET_TX_QUEUE_SHIFT = common dso_local global i32 0, align 4
@I40E_PF_MDET_TX = common dso_local global i32 0, align 4
@I40E_PF_MDET_TX_VALID_MASK = common dso_local global i32 0, align 4
@I40E_VP_MDET_TX_VALID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"Malicious Driver Detection event %d on TX queue %d, pf number %d (PF-%d), vf number %d (VF-%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"Malicious Driver Detection event %d on TX queue %d, pf number %d, vf number %d (VF-%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Malicious Driver Detection event %d on TX queue %d, pf number %d (PF-%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"TX Malicious Driver Detection event (unknown)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*)* @ixl_handle_tx_mdd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_handle_tx_mdd_event(%struct.ixl_pf* %0) #0 {
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
  %16 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %18 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %17, i32 0, i32 3
  store %struct.i40e_hw* %18, %struct.i40e_hw** %3, align 8
  %19 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %20 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %23 = load i32, i32* @I40E_GL_MDET_TX, align 4
  %24 = call i32 @rd32(%struct.i40e_hw* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @I40E_GL_MDET_TX_VALID_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %1
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @I40E_GL_MDET_TX_PF_NUM_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @I40E_GL_MDET_TX_PF_NUM_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @I40E_GL_MDET_TX_VF_NUM_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @I40E_GL_MDET_TX_VF_NUM_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @I40E_GL_MDET_TX_EVENT_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @I40E_GL_MDET_TX_EVENT_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @I40E_GL_MDET_TX_QUEUE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @I40E_GL_MDET_TX_QUEUE_SHIFT, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %51 = load i32, i32* @I40E_GL_MDET_TX, align 4
  %52 = call i32 @wr32(%struct.i40e_hw* %50, i32 %51, i32 -1)
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %29, %1
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  br label %155

57:                                               ; preds = %53
  %58 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %59 = load i32, i32* @I40E_PF_MDET_TX, align 4
  %60 = call i32 @rd32(%struct.i40e_hw* %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @I40E_PF_MDET_TX_VALID_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %67 = load i32, i32* @I40E_PF_MDET_TX, align 4
  %68 = call i32 @wr32(%struct.i40e_hw* %66, i32 %67, i32 65535)
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %70 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  store i32 1, i32* %7, align 4
  br label %72

72:                                               ; preds = %65, %57
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %105, %72
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %76 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %73
  %80 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %81 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %80, i32 0, i32 1
  %82 = load %struct.ixl_vf*, %struct.ixl_vf** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %82, i64 %84
  store %struct.ixl_vf* %85, %struct.ixl_vf** %5, align 8
  %86 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @I40E_VP_MDET_TX(i32 %87)
  %89 = call i32 @rd32(%struct.i40e_hw* %86, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @I40E_VP_MDET_TX_VALID_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %79
  %95 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @I40E_VP_MDET_TX(i32 %96)
  %98 = call i32 @wr32(%struct.i40e_hw* %95, i32 %97, i32 65535)
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %14, align 4
  %100 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %101 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  store i32 1, i32* %8, align 4
  br label %104

104:                                              ; preds = %94, %79
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %73

108:                                              ; preds = %73
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  br label %155

123:                                              ; preds = %111, %108
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  br label %154

137:                                              ; preds = %126, %123
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 (i32, i8*, ...) @device_printf(i32 %144, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146, i32 %147, i32 %148)
  br label %153

150:                                              ; preds = %140, %137
  %151 = load i32, i32* %4, align 4
  %152 = call i32 (i32, i8*, ...) @device_printf(i32 %151, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %143
  br label %154

154:                                              ; preds = %153, %129
  br label %155

155:                                              ; preds = %56, %154, %114
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VP_MDET_TX(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
