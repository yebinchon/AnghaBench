; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usb_command_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usb_command_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer_queue = type { i32, i32, i32, %struct.usb_xfer*, i32 (%struct.usb_xfer_queue*)*, i32 }
%struct.usb_xfer = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"busy %p\0A\00", align 1
@wait_entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cb %p (enter)\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cb %p (leave)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_command_wrapper(%struct.usb_xfer_queue* %0, %struct.usb_xfer* %1) #0 {
  %3 = alloca %struct.usb_xfer_queue*, align 8
  %4 = alloca %struct.usb_xfer*, align 8
  store %struct.usb_xfer_queue* %0, %struct.usb_xfer_queue** %3, align 8
  store %struct.usb_xfer* %1, %struct.usb_xfer** %4, align 8
  %5 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %6 = icmp ne %struct.usb_xfer* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %9 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %8, i32 0, i32 3
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %9, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %12 = icmp ne %struct.usb_xfer* %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %16 = call i32 @usbd_transfer_enqueue(%struct.usb_xfer_queue* %14, %struct.usb_xfer* %15)
  %17 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %18 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %17, i32 0, i32 3
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %18, align 8
  %20 = icmp ne %struct.usb_xfer* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %23 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %22, i32 0, i32 3
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %23, align 8
  %25 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %24)
  br label %95

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %7
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %30 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %29, i32 0, i32 3
  store %struct.usb_xfer* null, %struct.usb_xfer** %30, align 8
  br label %31

31:                                               ; preds = %28, %27
  %32 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %33 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %92, label %36

36:                                               ; preds = %31
  %37 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %38 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %83, %36
  %40 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %41 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %43 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %45 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %44, i32 0, i32 3
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %45, align 8
  %47 = icmp eq %struct.usb_xfer* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %39
  %49 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %50 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %49, i32 0, i32 5
  %51 = call %struct.usb_xfer* @TAILQ_FIRST(i32* %50)
  store %struct.usb_xfer* %51, %struct.usb_xfer** %4, align 8
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %53 = icmp ne %struct.usb_xfer* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %56 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %55, i32 0, i32 5
  %57 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %58 = load i32, i32* @wait_entry, align 4
  %59 = call i32 @TAILQ_REMOVE(i32* %56, %struct.usb_xfer* %57, i32 %58)
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %61 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %63 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %64 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %63, i32 0, i32 3
  store %struct.usb_xfer* %62, %struct.usb_xfer** %64, align 8
  br label %66

65:                                               ; preds = %48
  br label %89

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %39
  %68 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %69 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %68, i32 0, i32 3
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %69, align 8
  %71 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.usb_xfer* %70)
  %72 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %73 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %72, i32 0, i32 4
  %74 = load i32 (%struct.usb_xfer_queue*)*, i32 (%struct.usb_xfer_queue*)** %73, align 8
  %75 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %76 = call i32 %74(%struct.usb_xfer_queue* %75)
  %77 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %78 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %77, i32 0, i32 3
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %78, align 8
  %80 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.usb_xfer* %79)
  %81 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %82 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %67
  %84 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %85 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %39, label %89

89:                                               ; preds = %83, %65
  %90 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %91 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %95

92:                                               ; preds = %31
  %93 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %94 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %21, %92, %89
  ret void
}

declare dso_local i32 @usbd_transfer_enqueue(%struct.usb_xfer_queue*, %struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*) #1

declare dso_local %struct.usb_xfer* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
