; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_out2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_out2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@E1CS2_SCC = common dso_local global i8 0, align 1
@E1CS2_AB = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cte_out2c(%struct.TYPE_5__* %0, i8 zeroext %1) #0 {
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
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %21

18:                                               ; preds = %2
  %19 = load i8, i8* @E1CS2_AB, align 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i32 [ 0, %17 ], [ %20, %18 ]
  %23 = or i32 %12, %22
  %24 = trunc i32 %23 to i8
  %25 = call i32 @outb(i32 %10, i8 zeroext %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @E1DAT(i32 %30)
  %32 = load i8, i8* %4, align 1
  %33 = call i32 @outb(i32 %31, i8 zeroext %32)
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
