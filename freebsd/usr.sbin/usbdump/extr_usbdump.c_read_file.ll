; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_read_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbcap = type { i32 }

@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not read complete USB data payload\00", align 1
@uf_minor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbcap*)* @read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_file(%struct.usbcap* %0) #0 {
  %2 = alloca %struct.usbcap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.usbcap* %0, %struct.usbcap** %2, align 8
  br label %6

6:                                                ; preds = %43, %1
  %7 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %8 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @read(i32 %9, i32* %3, i32 4)
  store i32 %10, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %49

13:                                               ; preds = %6
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @le32toh(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32* @malloc(i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EX_SOFTWARE, align 4
  %22 = call i32 @errx(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %25 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @read(i32 %26, i32* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 @err(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %23
  %37 = load i32, i32* @uf_minor, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @fix_packets(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @print_packets(i32* %44, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @free(i32* %47)
  br label %6

49:                                               ; preds = %6
  ret void
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fix_packets(i32*, i32) #1

declare dso_local i32 @print_packets(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
