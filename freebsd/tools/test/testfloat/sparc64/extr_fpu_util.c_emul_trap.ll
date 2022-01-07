; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/sparc64/extr_fpu_util.c_emul_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/sparc64/extr_fpu_util.c_emul_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@__fpreg = common dso_local global i64* null, align 8
@utf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@FSR_FTT_MASK = common dso_local global i32 0, align 4
@FSR_FTT_UNFIN = common dso_local global i32 0, align 4
@FSR_FTT_SHIFT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"### %2d %08x != %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @emul_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emul_trap(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [64 x i64], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 64
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i64*, i64** @__fpreg, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %17
  store i64 %15, i64* %18, align 8
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @utf, i32 0, i32 0), align 8
  %24 = load i32, i32* @FSR_FTT_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* @FSR_FTT_UNFIN, align 4
  %28 = load i32, i32* @FSR_FTT_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @utf, i32 0, i32 0), align 8
  %31 = load i32*, i32** %3, align 8
  %32 = ptrtoint i32* %31 to i64
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @utf, i32 0, i32 1), align 8
  %33 = call i64 @__fpu_exception(%struct.TYPE_3__* @utf)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  call void asm "stx %fsr,$0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @utf, i32 0, i32 0)) #2, !srcloc !2
  br label %36

36:                                               ; preds = %35, %22
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %72, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 64
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = and i64 %41, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** @__fpreg, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %47
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** @__fpreg, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %64, i64 %69)
  br label %71

71:                                               ; preds = %58, %47, %40
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %37

75:                                               ; preds = %37
  ret void
}

declare dso_local i64 @__fpu_exception(%struct.TYPE_3__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 842}
