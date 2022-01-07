; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_store_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_store_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.stack* }
%struct.stack = type { i32 }
%struct.number = type { i32 }
%struct.value = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"negative idx\00", align 1
@ULONG_MAX = common dso_local global i32 0, align 4
@MAX_ARRAY_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"idx too big\00", align 1
@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @store_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_array() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.stack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @readreg()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %0
  %10 = call %struct.number* (...) @pop_number()
  store %struct.number* %10, %struct.number** %1, align 8
  %11 = load %struct.number*, %struct.number** %1, align 8
  %12 = icmp eq %struct.number* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %58

14:                                               ; preds = %9
  %15 = call %struct.value* (...) @pop()
  store %struct.value* %15, %struct.value** %2, align 8
  %16 = load %struct.value*, %struct.value** %2, align 8
  %17 = icmp eq %struct.value* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.number*, %struct.number** %1, align 8
  %20 = call i32 @free_number(%struct.number* %19)
  br label %58

21:                                               ; preds = %14
  %22 = load %struct.number*, %struct.number** %1, align 8
  %23 = call i32 @get_ulong(%struct.number* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.number*, %struct.number** %1, align 8
  %25 = getelementptr inbounds %struct.number, %struct.number* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @BN_is_negative(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = call i32 @warnx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.value*, %struct.value** %2, align 8
  %32 = call i32 @stack_free_value(%struct.value* %31)
  br label %55

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ULONG_MAX, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MAX_ARRAY_INDEX, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33
  %42 = call i32 @warnx(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.value*, %struct.value** %2, align 8
  %44 = call i32 @stack_free_value(%struct.value* %43)
  br label %54

45:                                               ; preds = %37
  %46 = load %struct.stack*, %struct.stack** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.stack, %struct.stack* %46, i64 %48
  store %struct.stack* %49, %struct.stack** %3, align 8
  %50 = load %struct.stack*, %struct.stack** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.value*, %struct.value** %2, align 8
  %53 = call i32 @frame_assign(%struct.stack* %50, i32 %51, %struct.value* %52)
  br label %54

54:                                               ; preds = %45, %41
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.number*, %struct.number** %1, align 8
  %57 = call i32 @free_number(%struct.number* %56)
  br label %58

58:                                               ; preds = %13, %18, %55, %0
  ret void
}

declare dso_local i32 @readreg(...) #1

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local %struct.value* @pop(...) #1

declare dso_local i32 @free_number(%struct.number*) #1

declare dso_local i32 @get_ulong(%struct.number*) #1

declare dso_local i64 @BN_is_negative(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @stack_free_value(%struct.value*) #1

declare dso_local i32 @frame_assign(%struct.stack*, i32, %struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
