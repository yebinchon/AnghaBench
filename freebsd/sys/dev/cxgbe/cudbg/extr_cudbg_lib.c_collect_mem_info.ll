; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_mem_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_mem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.card_mem = type { i32, i8*, i8*, i8*, i8* }

@A_MA_EXT_MEMORY_BAR = common dso_local global i32 0, align 4
@A_MA_TARGET_MEM_ENABLE = common dso_local global i32 0, align 4
@F_EXT_MEM_ENABLE = common dso_local global i32 0, align 4
@MC0_FLAG = common dso_local global i32 0, align 4
@A_MA_EXT_MEMORY0_BAR = common dso_local global i32 0, align 4
@A_MA_EXT_MEMORY1_BAR = common dso_local global i32 0, align 4
@F_EXT_MEM0_ENABLE = common dso_local global i32 0, align 4
@F_EXT_MEM1_ENABLE = common dso_local global i32 0, align 4
@MC1_FLAG = common dso_local global i32 0, align 4
@A_MA_EDRAM0_BAR = common dso_local global i32 0, align 4
@A_MA_EDRAM1_BAR = common dso_local global i32 0, align 4
@F_EDRAM0_ENABLE = common dso_local global i32 0, align 4
@EDC0_FLAG = common dso_local global i32 0, align 4
@F_EDRAM1_ENABLE = common dso_local global i32 0, align 4
@EDC1_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cudbg_init*, %struct.card_mem*)* @collect_mem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_mem_info(%struct.cudbg_init* %0, %struct.card_mem* %1) #0 {
  %3 = alloca %struct.cudbg_init*, align 8
  %4 = alloca %struct.card_mem*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %3, align 8
  store %struct.card_mem* %1, %struct.card_mem** %4, align 8
  %8 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %9 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %8, i32 0, i32 0
  %10 = load %struct.adapter*, %struct.adapter** %9, align 8
  store %struct.adapter* %10, %struct.adapter** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = call i64 @is_t4(%struct.adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = load i32, i32* @A_MA_EXT_MEMORY_BAR, align 4
  %21 = call i32 @t4_read_reg(%struct.adapter* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @G_EXT_MEM_SIZE(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %28 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.adapter*, %struct.adapter** %5, align 8
  %30 = load i32, i32* @A_MA_TARGET_MEM_ENABLE, align 4
  %31 = call i32 @t4_read_reg(%struct.adapter* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @F_EXT_MEM_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %18
  %37 = load i32, i32* @MC0_FLAG, align 4
  %38 = shl i32 1, %37
  %39 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %40 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %18
  br label %92

44:                                               ; preds = %15
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = load i32, i32* @A_MA_EXT_MEMORY0_BAR, align 4
  %47 = call i32 @t4_read_reg(%struct.adapter* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @G_EXT_MEM0_SIZE(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %54 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.adapter*, %struct.adapter** %5, align 8
  %56 = load i32, i32* @A_MA_EXT_MEMORY1_BAR, align 4
  %57 = call i32 @t4_read_reg(%struct.adapter* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @G_EXT_MEM1_SIZE(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %64 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.adapter*, %struct.adapter** %5, align 8
  %66 = load i32, i32* @A_MA_TARGET_MEM_ENABLE, align 4
  %67 = call i32 @t4_read_reg(%struct.adapter* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @F_EXT_MEM0_ENABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %44
  %73 = load i32, i32* @MC0_FLAG, align 4
  %74 = shl i32 1, %73
  %75 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %76 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %72, %44
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @F_EXT_MEM1_ENABLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i32, i32* @MC1_FLAG, align 4
  %86 = shl i32 1, %85
  %87 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %88 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %79
  br label %92

92:                                               ; preds = %91, %43
  %93 = load %struct.adapter*, %struct.adapter** %5, align 8
  %94 = load i32, i32* @A_MA_EDRAM0_BAR, align 4
  %95 = call i32 @t4_read_reg(%struct.adapter* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @G_EDRAM0_SIZE(i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %102 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.adapter*, %struct.adapter** %5, align 8
  %104 = load i32, i32* @A_MA_EDRAM1_BAR, align 4
  %105 = call i32 @t4_read_reg(%struct.adapter* %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @G_EDRAM1_SIZE(i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %112 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.adapter*, %struct.adapter** %5, align 8
  %114 = load i32, i32* @A_MA_TARGET_MEM_ENABLE, align 4
  %115 = call i32 @t4_read_reg(%struct.adapter* %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @F_EDRAM0_ENABLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %92
  %121 = load i32, i32* @EDC0_FLAG, align 4
  %122 = shl i32 1, %121
  %123 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %124 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %92
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @F_EDRAM1_ENABLE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load i32, i32* @EDC1_FLAG, align 4
  %134 = shl i32 1, %133
  %135 = load %struct.card_mem*, %struct.card_mem** %4, align 8
  %136 = getelementptr inbounds %struct.card_mem, %struct.card_mem* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %127
  ret void
}

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @G_EXT_MEM_SIZE(i32) #1

declare dso_local i32 @G_EXT_MEM0_SIZE(i32) #1

declare dso_local i32 @G_EXT_MEM1_SIZE(i32) #1

declare dso_local i32 @G_EDRAM0_SIZE(i32) #1

declare dso_local i32 @G_EDRAM1_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
