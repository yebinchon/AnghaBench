; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_hexbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_hexbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @hexbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hexbyte(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 15
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 48, %14
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %16, i8* %18, align 1
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 65, %20
  %22 = sub nsw i32 %21, 10
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %23, i8* %25, align 1
  br label %26

26:                                               ; preds = %19, %13
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 48, %30
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %32, i8* %34, align 1
  br label %42

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 65, %36
  %38 = sub nsw i32 %37, 10
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 %39, i8* %41, align 1
  br label %42

42:                                               ; preds = %35, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
