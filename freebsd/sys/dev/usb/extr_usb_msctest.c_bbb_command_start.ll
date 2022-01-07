; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_bbb_command_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_bbb_command_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbb_transfer = type { i64, i64, i32, i64, i64, i32, i32, i32*, %struct.TYPE_2__*, i64, i64, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }

@DIR_NONE = common dso_local global i8* null, align 8
@USB_MS_HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"SCSI cmd = %*D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bbb_transfer*, i8*, i8*, i8*, i64, i8*, i64, i64)* @bbb_command_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbb_command_start(%struct.bbb_transfer* %0, i8* %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.bbb_transfer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.bbb_transfer* %0, %struct.bbb_transfer** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %19 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %18, i32 0, i32 13
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = load i8*, i8** %10, align 8
  br label %26

24:                                               ; preds = %8
  %25 = load i8*, i8** @DIR_NONE, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i8* [ %23, %22 ], [ %25, %24 ]
  %28 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %29 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %28, i32 0, i32 12
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %32 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %31, i32 0, i32 11
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %35 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %38 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %16, align 8
  %40 = load i64, i64* @USB_MS_HZ, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %43 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %42, i32 0, i32 10
  store i64 %41, i64* %43, align 8
  %44 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %45 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %47 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %50 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %52 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %51, i32 0, i32 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @memset(i64* %54, i32 0, i32 8)
  %56 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %57 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %56, i32 0, i32 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @memcpy(i64* %59, i8* %60, i64 %61)
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %66 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %65, i32 0, i32 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %64, i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %73 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %72, i32 0, i32 5
  %74 = call i32 @USB_MTX_LOCK(i32* %73)
  %75 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %76 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %75, i32 0, i32 7
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %79 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @usbd_transfer_start(i32 %82)
  br label %84

84:                                               ; preds = %95, %26
  %85 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %86 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %89 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @usbd_transfer_pending(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %97 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %96, i32 0, i32 6
  %98 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %99 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %98, i32 0, i32 5
  %100 = call i32 @cv_wait(i32* %97, i32* %99)
  br label %84

101:                                              ; preds = %84
  %102 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %103 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %102, i32 0, i32 5
  %104 = call i32 @USB_MTX_UNLOCK(i32* %103)
  %105 = load %struct.bbb_transfer*, %struct.bbb_transfer** %9, align 8
  %106 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  ret i32 %107
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @USB_MTX_LOCK(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i64 @usbd_transfer_pending(i32) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @USB_MTX_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
