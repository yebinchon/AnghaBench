; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_int15_gsic_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_int15_gsic_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm86frame = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @int15_gsic_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int15_gsic_call(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vm86frame, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = call i32 @bzero(%struct.vm86frame* %11, i32 16)
  %13 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %11, i32 0, i32 0
  store i32 59776, i32* %13, align 4
  %14 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %11, i32 0, i32 1
  store i32 1196640579, i32* %14, align 4
  %15 = call i32 @vm86_intcall(i32 21, %struct.vm86frame* %11)
  %16 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %11, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1196640579
  br i1 %18, label %19, label %38

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %11, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %11, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %11, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %11, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  br label %44

38:                                               ; preds = %5
  %39 = load i32*, i32** %6, align 8
  store i32 -1, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 -1, i32* %40, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 -1, i32* %41, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 -1, i32* %42, align 4
  %43 = load i32*, i32** %10, align 8
  store i32 -1, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %19
  ret i32 0
}

declare dso_local i32 @bzero(%struct.vm86frame*, i32) #1

declare dso_local i32 @vm86_intcall(i32, %struct.vm86frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
