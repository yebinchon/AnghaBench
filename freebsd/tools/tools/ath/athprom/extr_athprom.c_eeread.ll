; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_eeread.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_eeread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8* }

@HAL_DIAG_EEREAD = common dso_local global i32 0, align 4
@ATH_DIAG_IN = common dso_local global i32 0, align 4
@ATH_DIAG_DYN = common dso_local global i32 0, align 4
@atd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@s = common dso_local global i32 0, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ioctl: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @eeread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @HAL_DIAG_EEREAD, align 4
  %5 = load i32, i32* @ATH_DIAG_IN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @ATH_DIAG_DYN, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @atd, i32 0, i32 0), align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @atd, i32 0, i32 1), align 4
  %9 = bitcast i32* %2 to i8*
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @atd, i32 0, i32 5), align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @atd, i32 0, i32 2), align 8
  %10 = bitcast i32* %3 to i8*
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @atd, i32 0, i32 4), align 8
  %11 = load i32, i32* @s, align 4
  %12 = load i32, i32* @SIOCGATHDIAG, align 4
  %13 = call i64 @ioctl(i32 %11, i32 %12, %struct.TYPE_3__* @atd)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @atd, i32 0, i32 3), align 4
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
