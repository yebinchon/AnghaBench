; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_config_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_intr = type { i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@cold = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @powerpc_config_intr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.powerpc_intr*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.powerpc_intr* @intr_lookup(i32 %9)
  store %struct.powerpc_intr* %10, %struct.powerpc_intr** %8, align 8
  %11 = load %struct.powerpc_intr*, %struct.powerpc_intr** %8, align 8
  %12 = icmp eq %struct.powerpc_intr* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %4, align 4
  br label %40

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.powerpc_intr*, %struct.powerpc_intr** %8, align 8
  %18 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.powerpc_intr*, %struct.powerpc_intr** %8, align 8
  %21 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @cold, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %15
  %25 = load %struct.powerpc_intr*, %struct.powerpc_intr** %8, align 8
  %26 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.powerpc_intr*, %struct.powerpc_intr** %8, align 8
  %31 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.powerpc_intr*, %struct.powerpc_intr** %8, align 8
  %34 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @PIC_CONFIG(i32* %32, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %24, %15
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.powerpc_intr* @intr_lookup(i32) #1

declare dso_local i32 @PIC_CONFIG(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
