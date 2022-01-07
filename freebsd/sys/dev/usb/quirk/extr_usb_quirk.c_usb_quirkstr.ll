; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/quirk/extr_usb_quirk.c_usb_quirkstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/quirk/extr_usb_quirk.c_usb_quirkstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_QUIRK_MAX = common dso_local global i64 0, align 8
@usb_quirk_str = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [11 x i8] c"UQ_UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @usb_quirkstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_quirkstr(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @USB_QUIRK_MAX, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i8**, i8*** @usb_quirk_str, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load i8**, i8*** @usb_quirk_str, align 8
  %14 = load i64, i64* %2, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %6, %1
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i8* [ %16, %12 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %17 ]
  ret i8* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
