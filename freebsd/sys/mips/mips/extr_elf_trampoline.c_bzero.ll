; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_elf_trampoline.c_bzero.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_elf_trampoline.c_bzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @bzero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bzero(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i64, i64* %4, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load i64, i64* %4, align 8
  %12 = icmp uge i64 %11, 4
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i64*
  store i64 0, i64* %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  store i8* %22, i8** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = sub i64 %23, 4
  store i64 %24, i64* %4, align 8
  br label %31

25:                                               ; preds = %13, %10
  %26 = load i8*, i8** %5, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %25, %18
  br label %7

32:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
