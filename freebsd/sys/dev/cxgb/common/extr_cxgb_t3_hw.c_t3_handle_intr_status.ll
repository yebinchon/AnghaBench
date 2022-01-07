; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_handle_intr_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_handle_intr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"%s (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.intr_info*, i64*)* @t3_handle_intr_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_handle_intr_status(i32* %0, i32 %1, i32 %2, %struct.intr_info* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.intr_info*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.intr_info* %3, %struct.intr_info** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @t3_read_reg(i32* %13, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %12, align 4
  br label %18

18:                                               ; preds = %86, %5
  %19 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %20 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %18
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %26 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %86

31:                                               ; preds = %23
  %32 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %33 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %41 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %45 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %43, %46
  %48 = call i32 @CH_ALERT(i32* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %47)
  %49 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %50 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %72

55:                                               ; preds = %31
  %56 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %57 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %63 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %67 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %65, %68
  %70 = call i32 @CH_WARN(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %64, i32 %69)
  br label %71

71:                                               ; preds = %60, %55
  br label %72

72:                                               ; preds = %71, %36
  %73 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %74 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp uge i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i64*, i64** %10, align 8
  %79 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %80 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %77, %72
  br label %86

86:                                               ; preds = %85, %30
  %87 = load %struct.intr_info*, %struct.intr_info** %9, align 8
  %88 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %87, i32 1
  store %struct.intr_info* %88, %struct.intr_info** %9, align 8
  br label %18

89:                                               ; preds = %18
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @t3_write_reg(i32* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32, i32* %11, align 4
  ret i32 %98
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @CH_ALERT(i32*, i8*, i64, i32) #1

declare dso_local i32 @CH_WARN(i32*, i8*, i64, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
