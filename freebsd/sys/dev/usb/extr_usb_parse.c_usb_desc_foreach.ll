; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_parse.c_usb_desc_foreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_parse.c_usb_desc_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config_descriptor = type { i32 }
%struct.usb_descriptor = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor* %0, %struct.usb_descriptor* %1) #0 {
  %3 = alloca %struct.usb_descriptor*, align 8
  %4 = alloca %struct.usb_config_descriptor*, align 8
  %5 = alloca %struct.usb_descriptor*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.usb_config_descriptor* %0, %struct.usb_config_descriptor** %4, align 8
  store %struct.usb_descriptor* %1, %struct.usb_descriptor** %5, align 8
  %10 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %11 = icmp eq %struct.usb_config_descriptor* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.usb_descriptor* null, %struct.usb_descriptor** %3, align 8
  br label %69

13:                                               ; preds = %2
  %14 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %15 = bitcast %struct.usb_config_descriptor* %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %18 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @UGETW(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32* %22, i32** %8, align 8
  %23 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %24 = bitcast %struct.usb_descriptor* %23 to i32*
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32*, i32** %7, align 8
  store i32* %28, i32** %9, align 8
  br label %36

29:                                               ; preds = %13
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32* %35, i32** %9, align 8
  br label %36

36:                                               ; preds = %29, %27
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ult i32* %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp uge i32* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36
  store %struct.usb_descriptor* null, %struct.usb_descriptor** %3, align 8
  br label %69

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ult i32* %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ugt i32* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %45
  store %struct.usb_descriptor* null, %struct.usb_descriptor** %3, align 8
  br label %69

60:                                               ; preds = %55
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store %struct.usb_descriptor* null, %struct.usb_descriptor** %3, align 8
  br label %69

66:                                               ; preds = %60
  %67 = load i32*, i32** %9, align 8
  %68 = bitcast i32* %67 to %struct.usb_descriptor*
  store %struct.usb_descriptor* %68, %struct.usb_descriptor** %3, align 8
  br label %69

69:                                               ; preds = %66, %65, %59, %44, %12
  %70 = load %struct.usb_descriptor*, %struct.usb_descriptor** %3, align 8
  ret %struct.usb_descriptor* %70
}

declare dso_local i32 @UGETW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
