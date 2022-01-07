; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_skipN.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_skipN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.number = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"J command requires a number >= 0\00", align 1
@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"J command argument exceeded string execution depth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skipN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skipN() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca i64, align 8
  %3 = call %struct.number* (...) @pop_number()
  store %struct.number* %3, %struct.number** %1, align 8
  %4 = load %struct.number*, %struct.number** %1, align 8
  %5 = icmp eq %struct.number* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %36

7:                                                ; preds = %0
  %8 = load %struct.number*, %struct.number** %1, align 8
  %9 = call i64 @get_ulong(%struct.number* %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @ULONG_MAX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %36

15:                                               ; preds = %7
  %16 = load i64, i64* %2, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %35

24:                                               ; preds = %18, %15
  br label %25

25:                                               ; preds = %29, %24
  %26 = load i64, i64* %2, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %2, align 8
  %28 = icmp sgt i64 %26, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = call i32 (...) @src_free()
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  br label %25

33:                                               ; preds = %25
  %34 = call i32 (...) @skip_until_mark()
  br label %35

35:                                               ; preds = %33, %22
  br label %36

36:                                               ; preds = %6, %35, %13
  ret void
}

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local i64 @get_ulong(%struct.number*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @src_free(...) #1

declare dso_local i32 @skip_until_mark(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
