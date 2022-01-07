; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Cronyx Sigma\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cx%d: Couldn't get IOPORT\0A\00", align 1
@NPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"cx%d: Resource IOPORT isn't free %lx\0A\00", align 1
@porttab = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"cx%d: probing for Sigma at %lx faild\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_unit(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_desc(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_desc(i32 %14)
  %16 = call i64 @strcmp(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %88

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SYS_RES_IOPORT, align 4
  %23 = call i64 @bus_get_resource(i32 %21, i32 %22, i32 0, i32* %6, i32* %7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @NPORT, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @NPORT, align 4
  %37 = call i32 @cx_is_free_res(i32 %30, i32 0, i32 %31, i32 %32, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %88

44:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %66, %44
  %46 = load i32*, i32** @porttab, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  %53 = load i32*, i32** @porttab, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32*, i32** @porttab, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 -1, i32* %64, align 4
  br label %69

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %45

69:                                               ; preds = %60, %45
  %70 = load i32*, i32** @porttab, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  br label %88

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @cx_probe_board(i32 %79, i32 -1, i32 -1)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %82, %76, %39, %25, %18
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @bus_get_resource(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @cx_is_free_res(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cx_probe_board(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
