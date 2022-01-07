; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_device_quirks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_device_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_device = type { %struct.bhnd_device_quirk* }
%struct.bhnd_device_quirk = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_device_quirks(i32 %0, %struct.bhnd_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhnd_device*, align 8
  %9 = alloca %struct.bhnd_device_quirk*, align 8
  %10 = alloca %struct.bhnd_device_quirk*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.bhnd_device* %1, %struct.bhnd_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.bhnd_device*, %struct.bhnd_device** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.bhnd_device* @bhnd_device_lookup(i32 %12, %struct.bhnd_device* %13, i64 %14)
  store %struct.bhnd_device* %15, %struct.bhnd_device** %8, align 8
  %16 = icmp eq %struct.bhnd_device* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load %struct.bhnd_device*, %struct.bhnd_device** %8, align 8
  %20 = getelementptr inbounds %struct.bhnd_device, %struct.bhnd_device* %19, i32 0, i32 0
  %21 = load %struct.bhnd_device_quirk*, %struct.bhnd_device_quirk** %20, align 8
  store %struct.bhnd_device_quirk* %21, %struct.bhnd_device_quirk** %10, align 8
  %22 = load %struct.bhnd_device_quirk*, %struct.bhnd_device_quirk** %10, align 8
  %23 = icmp eq %struct.bhnd_device_quirk* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %50

25:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  %26 = load %struct.bhnd_device_quirk*, %struct.bhnd_device_quirk** %10, align 8
  store %struct.bhnd_device_quirk* %26, %struct.bhnd_device_quirk** %9, align 8
  br label %27

27:                                               ; preds = %45, %25
  %28 = load %struct.bhnd_device_quirk*, %struct.bhnd_device_quirk** %9, align 8
  %29 = call i32 @BHND_DEVICE_QUIRK_IS_END(%struct.bhnd_device_quirk* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.bhnd_device_quirk*, %struct.bhnd_device_quirk** %9, align 8
  %35 = getelementptr inbounds %struct.bhnd_device_quirk, %struct.bhnd_device_quirk* %34, i32 0, i32 1
  %36 = call i64 @bhnd_device_matches(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.bhnd_device_quirk*, %struct.bhnd_device_quirk** %9, align 8
  %40 = getelementptr inbounds %struct.bhnd_device_quirk, %struct.bhnd_device_quirk* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.bhnd_device_quirk*, %struct.bhnd_device_quirk** %9, align 8
  %47 = getelementptr inbounds %struct.bhnd_device_quirk, %struct.bhnd_device_quirk* %46, i32 1
  store %struct.bhnd_device_quirk* %47, %struct.bhnd_device_quirk** %9, align 8
  br label %27

48:                                               ; preds = %27
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %24, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.bhnd_device* @bhnd_device_lookup(i32, %struct.bhnd_device*, i64) #1

declare dso_local i32 @BHND_DEVICE_QUIRK_IS_END(%struct.bhnd_device_quirk*) #1

declare dso_local i64 @bhnd_device_matches(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
