; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/itwd/extr_itwd.c_itwd_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/itwd/extr_itwd.c_itwd_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"got interrupt, wdt status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @itwd_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itwd_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @superio_read(i8* %6, i32 113)
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* @bootverbose, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 1
  %14 = call i32 @device_printf(i8* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, -2
  %19 = call i32 @superio_write(i8* %16, i32 113, i32 %18)
  ret void
}

declare dso_local i32 @superio_read(i8*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, i32) #1

declare dso_local i32 @superio_write(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
