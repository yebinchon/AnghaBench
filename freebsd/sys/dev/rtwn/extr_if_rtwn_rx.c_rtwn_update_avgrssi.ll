; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_update_avgrssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_update_avgrssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_node = type { i32, i32 }

@RTWN_DEBUG_RSSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MACID %d, PWDB %d, EMA %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.rtwn_node*, i32, i32)* @rtwn_update_avgrssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_update_avgrssi(%struct.rtwn_softc* %0, %struct.rtwn_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.rtwn_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store %struct.rtwn_node* %1, %struct.rtwn_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, -100
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 20
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  store i32 0, i32* %9, align 4
  br label %24

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 100, i32* %9, align 4
  br label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 100, %21
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %20, %19
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 6
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 100
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 100, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %9, align 4
  %35 = icmp sle i32 %34, 14
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 4
  store i32 %38, i32* %9, align 4
  br label %60

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 26
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 8
  store i32 %44, i32* %9, align 4
  br label %59

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp sle i32 %46, 34
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 6
  store i32 %50, i32* %9, align 4
  br label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = icmp sle i32 %52, 42
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 2
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %36
  br label %61

61:                                               ; preds = %60, %24
  %62 = load %struct.rtwn_node*, %struct.rtwn_node** %6, align 8
  %63 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.rtwn_node*, %struct.rtwn_node** %6, align 8
  %69 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %98

70:                                               ; preds = %61
  %71 = load %struct.rtwn_node*, %struct.rtwn_node** %6, align 8
  %72 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load %struct.rtwn_node*, %struct.rtwn_node** %6, align 8
  %78 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 19
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  %83 = sdiv i32 %82, 20
  %84 = add nsw i32 %83, 1
  %85 = load %struct.rtwn_node*, %struct.rtwn_node** %6, align 8
  %86 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %97

87:                                               ; preds = %70
  %88 = load %struct.rtwn_node*, %struct.rtwn_node** %6, align 8
  %89 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 19
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %91, %92
  %94 = sdiv i32 %93, 20
  %95 = load %struct.rtwn_node*, %struct.rtwn_node** %6, align 8
  %96 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %87, %76
  br label %98

98:                                               ; preds = %97, %66
  %99 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %100 = load i32, i32* @RTWN_DEBUG_RSSI, align 4
  %101 = load %struct.rtwn_node*, %struct.rtwn_node** %6, align 8
  %102 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.rtwn_node*, %struct.rtwn_node** %6, align 8
  %106 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @RTWN_DPRINTF(%struct.rtwn_softc* %99, i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104, i32 %107)
  ret void
}

declare dso_local i32 @RTWN_DPRINTF(%struct.rtwn_softc*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
