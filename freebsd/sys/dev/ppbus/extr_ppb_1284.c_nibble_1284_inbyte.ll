; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_nibble_1284_inbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_nibble_1284_inbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nINIT = common dso_local global i32 0, align 4
@AUTOFEED = common dso_local global i32 0, align 4
@STROBE = common dso_local global i32 0, align 4
@SELECTIN = common dso_local global i32 0, align 4
@nACK = common dso_local global i32 0, align 4
@PPB_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nibble_1284_inbyte(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %56, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %59

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @nINIT, align 4
  %14 = load i32, i32* @AUTOFEED, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @STROBE, align 4
  %17 = load i32, i32* @SELECTIN, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = call i32 @ppb_wctr(i32 %12, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @nACK, align 4
  %24 = call i32 @do_1284_wait(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @PPB_TIMEOUT, align 4
  %29 = call i32 @ppb_1284_set_error(i32 %27, i32 %28, i32 9)
  br label %72

30:                                               ; preds = %11
  %31 = load i32, i32* %3, align 4
  %32 = call signext i8 @ppb_rstr(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 %34
  store i8 %32, i8* %35, align 1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @nINIT, align 4
  %38 = load i32, i32* @AUTOFEED, align 4
  %39 = load i32, i32* @STROBE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SELECTIN, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %37, %43
  %45 = call i32 @ppb_wctr(i32 %36, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @nACK, align 4
  %48 = load i32, i32* @nACK, align 4
  %49 = call i32 @do_1284_wait(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %30
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PPB_TIMEOUT, align 4
  %54 = call i32 @ppb_1284_set_error(i32 %52, i32 %53, i32 11)
  br label %72

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %8

59:                                               ; preds = %8
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @nibble2char(i8 signext %61)
  %63 = shl i32 %62, 4
  %64 = and i32 %63, 240
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @nibble2char(i8 signext %66)
  %68 = and i32 %67, 15
  %69 = or i32 %64, %68
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %4, align 8
  store i8 %70, i8* %71, align 1
  br label %72

72:                                               ; preds = %59, %51, %26
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @do_1284_wait(i32, i32, i32) #1

declare dso_local i32 @ppb_1284_set_error(i32, i32, i32) #1

declare dso_local signext i8 @ppb_rstr(i32) #1

declare dso_local i32 @nibble2char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
