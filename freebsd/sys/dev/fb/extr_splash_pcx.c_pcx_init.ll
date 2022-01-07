; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_pcx.c_pcx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_pcx.c_pcx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32*, i32*, i64, i64 }
%struct.pcx_header = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@MAXSCANLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"splash_pcx: invalid PCX image\0A\00", align 1
@pcx_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pcx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcx_init(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcx_header*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pcx_header*
  store %struct.pcx_header* %8, %struct.pcx_header** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 898
  br i1 %10, label %51, label %11

11:                                               ; preds = %2
  %12 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %13 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 10
  br i1 %15, label %51, label %16

16:                                               ; preds = %11
  %17 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %18 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 5
  br i1 %20, label %51, label %21

21:                                               ; preds = %16
  %22 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %23 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %51, label %26

26:                                               ; preds = %21
  %27 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %28 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %33 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 8
  br i1 %35, label %51, label %36

36:                                               ; preds = %31
  %37 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %38 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MAXSCANLINE, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 769
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 12
  br i1 %50, label %51, label %53

51:                                               ; preds = %42, %36, %31, %26, %21, %16, %11, %2
  %52 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

53:                                               ; preds = %42
  %54 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %55 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %58 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcx_info, i32 0, i32 7), align 8
  %62 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %63 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %66 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcx_info, i32 0, i32 6), align 8
  %70 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %71 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcx_info, i32 0, i32 0), align 8
  %73 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %74 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcx_info, i32 0, i32 1), align 8
  %76 = load %struct.pcx_header*, %struct.pcx_header** %6, align 8
  %77 = getelementptr inbounds %struct.pcx_header, %struct.pcx_header* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcx_info, i32 0, i32 2), align 4
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %79, 897
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcx_info, i32 0, i32 3), align 8
  %81 = load i8*, i8** %4, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = getelementptr inbounds i32, i32* %82, i64 128
  store i32* %83, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcx_info, i32 0, i32 4), align 8
  %84 = load i8*, i8** %4, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = getelementptr inbounds i32, i32* %88, i64 -768
  store i32* %89, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcx_info, i32 0, i32 5), align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %53, %51
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
