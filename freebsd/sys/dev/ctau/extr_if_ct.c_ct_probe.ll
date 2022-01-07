; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_ct_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_ct_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Cronyx Tau-ISA\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ct%d: Couldn't get IOPORT\0A\00", align 1
@NPORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"ct%d: Resource IOPORT isn't free\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ct%d: probing for Tau-ISA at %jx faild\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ct_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_unit(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_desc(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_desc(i32 %13)
  %15 = call i64 @strcmp(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SYS_RES_IOPORT, align 4
  %22 = call i64 @bus_get_resource(i32 %20, i32 %21, i32 0, i64* %5, i64* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %52

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_IOPORT, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @NPORT, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @NPORT, align 8
  %36 = call i32 @ct_is_free_res(i32 %29, i32 0, i32 %30, i64 %31, i64 %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %52

42:                                               ; preds = %28
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @ct_probe_board(i64 %43, i32 -1, i32 -1)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %47, i64 %48)
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %46, %38, %24, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @bus_get_resource(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @ct_is_free_res(i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @ct_probe_board(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
