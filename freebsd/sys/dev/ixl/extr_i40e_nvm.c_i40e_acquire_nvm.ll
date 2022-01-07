; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_acquire_nvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_acquire_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"i40e_acquire_nvm\00", align 1
@I40E_NVM_RESOURCE_ID = common dso_local global i32 0, align 4
@I40E_GLVFGEN_TIMER = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"NVM acquire type %d failed time_left=%llu ret=%d aq_err=%d\0A\00", align 1
@I40E_MAX_NVM_TIMEOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [78 x i8] c"NVM acquire timed out, wait %llu ms before trying again. status=%d aq_err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_acquire_nvm(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %107

17:                                               ; preds = %2
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %19 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @i40e_aq_request_resource(%struct.i40e_hw* %18, i32 %19, i32 %20, i32 0, i64* %8, i32* null)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %23 = load i32, i32* @I40E_GLVFGEN_TIMER, align 4
  %24 = call i64 @rd32(%struct.i40e_hw* %22, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @I40E_MS_TO_GTIME(i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %17
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %36 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.i40e_hw*, i32, i8*, i64, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %35, i32 %36, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %40, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %34, %17
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %106

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %106

53:                                               ; preds = %50
  %54 = load i64, i64* @I40E_MAX_NVM_TIMEOUT, align 8
  %55 = call i64 @I40E_MS_TO_GTIME(i64 %54)
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %87, %53
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br i1 %66, label %67, label %88

67:                                               ; preds = %65
  %68 = call i32 @i40e_msec_delay(i32 10)
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %70 = load i32, i32* @I40E_GLVFGEN_TIMER, align 4
  %71 = call i64 @rd32(%struct.i40e_hw* %69, i32 %70)
  store i64 %71, i64* %6, align 8
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %73 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @i40e_aq_request_resource(%struct.i40e_hw* %72, i32 %73, i32 %74, i32 0, i64* %8, i32* null)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @I40E_SUCCESS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %67
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @I40E_MS_TO_GTIME(i64 %80)
  %82 = load i64, i64* %6, align 8
  %83 = add nsw i64 %81, %82
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %85 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  br label %88

87:                                               ; preds = %67
  br label %58

88:                                               ; preds = %79, %65
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @I40E_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %94 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %97 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %98 = load i64, i64* %8, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %101 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (%struct.i40e_hw*, i32, i8*, i64, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %96, i32 %97, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %98, i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %92, %88
  br label %106

106:                                              ; preds = %105, %50, %47
  br label %107

107:                                              ; preds = %106, %16
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_aq_request_resource(%struct.i40e_hw*, i32, i32, i32, i64*, i32*) #1

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i64 @I40E_MS_TO_GTIME(i64) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64, i32, i32, ...) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
