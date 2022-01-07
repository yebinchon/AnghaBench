; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 (i32, i8*, i32, i32, i64)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_write(%struct.dumperinfo* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dumperinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.dumperinfo*, %struct.dumperinfo** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @dump_check_bounds(%struct.dumperinfo* %13, i32 %14, i64 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %33

21:                                               ; preds = %5
  %22 = load %struct.dumperinfo*, %struct.dumperinfo** %7, align 8
  %23 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %22, i32 0, i32 0
  %24 = load i32 (i32, i8*, i32, i32, i64)*, i32 (i32, i8*, i32, i32, i64)** %23, align 8
  %25 = load %struct.dumperinfo*, %struct.dumperinfo** %7, align 8
  %26 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 %24(i32 %27, i8* %28, i32 %29, i32 %30, i64 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %21, %19
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @dump_check_bounds(%struct.dumperinfo*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
