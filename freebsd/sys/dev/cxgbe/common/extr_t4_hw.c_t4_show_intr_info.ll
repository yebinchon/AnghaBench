; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_show_intr_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_show_intr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.intr_info = type { i32, i32, %struct.intr_details*, i32, i32, i32 }
%struct.intr_details = type { i32, i32 }

@NONFATAL_IF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%c %s 0x%x = 0x%08x, E 0x%08x, F 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  %c [0x%08x] %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  ? [0x%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.intr_info*, i32)* @t4_show_intr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_show_intr_info(%struct.adapter* %0, %struct.intr_info* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.intr_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intr_details*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.intr_info* %1, %struct.intr_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = load %struct.intr_info*, %struct.intr_info** %5, align 8
  %15 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @t4_read_reg(%struct.adapter* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.intr_info*, %struct.intr_info** %5, align 8
  %19 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NONFATAL_IF_DISABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.intr_info*, %struct.intr_info** %5, align 8
  %26 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load %struct.intr_info*, %struct.intr_info** %5, align 8
  %30 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @t4_read_reg(%struct.adapter* %28, i32 %31)
  %33 = and i32 %27, %32
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.intr_info*, %struct.intr_info** %5, align 8
  %36 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %24
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call signext i8 @intr_alert_char(i32 %39, i32 %40, i32 %41)
  store i8 %42, i8* %11, align 1
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = load i8, i8* %11, align 1
  %45 = sext i8 %44 to i32
  %46 = load %struct.intr_info*, %struct.intr_info** %5, align 8
  %47 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.intr_info*, %struct.intr_info** %5, align 8
  %50 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_ALERT(%struct.adapter* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.intr_info*, %struct.intr_info** %5, align 8
  %58 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %57, i32 0, i32 2
  %59 = load %struct.intr_details*, %struct.intr_details** %58, align 8
  store %struct.intr_details* %59, %struct.intr_details** %10, align 8
  br label %60

60:                                               ; preds = %98, %38
  %61 = load %struct.intr_details*, %struct.intr_details** %10, align 8
  %62 = icmp ne %struct.intr_details* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.intr_details*, %struct.intr_details** %10, align 8
  %65 = getelementptr inbounds %struct.intr_details, %struct.intr_details* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi i1 [ false, %60 ], [ %67, %63 ]
  br i1 %69, label %70, label %101

70:                                               ; preds = %68
  %71 = load %struct.intr_details*, %struct.intr_details** %10, align 8
  %72 = getelementptr inbounds %struct.intr_details, %struct.intr_details* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %98

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.intr_info*, %struct.intr_info** %5, align 8
  %83 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call signext i8 @intr_alert_char(i32 %80, i32 %81, i32 %84)
  store i8 %85, i8* %11, align 1
  %86 = load %struct.adapter*, %struct.adapter** %4, align 8
  %87 = load i8, i8* %11, align 1
  %88 = sext i8 %87 to i32
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.intr_details*, %struct.intr_details** %10, align 8
  %91 = getelementptr inbounds %struct.intr_details, %struct.intr_details* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_ALERT(%struct.adapter* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %79, %78
  %99 = load %struct.intr_details*, %struct.intr_details** %10, align 8
  %100 = getelementptr inbounds %struct.intr_details, %struct.intr_details* %99, i32 1
  store %struct.intr_details* %100, %struct.intr_details** %10, align 8
  br label %60

101:                                              ; preds = %68
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.adapter*, %struct.adapter** %4, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_ALERT(%struct.adapter* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %104, %101
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local signext i8 @intr_alert_char(i32, i32, i32) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
