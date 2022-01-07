; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_elantech_write_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_elantech_write_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELANTECH_REG_WRITE = common dso_local global i32 0, align 4
@ELANTECH_REG_RDWR = common dso_local global i32 0, align 4
@ELANTECH_CUSTOM_CMD = common dso_local global i32 0, align 4
@PSM_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @elantech_write_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_write_1(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @ELANTECH_REG_WRITE, align 4
  br label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @ELANTECH_REG_RDWR, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ELANTECH_CUSTOM_CMD, align 4
  %21 = call i64 @send_aux_command(i32 %19, i32 %20)
  %22 = load i64, i64* @PSM_ACK, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @send_aux_command(i32 %25, i32 %26)
  %28 = load i64, i64* @PSM_ACK, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ELANTECH_CUSTOM_CMD, align 4
  %35 = call i64 @send_aux_command(i32 %33, i32 %34)
  %36 = load i64, i64* @PSM_ACK, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @send_aux_command(i32 %41, i32 %42)
  %44 = load i64, i64* @PSM_ACK, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %68

51:                                               ; preds = %17
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ELANTECH_CUSTOM_CMD, align 4
  %54 = call i64 @send_aux_command(i32 %52, i32 %53)
  %55 = load i64, i64* @PSM_ACK, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @send_aux_command(i32 %60, i32 %61)
  %63 = load i64, i64* @PSM_ACK, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %51, %17
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ELANTECH_CUSTOM_CMD, align 4
  %71 = call i64 @send_aux_command(i32 %69, i32 %70)
  %72 = load i64, i64* @PSM_ACK, align 8
  %73 = icmp ne i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @send_aux_command(i32 %77, i32 %78)
  %80 = load i64, i64* @PSM_ACK, align 8
  %81 = icmp ne i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @set_mouse_scaling(i32 %85, i32 1)
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i64 @send_aux_command(i32, i32) #1

declare dso_local i64 @set_mouse_scaling(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
