; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @image_copyin(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @image_chunk_skipto(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @fstat(i32 %14, %struct.stat* %7)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISREG(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @image_copyin_stream(i32 %23, i32 %24, i32* %25)
  store i32 %26, i32* %8, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @image_copyin_mapped(i32 %28, i32 %29, i32* %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @image_chunk_skipto(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @image_copyin_stream(i32, i32, i32*) #1

declare dso_local i32 @image_copyin_mapped(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
