; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_chgsbsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_chgsbsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uidinfo = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"sbsize\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chgsbsize(%struct.uidinfo* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.uidinfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uidinfo* %0, %struct.uidinfo** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %11, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %34

21:                                               ; preds = %17, %4
  %22 = load %struct.uidinfo*, %struct.uidinfo** %5, align 8
  %23 = load %struct.uidinfo*, %struct.uidinfo** %5, align 8
  %24 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @chglimit(%struct.uidinfo* %22, i32* %24, i32 %25, i64 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %21
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

declare dso_local i32 @chglimit(%struct.uidinfo*, i32*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
