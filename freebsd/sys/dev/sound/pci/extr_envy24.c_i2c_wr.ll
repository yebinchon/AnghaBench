; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_i2c_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_i2c_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envy24_delta_ak4524_codec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, void (i8*, i32, i32)*, i32, i32, i32)* @i2c_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_wr(i8* %0, void (i8*, i32, i32)* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca void (i8*, i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.envy24_delta_ak4524_codec*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store void (i8*, i32, i32)* %1, void (i8*, i32, i32)** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.envy24_delta_ak4524_codec*
  store %struct.envy24_delta_ak4524_codec* %14, %struct.envy24_delta_ak4524_codec** %11, align 8
  %15 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %16 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %7, align 8
  %17 = call i32 @i2c_start(%struct.envy24_delta_ak4524_codec* %15, void (i8*, i32, i32)* %16)
  store i32 128, i32* %12, align 4
  br label %18

18:                                               ; preds = %28, %5
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %23 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %12, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @i2c_wrbit(%struct.envy24_delta_ak4524_codec* %22, void (i8*, i32, i32)* %23, i32 %26)
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %12, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %33 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %7, align 8
  %34 = call i32 @i2c_ack(%struct.envy24_delta_ak4524_codec* %32, void (i8*, i32, i32)* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  store i32 128, i32* %12, align 4
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %43 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @i2c_wrbit(%struct.envy24_delta_ak4524_codec* %42, void (i8*, i32, i32)* %43, i32 %46)
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %38

51:                                               ; preds = %38
  %52 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %53 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %7, align 8
  %54 = call i32 @i2c_ack(%struct.envy24_delta_ak4524_codec* %52, void (i8*, i32, i32)* %53)
  br label %55

55:                                               ; preds = %51, %31
  store i32 128, i32* %12, align 4
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %61 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @i2c_wrbit(%struct.envy24_delta_ak4524_codec* %60, void (i8*, i32, i32)* %61, i32 %64)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %71 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %7, align 8
  %72 = call i32 @i2c_ack(%struct.envy24_delta_ak4524_codec* %70, void (i8*, i32, i32)* %71)
  %73 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %74 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %7, align 8
  %75 = call i32 @i2c_stop(%struct.envy24_delta_ak4524_codec* %73, void (i8*, i32, i32)* %74)
  ret void
}

declare dso_local i32 @i2c_start(%struct.envy24_delta_ak4524_codec*, void (i8*, i32, i32)*) #1

declare dso_local i32 @i2c_wrbit(%struct.envy24_delta_ak4524_codec*, void (i8*, i32, i32)*, i32) #1

declare dso_local i32 @i2c_ack(%struct.envy24_delta_ak4524_codec*, void (i8*, i32, i32)*) #1

declare dso_local i32 @i2c_stop(%struct.envy24_delta_ak4524_codec*, void (i8*, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
