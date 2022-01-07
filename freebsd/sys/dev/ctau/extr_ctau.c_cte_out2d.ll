; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_out2d.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_out2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@E1CS2_SCC = common dso_local global i8 0, align 1
@E1CS2_DC = common dso_local global i8 0, align 1
@E1CS2_AB = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cte_out2d(%struct.TYPE_5__* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @E1CS2(i32 %9)
  %11 = load i8, i8* @E1CS2_SCC, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @E1CS2_DC, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %12, %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %24

21:                                               ; preds = %2
  %22 = load i8, i8* @E1CS2_AB, align 1
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  %26 = or i32 %15, %25
  %27 = trunc i32 %26 to i8
  %28 = call i32 @outb(i32 %10, i8 zeroext %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @E1DAT(i32 %33)
  %35 = load i8, i8* %4, align 1
  %36 = call i32 @outb(i32 %34, i8 zeroext %35)
  ret void
}

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local i32 @E1CS2(i32) #1

declare dso_local i32 @E1DAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
