; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_load_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_load_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.stack* }
%struct.stack = type { i32 }
%struct.number = type { i32 }
%struct.value = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"negative idx\00", align 1
@ULONG_MAX = common dso_local global i32 0, align 4
@MAX_ARRAY_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"idx too big\00", align 1
@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BCODE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_array() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca %struct.number*, align 8
  %3 = alloca %struct.stack*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (...) @readreg()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %70

11:                                               ; preds = %0
  %12 = call %struct.number* (...) @pop_number()
  store %struct.number* %12, %struct.number** %1, align 8
  %13 = load %struct.number*, %struct.number** %1, align 8
  %14 = icmp eq %struct.number* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %70

16:                                               ; preds = %11
  %17 = load %struct.number*, %struct.number** %1, align 8
  %18 = call i32 @get_ulong(%struct.number* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.number*, %struct.number** %1, align 8
  %20 = getelementptr inbounds %struct.number, %struct.number* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @BN_is_negative(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @warnx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %67

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ULONG_MAX, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAX_ARRAY_INDEX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %26
  %35 = call i32 @warnx(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %66

36:                                               ; preds = %30
  %37 = load %struct.stack*, %struct.stack** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.stack, %struct.stack* %37, i64 %39
  store %struct.stack* %40, %struct.stack** %3, align 8
  %41 = load %struct.stack*, %struct.stack** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.value* @frame_retrieve(%struct.stack* %41, i32 %42)
  store %struct.value* %43, %struct.value** %4, align 8
  %44 = load %struct.value*, %struct.value** %4, align 8
  %45 = icmp eq %struct.value* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = load %struct.value*, %struct.value** %4, align 8
  %48 = getelementptr inbounds %struct.value, %struct.value* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BCODE_NONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46, %36
  %53 = call %struct.number* (...) @new_number()
  store %struct.number* %53, %struct.number** %2, align 8
  %54 = load %struct.number*, %struct.number** %2, align 8
  %55 = getelementptr inbounds %struct.number, %struct.number* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BN_zero(i32 %56)
  %58 = call i32 @bn_check(i32 %57)
  %59 = load %struct.number*, %struct.number** %2, align 8
  %60 = call i32 @push_number(%struct.number* %59)
  br label %65

61:                                               ; preds = %46
  %62 = load %struct.value*, %struct.value** %4, align 8
  %63 = call i32 @stack_dup_value(%struct.value* %62, %struct.value* %5)
  %64 = call i32 @push(i32 %63)
  br label %65

65:                                               ; preds = %61, %52
  br label %66

66:                                               ; preds = %65, %34
  br label %67

67:                                               ; preds = %66, %24
  %68 = load %struct.number*, %struct.number** %1, align 8
  %69 = call i32 @free_number(%struct.number* %68)
  br label %70

70:                                               ; preds = %15, %67, %0
  ret void
}

declare dso_local i32 @readreg(...) #1

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local i32 @get_ulong(%struct.number*) #1

declare dso_local i64 @BN_is_negative(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local %struct.value* @frame_retrieve(%struct.stack*, i32) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_zero(i32) #1

declare dso_local i32 @push_number(%struct.number*) #1

declare dso_local i32 @push(i32) #1

declare dso_local i32 @stack_dup_value(%struct.value*, %struct.value*) #1

declare dso_local i32 @free_number(%struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
