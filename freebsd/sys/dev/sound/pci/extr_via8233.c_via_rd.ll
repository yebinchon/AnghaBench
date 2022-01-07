; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via_info*, i32, i32)* @via_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_rd(%struct.via_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.via_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.via_info* %0, %struct.via_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %36 [
    i32 1, label %9
    i32 2, label %18
    i32 4, label %27
  ]

9:                                                ; preds = %3
  %10 = load %struct.via_info*, %struct.via_info** %5, align 8
  %11 = getelementptr inbounds %struct.via_info, %struct.via_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.via_info*, %struct.via_info** %5, align 8
  %14 = getelementptr inbounds %struct.via_info, %struct.via_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @bus_space_read_1(i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.via_info*, %struct.via_info** %5, align 8
  %20 = getelementptr inbounds %struct.via_info, %struct.via_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.via_info*, %struct.via_info** %5, align 8
  %23 = getelementptr inbounds %struct.via_info, %struct.via_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @bus_space_read_2(i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %3
  %28 = load %struct.via_info*, %struct.via_info** %5, align 8
  %29 = getelementptr inbounds %struct.via_info, %struct.via_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.via_info*, %struct.via_info** %5, align 8
  %32 = getelementptr inbounds %struct.via_info, %struct.via_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @bus_space_read_4(i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %27, %18, %9
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_2(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
