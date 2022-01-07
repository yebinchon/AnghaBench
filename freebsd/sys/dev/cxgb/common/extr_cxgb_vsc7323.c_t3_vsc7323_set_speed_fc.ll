; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc7323.c_t3_vsc7323_set_speed_fc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc7323.c_t3_vsc7323_set_speed_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_vsc7323_set_speed_fc(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %74

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SPEED_10, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SPEED_100, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SPEED_1000, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 3, i32* %11, align 4
  store i32 3, i32* %10, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %94

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %24
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @VSC_REG(i32 1, i32 %37, i32 0)
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 %39, 2
  %41 = or i32 42384, %40
  %42 = call i32 @elmr_write(i32* %36, i32 %38, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %35
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @VSC_REG(i32 1, i32 %46, i32 11)
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 %48, 1
  %50 = or i32 145, %49
  %51 = call i32 @elmr_write(i32* %45, i32 %47, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %44
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @VSC_REG(i32 1, i32 %55, i32 11)
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 %57, 1
  %59 = or i32 144, %58
  %60 = call i32 @elmr_write(i32* %54, i32 %56, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @VSC_REG(i32 1, i32 %64, i32 0)
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 %66, 2
  %68 = or i32 42387, %67
  %69 = call i32 @elmr_write(i32* %63, i32 %65, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62, %53, %44, %35
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %94

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @PAUSE_RX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 393728, i32 131584
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @PAUSE_TX, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, 524288
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %85, %74
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @VSC_REG(i32 1, i32 %90, i32 1)
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @elmr_write(i32* %89, i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %88, %71, %30
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @elmr_write(i32*, i32, i32) #1

declare dso_local i32 @VSC_REG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
