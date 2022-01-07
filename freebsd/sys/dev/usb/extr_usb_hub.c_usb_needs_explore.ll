; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_needs_explore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_needs_explore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32, i32*, i32, i32** }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cold = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Cold\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"No bus pointer!\0A\00", align 1
@USB_ROOT_HUB_ADDR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"No root HUB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_needs_explore(%struct.usb_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_bus* %0, %struct.usb_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @cold, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %66

11:                                               ; preds = %2
  %12 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %13 = icmp eq %struct.usb_bus* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %66

16:                                               ; preds = %11
  %17 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %18 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  %20 = icmp eq i32** %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %23 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %22, i32 0, i32 3
  %24 = load i32**, i32*** %23, align 8
  %25 = load i64, i64* @USB_ROOT_HUB_ADDR, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %16
  %30 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %66

31:                                               ; preds = %21
  %32 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %33 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %32, i32 0, i32 2
  %34 = call i64 @mtx_owned(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %40

37:                                               ; preds = %31
  %38 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %39 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %38)
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %45 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %48 = call i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus* %47)
  %49 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %50 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %54 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = call i64 @usb_proc_msignal(i32 %48, i32* %52, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %65 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %64)
  br label %66

66:                                               ; preds = %9, %14, %29, %63, %60
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @mtx_owned(i32*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i64 @usb_proc_msignal(i32, i32*, i32*) #1

declare dso_local i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
