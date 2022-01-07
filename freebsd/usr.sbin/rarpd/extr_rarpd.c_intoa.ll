; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_intoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_intoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intoa.buf = internal global [17 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @intoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @intoa(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @intoa.buf, i64 1, i64 0), i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %7, i8** %3, align 8
  store i8 0, i8* %7, align 1
  store i32 4, i32* %5, align 4
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 255
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = srem i32 %11, 10
  %13 = add nsw i32 %12, 48
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %16, i8** %3, align 8
  store i8 %14, i8* %16, align 1
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %17, 10
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %8
  %22 = load i32, i32* %4, align 4
  %23 = srem i32 %22, 10
  %24 = add nsw i32 %23, 48
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %27, i8** %3, align 8
  store i8 %25, i8* %27, align 1
  %28 = load i32, i32* %4, align 4
  %29 = sdiv i32 %28, 10
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 48
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %3, align 8
  store i8 %35, i8* %37, align 1
  br label %38

38:                                               ; preds = %32, %21
  br label %39

39:                                               ; preds = %38, %8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %41, i8** %3, align 8
  store i8 46, i8* %41, align 1
  %42 = load i32, i32* %2, align 4
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %5, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %8, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  ret i8* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
