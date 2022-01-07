; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_fw_config_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_fw_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_intr = type { i32, i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@INTR_TRIGGER_INVALID = common dso_local global i32 0, align 4
@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@cold = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @powerpc_fw_config_intr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.powerpc_intr*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.powerpc_intr* @intr_lookup(i32 %7)
  store %struct.powerpc_intr* %8, %struct.powerpc_intr** %6, align 8
  %9 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %10 = icmp eq %struct.powerpc_intr* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  store i32 %12, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load i32, i32* @INTR_TRIGGER_INVALID, align 4
  %15 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %16 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %18 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %19 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %22 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @cold, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %13
  %26 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %27 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %32 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %35 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %38 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %41 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %40, i32 0, i32 2
  %42 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %43 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %42, i32 0, i32 1
  %44 = call i32 @PIC_TRANSLATE_CODE(i32* %33, i32 %36, i32 %39, i32* %41, i32* %43)
  %45 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %46 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %49 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %52 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %55 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PIC_CONFIG(i32* %47, i32 %50, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %30, %25, %13
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.powerpc_intr* @intr_lookup(i32) #1

declare dso_local i32 @PIC_TRANSLATE_CODE(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @PIC_CONFIG(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
