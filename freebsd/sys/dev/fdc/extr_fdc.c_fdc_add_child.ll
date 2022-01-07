; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_ivars = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@FDT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fdc_add_child(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fdc_ivars*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @M_DEVBUF, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.fdc_ivars* @malloc(i32 8, i32 %10, i32 %13)
  store %struct.fdc_ivars* %14, %struct.fdc_ivars** %8, align 8
  %15 = load %struct.fdc_ivars*, %struct.fdc_ivars** %8, align 8
  %16 = icmp eq %struct.fdc_ivars* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %48

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32* @device_add_child(i32* %19, i8* %20, i32 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.fdc_ivars*, %struct.fdc_ivars** %8, align 8
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = call i32 @free(%struct.fdc_ivars* %26, i32 %27)
  store i32* null, i32** %4, align 8
  br label %48

29:                                               ; preds = %18
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.fdc_ivars*, %struct.fdc_ivars** %8, align 8
  %32 = call i32 @device_set_ivars(i32* %30, %struct.fdc_ivars* %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.fdc_ivars*, %struct.fdc_ivars** %8, align 8
  %35 = getelementptr inbounds %struct.fdc_ivars, %struct.fdc_ivars* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @FDT_NONE, align 4
  %37 = load %struct.fdc_ivars*, %struct.fdc_ivars** %8, align 8
  %38 = getelementptr inbounds %struct.fdc_ivars, %struct.fdc_ivars* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @resource_disabled(i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @device_disable(i32* %44)
  br label %46

46:                                               ; preds = %43, %29
  %47 = load i32*, i32** %9, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %46, %25, %17
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local %struct.fdc_ivars* @malloc(i32, i32, i32) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @free(%struct.fdc_ivars*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.fdc_ivars*) #1

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @device_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
