; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_start_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_start_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { i32, i32*, i8*, i8* }

@.str = private unnamed_addr constant [40 x i8] c"Only one bit can be set in the kindset\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hid_data* @hid_start_parse(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hid_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_data*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.hid_data* null, %struct.hid_data** %4, align 8
  br label %38

16:                                               ; preds = %3
  %17 = load i32, i32* @M_TEMP, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.hid_data* @malloc(i32 32, i32 %17, i32 %20)
  store %struct.hid_data* %21, %struct.hid_data** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.hid_data*, %struct.hid_data** %8, align 8
  %24 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hid_data*, %struct.hid_data** %8, align 8
  %26 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %25, i32 0, i32 3
  store i8* %22, i8** %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %struct.hid_data*, %struct.hid_data** %8, align 8
  %33 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.hid_data*, %struct.hid_data** %8, align 8
  %36 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.hid_data*, %struct.hid_data** %8, align 8
  store %struct.hid_data* %37, %struct.hid_data** %4, align 8
  br label %38

38:                                               ; preds = %16, %14
  %39 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  ret %struct.hid_data* %39
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local %struct.hid_data* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
