; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_print_ascii.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_print_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ascii(i32* %0, %struct.number* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.number*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.number* %1, %struct.number** %4, align 8
  %9 = load %struct.number*, %struct.number** %4, align 8
  %10 = getelementptr inbounds %struct.number, %struct.number* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @BN_dup(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @bn_checkp(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @BN_is_negative(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @BN_set_negative(i32* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @BN_num_bytes(i32* %22)
  %24 = mul nsw i32 %23, 8
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %47, %21
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @BN_is_bit_set(i32* %33, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 7, %39
  %41 = shl i32 %38, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @putc(i32 %48, i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 8
  store i32 %52, i32* %8, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @BN_free(i32* %54)
  ret void
}

declare dso_local i32* @BN_dup(i32) #1

declare dso_local i32 @bn_checkp(i32*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @BN_is_bit_set(i32*, i32) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
