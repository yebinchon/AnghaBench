; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_atapi.c_sati_atapi_translate_number_of_bytes_transferred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_atapi.c_sati_atapi_translate_number_of_bytes_transferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_atapi_translate_number_of_bytes_transferred(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @sati_cb_get_cdb_address(i8* %10)
  store i32* %11, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %25 [
    i32 128, label %15
    i32 81, label %20
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @sati_cb_get_data_byte(i8* %16, i32 1, i32* %8)
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %9, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @sati_cb_get_data_byte(i8* %21, i32 1, i32* %8)
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %9, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %20, %15
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_cb_get_data_byte(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
