; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_err_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_err_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_SG_INT_CAUSE = common dso_local global i32 0, align 4
@SGE_PARERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SGE parity error (0x%x)\0A\00", align 1
@SGE_FRAMINGERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SGE framing error (0x%x)\0A\00", align 1
@F_RSPQCREDITOVERFOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"SGE response queue credit overflow\0A\00", align 1
@F_RSPQDISABLED = common dso_local global i32 0, align 4
@A_SG_RSPQ_FL_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"packet delivered to disabled response queue (0x%x)\0A\00", align 1
@S_RSPQ0DISABLED = common dso_local global i32 0, align 4
@SGE_FATALERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_sge_err_intr_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @A_SG_INT_CAUSE, align 4
  %7 = call i32 @t3_read_reg(i32* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SGE_PARERR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SGE_PARERR, align 4
  %16 = and i32 %14, %15
  %17 = call i32 (i32*, i8*, ...) @CH_ALERT(i32* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SGE_FRAMINGERR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SGE_FRAMINGERR, align 4
  %27 = and i32 %25, %26
  %28 = call i32 (i32*, i8*, ...) @CH_ALERT(i32* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @F_RSPQCREDITOVERFOW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 (i32*, i8*, ...) @CH_ALERT(i32* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @F_RSPQDISABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @A_SG_RSPQ_FL_STATUS, align 4
  %45 = call i32 @t3_read_reg(i32* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @S_RSPQ0DISABLED, align 4
  %49 = lshr i32 %47, %48
  %50 = and i32 %49, 255
  %51 = call i32 (i32*, i8*, ...) @CH_ALERT(i32* %46, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %42, %37
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @A_SG_INT_CAUSE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @t3_write_reg(i32* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @SGE_FATALERR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @t3_fatal_err(i32* %62)
  br label %64

64:                                               ; preds = %61, %52
  ret void
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @CH_ALERT(i32*, i8*, ...) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @t3_fatal_err(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
