; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_write_packets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_write_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbcap = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Could not write length field of USB data payload\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not write complete USB data payload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbcap*, i32*, i32)* @write_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_packets(%struct.usbcap* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.usbcap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usbcap* %0, %struct.usbcap** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @htole32(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.usbcap*, %struct.usbcap** %4, align 8
  %12 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @write(i32 %13, i32* %7, i32 4)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @err(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.usbcap*, %struct.usbcap** %4, align 8
  %23 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @write(i32 %24, i32* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 @err(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %21
  ret void
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
