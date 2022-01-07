; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_empty_kbd_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_empty_kbd_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@KBDS_ANY_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDD_DELAYTIME = common dso_local global i32 0, align 4
@KBDS_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_AUX_BUFFER_FULL = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @empty_kbd_buffer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %43, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.TYPE_4__* @kbdcp(i32 %14)
  %16 = call i32 @read_status(%struct.TYPE_4__* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @KBDS_ANY_BUFFER_FULL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load i32, i32* @KBDD_DELAYTIME, align 4
  %22 = call i32 @DELAY(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.TYPE_4__* @kbdcp(i32 %23)
  %25 = call i32 @read_data(%struct.TYPE_4__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @KBDS_BUFFER_FULL, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = call %struct.TYPE_4__* @kbdcp(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @addq(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %20
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %5, align 4
  br label %43

39:                                               ; preds = %13
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %44, 1000
  %46 = call i32 @DELAY(i32 %45)
  br label %10

47:                                               ; preds = %10
  %48 = load i32, i32* %3, align 4
  %49 = call %struct.TYPE_4__* @kbdcp(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @emptyq(i32* %50)
  ret void
}

declare dso_local i32 @read_status(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @kbdcp(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @read_data(%struct.TYPE_4__*) #1

declare dso_local i32 @addq(i32*, i32) #1

declare dso_local i32 @emptyq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
