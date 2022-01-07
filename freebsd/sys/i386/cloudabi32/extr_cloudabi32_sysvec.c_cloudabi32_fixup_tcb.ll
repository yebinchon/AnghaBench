; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_fixup_tcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_fixup_tcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.image_params*)* @cloudabi32_fixup_tcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cloudabi32_fixup_tcb(i32** %0, %struct.image_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i64], align 16
  store i32** %0, i32*** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = load %struct.image_params*, %struct.image_params** %5, align 8
  %10 = call i32 @cloudabi32_fixup(i32** %8, %struct.image_params* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32**, i32*** %4, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %18, i64* %19, align 16
  %20 = load i32**, i32*** %4, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %21 to i64
  %23 = call i64 @roundup(i32 4, i32 4)
  %24 = add i64 %22, %23
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %24, i64* %25, align 8
  %26 = call i32 @howmany(i32 16, i32 4)
  %27 = load i32**, i32*** %4, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = sext i32 %26 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %27, align 8
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %33 = load i32**, i32*** %4, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @copyout(i64* %32, i32* %34, i32 16)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %15, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @cloudabi32_fixup(i32**, %struct.image_params*) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @copyout(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
