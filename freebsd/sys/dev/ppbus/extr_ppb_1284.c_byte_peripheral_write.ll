; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_byte_peripheral_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_byte_peripheral_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPB_PERIPHERAL_TRANSFER = common dso_local global i32 0, align 4
@nINIT = common dso_local global i8 0, align 1
@PPB_FOREVER = common dso_local global i32 0, align 4
@nBUSY = common dso_local global i32 0, align 4
@PPB_INTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PPB_PERIPHERAL_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @byte_peripheral_write(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PPB_PERIPHERAL_TRANSFER, align 4
  %14 = call i32 @ppb_1284_set_state(i32 %12, i32 %13)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %59, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call signext i8 @ppb_rctr(i32 %20)
  store i8 %21, i8* %11, align 1
  %22 = load i32, i32* %5, align 4
  %23 = load i8, i8* %11, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* @nINIT, align 1
  %26 = sext i8 %25 to i32
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  %29 = trunc i32 %28 to i8
  %30 = call i32 @ppb_wctr(i32 %22, i8 signext %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PPB_FOREVER, align 4
  %33 = load i32, i32* @nBUSY, align 4
  %34 = load i32, i32* @nBUSY, align 4
  %35 = load i32, i32* @PPB_INTR, align 4
  %36 = call i32 @ppb_poll_bus(i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %19
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EWOULDBLOCK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %63

44:                                               ; preds = %39, %19
  %45 = load i32, i32* %5, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @byte_peripheral_outbyte(i32 %45, i8* %49, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %63

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %15

62:                                               ; preds = %15
  br label %63

63:                                               ; preds = %62, %57, %43
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PPB_PERIPHERAL_IDLE, align 4
  %69 = call i32 @ppb_1284_set_state(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @ppb_1284_set_state(i32, i32) #1

declare dso_local signext i8 @ppb_rctr(i32) #1

declare dso_local i32 @ppb_wctr(i32, i8 signext) #1

declare dso_local i32 @ppb_poll_bus(i32, i32, i32, i32, i32) #1

declare dso_local i32 @byte_peripheral_outbyte(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
