; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pps.c_ppshcpoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pps.c_ppshcpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_data = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"pps polling w/o opened devices\00", align 1
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ppshcpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppshcpoll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pps_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.pps_data*
  store %struct.pps_data* %9, %struct.pps_data** %3, align 8
  %10 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %11 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, -2
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %16 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ppb_rdtr(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %21 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %79

25:                                               ; preds = %1
  %26 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %27 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = xor i32 %28, %29
  store i32 %30, i32* %7, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %68, %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 9
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %41 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @pps_capture(i32* %45)
  %47 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %48 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %39
  %58 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  br label %61

59:                                               ; preds = %39
  %60 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i32 @pps_event(i32* %52, i32 %62)
  br label %64

64:                                               ; preds = %61, %34
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %31

71:                                               ; preds = %31
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %74 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %76 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %75, i32 0, i32 2
  %77 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %78 = call i32 @callout_reset(i32* %76, i32 1, void (i8*)* @ppshcpoll, %struct.pps_data* %77)
  br label %79

79:                                               ; preds = %71, %24
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ppb_rdtr(i32) #1

declare dso_local i32 @pps_capture(i32*) #1

declare dso_local i32 @pps_event(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.pps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
