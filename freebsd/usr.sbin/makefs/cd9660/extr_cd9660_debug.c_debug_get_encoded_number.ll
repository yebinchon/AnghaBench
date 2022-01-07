; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_debug.c_debug_get_encoded_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_debug.c_debug_get_encoded_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_get_encoded_number(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 711, label %7
    i32 712, label %10
    i32 721, label %13
    i32 731, label %16
    i32 722, label %19
    i32 732, label %22
    i32 723, label %25
    i32 733, label %28
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @isonum_711(i8* %8)
  store i32 %9, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @isonum_712(i8* %11)
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @isonum_721(i8* %14)
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @isonum_731(i8* %17)
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @isonum_722(i8* %20)
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @isonum_732(i8* %23)
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @isonum_723(i8* %26)
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @isonum_733(i8* %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28, %25, %22, %19, %16, %13, %10, %7
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @isonum_711(i8*) #1

declare dso_local i32 @isonum_712(i8*) #1

declare dso_local i32 @isonum_721(i8*) #1

declare dso_local i32 @isonum_731(i8*) #1

declare dso_local i32 @isonum_722(i8*) #1

declare dso_local i32 @isonum_732(i8*) #1

declare dso_local i32 @isonum_723(i8*) #1

declare dso_local i32 @isonum_733(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
