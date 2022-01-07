; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crom_context = type { i64, %struct.crom_ptr* }
%struct.crom_ptr = type { i64, %struct.csrdirectory* }
%struct.csrdirectory = type { i64 }
%struct.csrreg = type { i32, i32 }

@CSRTYPE_MASK = common dso_local global i32 0, align 4
@CSRTYPE_D = common dso_local global i32 0, align 4
@CROM_MAX_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"crom_next: too deep\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"crom_next: bound check failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crom_next(%struct.crom_context* %0) #0 {
  %2 = alloca %struct.crom_context*, align 8
  %3 = alloca %struct.crom_ptr*, align 8
  %4 = alloca %struct.csrreg*, align 8
  store %struct.crom_context* %0, %struct.crom_context** %2, align 8
  %5 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %6 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ult i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %107

10:                                               ; preds = %1
  %11 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %12 = call %struct.csrreg* @crom_get(%struct.crom_context* %11)
  store %struct.csrreg* %12, %struct.csrreg** %4, align 8
  %13 = load %struct.csrreg*, %struct.csrreg** %4, align 8
  %14 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CSRTYPE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CSRTYPE_D, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %10
  %21 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %22 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CROM_MAX_DEPTH, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %52

28:                                               ; preds = %20
  %29 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %30 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %34 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %33, i32 0, i32 1
  %35 = load %struct.crom_ptr*, %struct.crom_ptr** %34, align 8
  %36 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %37 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %35, i64 %38
  store %struct.crom_ptr* %39, %struct.crom_ptr** %3, align 8
  %40 = load %struct.csrreg*, %struct.csrreg** %4, align 8
  %41 = load %struct.csrreg*, %struct.csrreg** %4, align 8
  %42 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %40, i64 %44
  %46 = bitcast %struct.csrreg* %45 to %struct.csrdirectory*
  %47 = load %struct.crom_ptr*, %struct.crom_ptr** %3, align 8
  %48 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %47, i32 0, i32 1
  store %struct.csrdirectory* %46, %struct.csrdirectory** %48, align 8
  %49 = load %struct.crom_ptr*, %struct.crom_ptr** %3, align 8
  %50 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %64

51:                                               ; preds = %10
  br label %52

52:                                               ; preds = %99, %51, %26
  %53 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %54 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %53, i32 0, i32 1
  %55 = load %struct.crom_ptr*, %struct.crom_ptr** %54, align 8
  %56 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %57 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %55, i64 %58
  store %struct.crom_ptr* %59, %struct.crom_ptr** %3, align 8
  %60 = load %struct.crom_ptr*, %struct.crom_ptr** %3, align 8
  %61 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %52, %28
  %65 = load %struct.crom_ptr*, %struct.crom_ptr** %3, align 8
  %66 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.crom_ptr*, %struct.crom_ptr** %3, align 8
  %69 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %68, i32 0, i32 1
  %70 = load %struct.csrdirectory*, %struct.csrdirectory** %69, align 8
  %71 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %67, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %76 = call %struct.csrreg* @crom_get(%struct.crom_context* %75)
  %77 = ptrtoint %struct.csrreg* %76 to i64
  %78 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %79 = call i64 @CROM_END(%struct.crom_context* %78)
  %80 = icmp sle i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %107

82:                                               ; preds = %74, %64
  %83 = load %struct.crom_ptr*, %struct.crom_ptr** %3, align 8
  %84 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.crom_ptr*, %struct.crom_ptr** %3, align 8
  %87 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %86, i32 0, i32 1
  %88 = load %struct.csrdirectory*, %struct.csrdirectory** %87, align 8
  %89 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %85, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %82
  %95 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %96 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %101 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %101, align 8
  br label %52

104:                                              ; preds = %94
  %105 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %106 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %105, i32 0, i32 0
  store i64 -1, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %81, %9
  ret void
}

declare dso_local %struct.csrreg* @crom_get(%struct.crom_context*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @CROM_END(%struct.crom_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
