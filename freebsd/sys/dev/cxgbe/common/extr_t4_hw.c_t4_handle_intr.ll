; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_handle_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_handle_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.intr_info = type { i64, i64, i32, i32, %struct.intr_action* }
%struct.intr_action = type { i32, i32 (%struct.adapter.0*, i32, i32)*, i32 }
%struct.adapter.0 = type opaque

@A_PL_INT_CAUSE = common dso_local global i64 0, align 8
@NONFATAL_IF_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.intr_info*, i32, i32)* @t4_handle_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_handle_intr(%struct.adapter* %0, %struct.intr_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.intr_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.intr_action*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.intr_info* %1, %struct.intr_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %16 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @t4_read_reg(%struct.adapter* %14, i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %20 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @A_PL_INT_CAUSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.adapter*, %struct.adapter** %6, align 8
  %26 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %27 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @t4_read_reg(%struct.adapter* %25, i64 %28)
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %24, %4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35, %32
  %39 = load %struct.adapter*, %struct.adapter** %6, align 8
  %40 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @t4_show_intr_info(%struct.adapter* %39, %struct.intr_info* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %46 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %44, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %53 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NONFATAL_IF_DISABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.adapter*, %struct.adapter** %6, align 8
  %60 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %61 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @t4_read_reg(%struct.adapter* %59, i64 %62)
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %58, %51, %43
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %127

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %12, align 4
  %77 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %78 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %77, i32 0, i32 4
  %79 = load %struct.intr_action*, %struct.intr_action** %78, align 8
  store %struct.intr_action* %79, %struct.intr_action** %13, align 8
  br label %80

80:                                               ; preds = %111, %73
  %81 = load %struct.intr_action*, %struct.intr_action** %13, align 8
  %82 = icmp ne %struct.intr_action* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.intr_action*, %struct.intr_action** %13, align 8
  %85 = getelementptr inbounds %struct.intr_action, %struct.intr_action* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %83, %80
  %89 = phi i1 [ false, %80 ], [ %87, %83 ]
  br i1 %89, label %90, label %114

90:                                               ; preds = %88
  %91 = load %struct.intr_action*, %struct.intr_action** %13, align 8
  %92 = getelementptr inbounds %struct.intr_action, %struct.intr_action* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %111

98:                                               ; preds = %90
  %99 = load %struct.intr_action*, %struct.intr_action** %13, align 8
  %100 = getelementptr inbounds %struct.intr_action, %struct.intr_action* %99, i32 0, i32 1
  %101 = load i32 (%struct.adapter.0*, i32, i32)*, i32 (%struct.adapter.0*, i32, i32)** %100, align 8
  %102 = load %struct.adapter*, %struct.adapter** %6, align 8
  %103 = bitcast %struct.adapter* %102 to %struct.adapter.0*
  %104 = load %struct.intr_action*, %struct.intr_action** %13, align 8
  %105 = getelementptr inbounds %struct.intr_action, %struct.intr_action* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 %101(%struct.adapter.0* %103, i32 %106, i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %98, %97
  %112 = load %struct.intr_action*, %struct.intr_action** %13, align 8
  %113 = getelementptr inbounds %struct.intr_action, %struct.intr_action* %112, i32 1
  store %struct.intr_action* %113, %struct.intr_action** %13, align 8
  br label %80

114:                                              ; preds = %88
  %115 = load %struct.adapter*, %struct.adapter** %6, align 8
  %116 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %117 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @t4_write_reg(%struct.adapter* %115, i64 %118, i32 %119)
  %121 = load %struct.adapter*, %struct.adapter** %6, align 8
  %122 = load %struct.intr_info*, %struct.intr_info** %7, align 8
  %123 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @t4_read_reg(%struct.adapter* %121, i64 %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %114, %72
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @t4_show_intr_info(%struct.adapter*, %struct.intr_info*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
