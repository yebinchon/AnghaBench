; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_setup_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_setup_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_cdev_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uinput_user_dev = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"setup_provider called, udev=%p\00", align 1
@ABS_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uinput_cdev_state*, %struct.uinput_user_dev*)* @uinput_setup_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_setup_provider(%struct.uinput_cdev_state* %0, %struct.uinput_user_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uinput_cdev_state*, align 8
  %5 = alloca %struct.uinput_user_dev*, align 8
  %6 = alloca %struct.input_absinfo, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uinput_cdev_state* %0, %struct.uinput_cdev_state** %4, align 8
  store %struct.uinput_user_dev* %1, %struct.uinput_user_dev** %5, align 8
  %9 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %4, align 8
  %10 = load %struct.uinput_user_dev*, %struct.uinput_user_dev** %5, align 8
  %11 = call i32 @debugf(%struct.uinput_cdev_state* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.uinput_user_dev* %10)
  %12 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %4, align 8
  %13 = load %struct.uinput_user_dev*, %struct.uinput_user_dev** %5, align 8
  %14 = getelementptr inbounds %struct.uinput_user_dev, %struct.uinput_user_dev* %13, i32 0, i32 6
  %15 = load %struct.uinput_user_dev*, %struct.uinput_user_dev** %5, align 8
  %16 = getelementptr inbounds %struct.uinput_user_dev, %struct.uinput_user_dev* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.uinput_user_dev*, %struct.uinput_user_dev** %5, align 8
  %19 = getelementptr inbounds %struct.uinput_user_dev, %struct.uinput_user_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @uinput_setup_dev(%struct.uinput_cdev_state* %12, i32* %14, i32 %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %84

26:                                               ; preds = %2
  %27 = call i32 @bzero(%struct.input_absinfo* %6, i32 16)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %80, %26
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ABS_CNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %4, align 8
  %34 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @bit_test(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %80

42:                                               ; preds = %32
  %43 = load %struct.uinput_user_dev*, %struct.uinput_user_dev** %5, align 8
  %44 = getelementptr inbounds %struct.uinput_user_dev, %struct.uinput_user_dev* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %6, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load %struct.uinput_user_dev*, %struct.uinput_user_dev** %5, align 8
  %52 = getelementptr inbounds %struct.uinput_user_dev, %struct.uinput_user_dev* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %6, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load %struct.uinput_user_dev*, %struct.uinput_user_dev** %5, align 8
  %60 = getelementptr inbounds %struct.uinput_user_dev, %struct.uinput_user_dev* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %6, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load %struct.uinput_user_dev*, %struct.uinput_user_dev** %5, align 8
  %68 = getelementptr inbounds %struct.uinput_user_dev, %struct.uinput_user_dev* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %6, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %4, align 8
  %76 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @evdev_set_absinfo(%struct.TYPE_2__* %77, i32 %78, %struct.input_absinfo* %6)
  br label %80

80:                                               ; preds = %42, %41
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %28

83:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %24
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @debugf(%struct.uinput_cdev_state*, i8*, %struct.uinput_user_dev*) #1

declare dso_local i32 @uinput_setup_dev(%struct.uinput_cdev_state*, i32*, i32, i32) #1

declare dso_local i32 @bzero(%struct.input_absinfo*, i32) #1

declare dso_local i32 @bit_test(i32, i32) #1

declare dso_local i32 @evdev_set_absinfo(%struct.TYPE_2__*, i32, %struct.input_absinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
