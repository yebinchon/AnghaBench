; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.printer = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"unreasonable delay period (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sgt i32 %7, 10000
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @fatal(%struct.printer* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %2, align 4
  %14 = sdiv i32 %13, 1000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %2, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = srem i32 %17, 1000000
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %3)
  ret void
}

declare dso_local i32 @fatal(%struct.printer*, i8*, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
