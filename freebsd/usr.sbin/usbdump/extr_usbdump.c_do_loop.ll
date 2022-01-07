; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_do_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_do_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbcap = type { i64, i32, i32 }

@doexit = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"read: %s\0A\00", align 1
@w_arg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbcap*)* @do_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_loop(%struct.usbcap* %0) #0 {
  %2 = alloca %struct.usbcap*, align 8
  %3 = alloca i32, align 4
  store %struct.usbcap* %0, %struct.usbcap** %2, align 8
  br label %4

4:                                                ; preds = %49, %33, %29, %1
  %5 = load i64, i64* @doexit, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %55

7:                                                ; preds = %4
  %8 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %9 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %12 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %16 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @read(i32 %10, i32* %14, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %7
  %22 = load i32, i32* @errno, align 4
  switch i32 %22, label %24 [
    i32 128, label %23
  ]

23:                                               ; preds = %21
  br label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i8* @strerror(i32 %26)
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %55

29:                                               ; preds = %23
  br label %4

30:                                               ; preds = %7
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %4

34:                                               ; preds = %30
  %35 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %36 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @fix_packets(i64 %37, i32 %38)
  %40 = load i32*, i32** @w_arg, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %44 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %45 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @write_packets(%struct.usbcap* %43, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %34
  %50 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %51 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @print_packets(i64 %52, i32 %53)
  br label %4

55:                                               ; preds = %24, %4
  ret void
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fix_packets(i64, i32) #1

declare dso_local i32 @write_packets(%struct.usbcap*, i64, i32) #1

declare dso_local i32 @print_packets(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
