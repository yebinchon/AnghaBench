; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_base.c_ppb_poll_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_base.c_ppb_poll_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppb_data = type { i32 }

@PPB_POLL = common dso_local global i32 0, align 4
@PPB_FOREVER = common dso_local global i32 0, align 4
@PPBPRI = common dso_local global i32 0, align 4
@PPB_NOINTR = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ppbpoll\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppb_poll_bus(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ppb_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.ppb_data* @DEVTOSOFTC(i64 %17)
  store %struct.ppb_data* %18, %struct.ppb_data** %12, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @ppb_assert_locked(i64 %19)
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %52, %5
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @PPB_POLL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 1, %29 ]
  %32 = icmp slt i32 %22, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 10000
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ppb_rstr(i64 %38)
  store i32 %39, i32* %16, align 4
  %40 = call i32 @DELAY(i32 1)
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %111

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %34

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %21

55:                                               ; preds = %30
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @PPB_POLL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %109, label %60

60:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %105, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @PPB_FOREVER, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %66, %68
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i1 [ true, %61 ], [ %69, %65 ]
  br i1 %71, label %72, label %108

72:                                               ; preds = %70
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @ppb_rstr(i64 %73)
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %111

80:                                               ; preds = %72
  %81 = load i64, i64* %7, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.ppb_data*, %struct.ppb_data** %12, align 8
  %84 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PPBPRI, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @PPB_NOINTR, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %93

91:                                               ; preds = %80
  %92 = load i32, i32* @PCATCH, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i32 [ 0, %90 ], [ %92, %91 ]
  %95 = or i32 %86, %94
  %96 = load i32, i32* @hz, align 4
  %97 = sdiv i32 %96, 100
  %98 = call i32 @mtx_sleep(i32 %82, i32 %85, i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @EWOULDBLOCK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %6, align 4
  br label %111

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %61

108:                                              ; preds = %70
  br label %109

109:                                              ; preds = %108, %55
  %110 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %102, %79, %46
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.ppb_data* @DEVTOSOFTC(i64) #1

declare dso_local i32 @ppb_assert_locked(i64) #1

declare dso_local i32 @ppb_rstr(i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_sleep(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
