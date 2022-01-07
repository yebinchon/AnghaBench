; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"atkbd\00", align 1
@ATKBD_DEFAULT = common dso_local global i32 0, align 4
@ATKBD_DRIVER_NAME = common dso_local global i32 0, align 4
@KB_REGISTERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atkbd_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i64 (...) @atkbdc_configure()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ATKBD_DEFAULT, align 4
  %11 = call i64 @resource_disabled(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @ATKBD_DRIVER_NAME, align 4
  %15 = load i32, i32* @ATKBD_DEFAULT, align 4
  %16 = call i32 @kbd_find_keyboard(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_5__* @kbd_get_keyboard(i32 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = call i32 @kbd_unregister(%struct.TYPE_5__* %22)
  %24 = load i32, i32* @KB_REGISTERED, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %19, %13
  store i32 0, i32* %2, align 4
  br label %56

31:                                               ; preds = %9
  %32 = load i32, i32* @ATKBD_DEFAULT, align 4
  %33 = call i64 @resource_int_value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -1, i32* %40, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 -1, i32* %41, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  %42 = load i32, i32* @ATKBD_DEFAULT, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @atkbd_probe(i32 %42, i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %56

48:                                               ; preds = %39
  %49 = load i32, i32* @ATKBD_DEFAULT, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @atkbd_init(i32 %49, %struct.TYPE_5__** %4, i32* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %56

55:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %54, %47, %30
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @atkbdc_configure(...) #1

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @kbd_find_keyboard(i32, i32) #1

declare dso_local %struct.TYPE_5__* @kbd_get_keyboard(i32) #1

declare dso_local i32 @kbd_unregister(%struct.TYPE_5__*) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i64 @atkbd_probe(i32, i32*, i32) #1

declare dso_local i64 @atkbd_init(i32, %struct.TYPE_5__**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
