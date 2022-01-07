; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_process = type { i32*, i32, i32, i32, i32, %struct.mtx* }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"usbdrain\00", align 1
@usb_process = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unable to create USB process.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@usb_pcount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_proc_create(%struct.usb_process* %0, %struct.mtx* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_process*, align 8
  %7 = alloca %struct.mtx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_process* %0, %struct.usb_process** %6, align 8
  store %struct.mtx* %1, %struct.mtx** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.mtx*, %struct.mtx** %7, align 8
  %11 = load %struct.usb_process*, %struct.usb_process** %6, align 8
  %12 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %11, i32 0, i32 5
  store %struct.mtx* %10, %struct.mtx** %12, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.usb_process*, %struct.usb_process** %6, align 8
  %15 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.usb_process*, %struct.usb_process** %6, align 8
  %17 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %16, i32 0, i32 3
  %18 = call i32 @TAILQ_INIT(i32* %17)
  %19 = load %struct.usb_process*, %struct.usb_process** %6, align 8
  %20 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %19, i32 0, i32 2
  %21 = call i32 @cv_init(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.usb_process*, %struct.usb_process** %6, align 8
  %23 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %22, i32 0, i32 1
  %24 = call i32 @cv_init(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.usb_process*, %struct.usb_process** %6, align 8
  %26 = load %struct.usb_process*, %struct.usb_process** %6, align 8
  %27 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %26, i32 0, i32 0
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @USB_THREAD_CREATE(i32* @usb_process, %struct.usb_process* %25, i32** %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.usb_process*, %struct.usb_process** %6, align 8
  %34 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

36:                                               ; preds = %31
  %37 = load %struct.usb_process*, %struct.usb_process** %6, align 8
  %38 = call i32 @usb_proc_free(%struct.usb_process* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %35
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i64 @USB_THREAD_CREATE(i32*, %struct.usb_process*, i32**, i8*, i8*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @usb_proc_free(%struct.usb_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
