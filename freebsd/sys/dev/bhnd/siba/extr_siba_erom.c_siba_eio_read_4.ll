; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_eio_read_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_eio_read_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_erom_io = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"core index %u out of range (ncores=%u)\00", align 1
@SIBA_CORE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid core offset %#jx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siba_erom_io*, i64, i32)* @siba_eio_read_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_eio_read_4(%struct.siba_erom_io* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.siba_erom_io*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.siba_erom_io* %0, %struct.siba_erom_io** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.siba_erom_io*, %struct.siba_erom_io** %4, align 8
  %9 = getelementptr inbounds %struct.siba_erom_io, %struct.siba_erom_io* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.siba_erom_io*, %struct.siba_erom_io** %4, align 8
  %15 = getelementptr inbounds %struct.siba_erom_io, %struct.siba_erom_io* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i8*, i64, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %16)
  br label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* @SIBA_CORE_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 4
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = call i32 (i8*, i64, ...) @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.siba_erom_io*, %struct.siba_erom_io** %4, align 8
  %31 = getelementptr inbounds %struct.siba_erom_io, %struct.siba_erom_io* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @SIBA_CORE_OFFSET(i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @bhnd_erom_io_read(i32 %32, i32 %36, i32 4)
  ret i32 %37
}

declare dso_local i32 @panic(i8*, i64, ...) #1

declare dso_local i32 @bhnd_erom_io_read(i32, i32, i32) #1

declare dso_local i32 @SIBA_CORE_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
