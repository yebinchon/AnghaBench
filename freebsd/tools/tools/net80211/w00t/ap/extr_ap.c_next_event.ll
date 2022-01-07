; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_next_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32, i64, i32 }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"select()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @next_event(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  store i32 3000, i32* %8, align 4
  %9 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.params*, %struct.params** %2, align 8
  %15 = getelementptr inbounds %struct.params, %struct.params* %14, i32 0, i32 5
  %16 = call i32 @elapsed(i32* %15, %struct.timeval* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.params*, %struct.params** %2, align 8
  %19 = getelementptr inbounds %struct.params, %struct.params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.params*, %struct.params** %2, align 8
  %24 = call i32 @send_beacon(%struct.params* %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %13
  %26 = load %struct.params*, %struct.params** %2, align 8
  %27 = getelementptr inbounds %struct.params, %struct.params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sdiv i32 %31, 1000
  %33 = sdiv i32 %32, 1000
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = mul nsw i32 %38, 1000
  %40 = sub nsw i32 %35, %39
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.params*, %struct.params** %2, align 8
  %43 = getelementptr inbounds %struct.params, %struct.params* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %25
  %47 = load %struct.params*, %struct.params** %2, align 8
  %48 = getelementptr inbounds %struct.params, %struct.params* %47, i32 0, i32 3
  %49 = call i32 @elapsed(i32* %48, %struct.timeval* %4)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.params*, %struct.params** %2, align 8
  %55 = call i64 @retransmit(%struct.params* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %59

58:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %5, align 4
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 1000
  %70 = mul nsw i32 %69, 1000
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %70, %72
  %74 = load i32, i32* %5, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %63
  %77 = load i32, i32* %5, align 4
  %78 = sdiv i32 %77, 1000
  %79 = sdiv i32 %78, 1000
  %80 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 1000
  %85 = mul nsw i32 %84, 1000
  %86 = sub nsw i32 %81, %85
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %76, %63
  br label %89

89:                                               ; preds = %88, %60
  br label %90

90:                                               ; preds = %89, %25
  %91 = call i32 @FD_ZERO(i32* %7)
  %92 = load %struct.params*, %struct.params** %2, align 8
  %93 = getelementptr inbounds %struct.params, %struct.params* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @FD_SET(i32 %94, i32* %7)
  %96 = load %struct.params*, %struct.params** %2, align 8
  %97 = getelementptr inbounds %struct.params, %struct.params* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @FD_SET(i32 %98, i32* %7)
  %100 = load %struct.params*, %struct.params** %2, align 8
  %101 = getelementptr inbounds %struct.params, %struct.params* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.params*, %struct.params** %2, align 8
  %104 = getelementptr inbounds %struct.params, %struct.params* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %90
  %108 = load %struct.params*, %struct.params** %2, align 8
  %109 = getelementptr inbounds %struct.params, %struct.params* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  br label %115

111:                                              ; preds = %90
  %112 = load %struct.params*, %struct.params** %2, align 8
  %113 = getelementptr inbounds %struct.params, %struct.params* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i32 [ %110, %107 ], [ %114, %111 ]
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  %119 = call i32 @select(i32 %118, i32* %7, i32* null, i32* null, %struct.timeval* %3)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %115
  %124 = load %struct.params*, %struct.params** %2, align 8
  %125 = getelementptr inbounds %struct.params, %struct.params* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @FD_ISSET(i32 %126, i32* %7)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.params*, %struct.params** %2, align 8
  %131 = call i32 @read_tap(%struct.params* %130)
  br label %132

132:                                              ; preds = %129, %123
  %133 = load %struct.params*, %struct.params** %2, align 8
  %134 = getelementptr inbounds %struct.params, %struct.params* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @FD_ISSET(i32 %135, i32* %7)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.params*, %struct.params** %2, align 8
  %140 = call i32 @read_wifi(%struct.params* %139)
  br label %141

141:                                              ; preds = %138, %132
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @elapsed(i32*, %struct.timeval*) #1

declare dso_local i32 @send_beacon(%struct.params*) #1

declare dso_local i64 @retransmit(%struct.params*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @read_tap(%struct.params*) #1

declare dso_local i32 @read_wifi(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
