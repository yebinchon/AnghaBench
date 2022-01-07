; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_set_ibase.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_set_ibase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.number = type { i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [57 x i8] c"input base must be a number between 2 and 16 (inclusive)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_ibase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ibase() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.number* (...) @pop_number()
  store %struct.number* %3, %struct.number** %1, align 8
  %4 = load %struct.number*, %struct.number** %1, align 8
  %5 = icmp ne %struct.number* %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %0
  %7 = load %struct.number*, %struct.number** %1, align 8
  %8 = call i32 @get_ulong(%struct.number* %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @ULONG_MAX, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = icmp sle i32 2, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp sle i32 %16, 16
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  br label %23

21:                                               ; preds = %15, %12, %6
  %22 = call i32 @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.number*, %struct.number** %1, align 8
  %25 = call i32 @free_number(%struct.number* %24)
  br label %26

26:                                               ; preds = %23, %0
  ret void
}

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local i32 @get_ulong(%struct.number*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @free_number(%struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
