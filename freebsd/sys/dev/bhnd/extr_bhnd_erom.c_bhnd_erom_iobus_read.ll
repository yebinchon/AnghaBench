; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iobus_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iobus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32 }
%struct.bhnd_erom_iobus = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"no active mapping\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid offset %#jx\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid width %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_erom_io*, i64, i64)* @bhnd_erom_iobus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_erom_iobus_read(%struct.bhnd_erom_io* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_erom_io*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhnd_erom_iobus*, align 8
  store %struct.bhnd_erom_io* %0, %struct.bhnd_erom_io** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %5, align 8
  %10 = bitcast %struct.bhnd_erom_io* %9 to %struct.bhnd_erom_iobus*
  store %struct.bhnd_erom_iobus* %10, %struct.bhnd_erom_iobus** %8, align 8
  %11 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %12 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %19 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %25 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23, %17
  %32 = load i64, i64* %6, align 8
  %33 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i64, i64* %7, align 8
  switch i64 %35, label %75 [
    i64 1, label %36
    i64 2, label %49
    i64 4, label %62
  ]

36:                                               ; preds = %34
  %37 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %38 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %41 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %44 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @bus_space_read_1(i32 %39, i32 %42, i64 %47)
  store i32 %48, i32* %4, align 4
  br label %78

49:                                               ; preds = %34
  %50 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %51 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %54 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %57 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @bus_space_read_2(i32 %52, i32 %55, i64 %60)
  store i32 %61, i32* %4, align 4
  br label %78

62:                                               ; preds = %34
  %63 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %64 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %67 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %70 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @bus_space_read_4(i32 %65, i32 %68, i64 %73)
  store i32 %74, i32* %4, align 4
  br label %78

75:                                               ; preds = %34
  %76 = load i64, i64* %7, align 8
  %77 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %36, %49, %62, %75
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i64) #1

declare dso_local i32 @bus_space_read_2(i32, i32, i64) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
