; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_empty_both_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_empty_both_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@KBDS_ANY_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDD_DELAYTIME = common dso_local global i32 0, align 4
@KBDS_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @empty_both_buffers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.TYPE_4__* @kbdcp(i32 %14)
  %16 = call i32 @read_status(%struct.TYPE_4__* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @KBDS_ANY_BUFFER_FULL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load i32, i32* @KBDD_DELAYTIME, align 4
  %22 = call i32 @DELAY(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.TYPE_4__* @kbdcp(i32 %23)
  %25 = call i32 @read_data(%struct.TYPE_4__* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %13
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 1000000
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %54

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %42, 1000
  %44 = call i32 @DELAY(i32 %43)
  br label %10

45:                                               ; preds = %10
  %46 = load i32, i32* %3, align 4
  %47 = call %struct.TYPE_4__* @kbdcp(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = call i32 @emptyq(i32* %48)
  %50 = load i32, i32* %3, align 4
  %51 = call %struct.TYPE_4__* @kbdcp(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @emptyq(i32* %52)
  br label %54

54:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @read_status(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @kbdcp(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @read_data(%struct.TYPE_4__*) #1

declare dso_local i32 @emptyq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
