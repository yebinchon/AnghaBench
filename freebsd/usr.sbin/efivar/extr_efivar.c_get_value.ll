; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efivar/extr_efivar.c_get_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efivar/extr_efivar.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_value.buffer = internal global [16384 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64*)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_value(i8* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = load i64*, i64** %5, align 8
  store i64 %10, i64* %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %3, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load i64*, i64** %5, align 8
  store i64 16384, i64* %15, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @read(i32 0, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @get_value.buffer, i64 0, i64 0), i64 %17)
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  store i32* bitcast ([16384 x i8]* @get_value.buffer to i32*), i32** %3, align 8
  br label %20

20:                                               ; preds = %14, %8
  %21 = load i32*, i32** %3, align 8
  ret i32* %21
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
