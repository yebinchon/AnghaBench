; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iores_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iores_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32 }
%struct.bhnd_erom_iores = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"read with invalid mapping\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid width %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_erom_io*, i32, i32)* @bhnd_erom_iores_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_erom_iores_read(%struct.bhnd_erom_io* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_erom_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhnd_erom_iores*, align 8
  store %struct.bhnd_erom_io* %0, %struct.bhnd_erom_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %5, align 8
  %10 = bitcast %struct.bhnd_erom_io* %9 to %struct.bhnd_erom_iores*
  store %struct.bhnd_erom_iores* %10, %struct.bhnd_erom_iores** %8, align 8
  %11 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %12 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %37 [
    i32 1, label %19
    i32 2, label %25
    i32 4, label %31
  ]

19:                                               ; preds = %17
  %20 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %21 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @bhnd_bus_read_1(i32* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %17
  %26 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %27 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bhnd_bus_read_2(i32* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %17
  %32 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %33 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @bhnd_bus_read_4(i32* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %40

37:                                               ; preds = %17
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %19, %25, %31, %37
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @bhnd_bus_read_1(i32*, i32) #1

declare dso_local i32 @bhnd_bus_read_2(i32*, i32) #1

declare dso_local i32 @bhnd_bus_read_4(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
