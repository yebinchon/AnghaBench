; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_pba_length_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_pba_length_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i64, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"e1000_read_pba_length_generic\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"PBA buffer size was null\0A\00", align 1
@E1000_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@NVM_PBA_OFFSET_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_PBA_OFFSET_1 = common dso_local global i64 0, align 8
@NVM_PBA_PTR_GUARD = common dso_local global i64 0, align 8
@E1000_PBANUM_LENGTH = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"NVM PBA number section invalid length\0A\00", align 1
@E1000_ERR_NVM_PBA_SECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_pba_length_generic(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i64, i64* @E1000_ERR_INVALID_ARGUMENT, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %3, align 8
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.0*, i64, i32, i64*)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.0*
  %25 = load i64, i64* @NVM_PBA_OFFSET_0, align 8
  %26 = call i64 %22(%struct.e1000_hw.0* %24, i64 %25, i32 1, i64* %7)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %3, align 8
  br label %87

32:                                               ; preds = %17
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.0*, i64, i32, i64*)** %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = bitcast %struct.e1000_hw* %38 to %struct.e1000_hw.0*
  %40 = load i64, i64* @NVM_PBA_OFFSET_1, align 8
  %41 = call i64 %37(%struct.e1000_hw.0* %39, i64 %40, i32 1, i64* %8)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* %3, align 8
  br label %87

47:                                               ; preds = %32
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @NVM_PBA_PTR_GUARD, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @E1000_PBANUM_LENGTH, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %54, i64* %3, align 8
  br label %87

55:                                               ; preds = %47
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.0*, i64, i32, i64*)** %59, align 8
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %62 = bitcast %struct.e1000_hw* %61 to %struct.e1000_hw.0*
  %63 = load i64, i64* %8, align 8
  %64 = call i64 %60(%struct.e1000_hw.0* %62, i64 %63, i32 1, i64* %9)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i64, i64* %6, align 8
  store i64 %69, i64* %3, align 8
  br label %87

70:                                               ; preds = %55
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 65535
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73, %70
  %77 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i64, i64* @E1000_ERR_NVM_PBA_SECTION, align 8
  %79 = sub nsw i64 0, %78
  store i64 %79, i64* %3, align 8
  br label %87

80:                                               ; preds = %73
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  %83 = mul nsw i32 %82, 2
  %84 = sub nsw i32 %83, 1
  %85 = load i32*, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %80, %76, %67, %51, %44, %29, %13
  %88 = load i64, i64* %3, align 8
  ret i64 %88
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
