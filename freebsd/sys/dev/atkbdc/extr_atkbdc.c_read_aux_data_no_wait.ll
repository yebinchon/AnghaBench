; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_read_aux_data_no_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_read_aux_data_no_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@KBDS_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDD_DELAYTIME = common dso_local global i32 0, align 4
@KBDS_AUX_BUFFER_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_aux_data_no_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.TYPE_4__* @kbdcp(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = call i64 @availq(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.TYPE_4__* @kbdcp(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = call i32 @removeq(i32* %13)
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.TYPE_4__* @kbdcp(i32 %16)
  %18 = call i32 @read_status(%struct.TYPE_4__* %17)
  %19 = load i32, i32* @KBDS_BUFFER_FULL, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = load i32, i32* @KBDD_DELAYTIME, align 4
  %26 = call i32 @DELAY(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.TYPE_4__* @kbdcp(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %3, align 4
  %31 = call %struct.TYPE_4__* @kbdcp(i32 %30)
  %32 = call i32 @read_data(%struct.TYPE_4__* %31)
  %33 = call i32 @addq(i32* %29, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call %struct.TYPE_4__* @kbdcp(i32 %34)
  %36 = call i32 @read_status(%struct.TYPE_4__* %35)
  %37 = load i32, i32* @KBDS_BUFFER_FULL, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %24, %15
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @KBDD_DELAYTIME, align 4
  %45 = call i32 @DELAY(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call %struct.TYPE_4__* @kbdcp(i32 %46)
  %48 = call i32 @read_data(%struct.TYPE_4__* %47)
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %43, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @availq(i32*) #1

declare dso_local %struct.TYPE_4__* @kbdcp(i32) #1

declare dso_local i32 @removeq(i32*) #1

declare dso_local i32 @read_status(%struct.TYPE_4__*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @addq(i32*, i32) #1

declare dso_local i32 @read_data(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
