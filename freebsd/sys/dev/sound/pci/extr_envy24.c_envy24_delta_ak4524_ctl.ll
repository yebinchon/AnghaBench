; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_delta_ak4524_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_delta_ak4524_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envy24_delta_ak4524_codec = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @envy24_delta_ak4524_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24_delta_ak4524_ctl(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.envy24_delta_ak4524_codec*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.envy24_delta_ak4524_codec*
  store %struct.envy24_delta_ak4524_codec* %12, %struct.envy24_delta_ak4524_codec** %10, align 8
  %13 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %10, align 8
  %14 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @envy24_gpiord(%struct.TYPE_3__* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %10, align 8
  %18 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %10, align 8
  %21 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %10, align 8
  %25 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %23, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %10, align 8
  %35 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %33, %4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %10, align 8
  %44 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %10, align 8
  %53 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %10, align 8
  %59 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @envy24_gpiowr(%struct.TYPE_3__* %60, i32 %61)
  ret void
}

declare dso_local i32 @envy24_gpiord(%struct.TYPE_3__*) #1

declare dso_local i32 @envy24_gpiowr(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
