; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_discover_prga.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_discover_prga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@fragstate = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@prgainfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @discover_prga(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fragstate, i32 0, i32 2), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @prgainfo, i32 0, i32 0), align 4
  %8 = icmp sge i32 %7, 20
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @prgainfo, i32 0, i32 0), align 4
  %11 = mul nsw i32 %10, 3
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @prepare_fragstate(%struct.TYPE_6__* @fragstate, i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fragstate, i32 0, i32 1), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @send_fragment(i32 %19, %struct.TYPE_6__* @fragstate, %struct.TYPE_7__* @prgainfo)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fragstate, i32 0, i32 1), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = call i32 @gettimeofday(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fragstate, i32 0, i32 0), i32* null)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %28, %18
  br label %30

30:                                               ; preds = %29, %15
  ret void
}

declare dso_local i32 @prepare_fragstate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @send_fragment(i32, %struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
