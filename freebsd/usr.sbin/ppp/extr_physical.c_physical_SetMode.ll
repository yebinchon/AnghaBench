; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_SetMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_SetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PHYS_DIRECT = common dso_local global i32 0, align 4
@PHYS_DEDICATED = common dso_local global i32 0, align 4
@PHYS_BACKGROUND = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: Cannot change mode %s to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical_SetMode(%struct.physical* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.physical*, align 8
  %5 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.physical*, %struct.physical** %4, align 8
  %7 = getelementptr inbounds %struct.physical, %struct.physical* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PHYS_DIRECT, align 4
  %10 = load i32, i32* @PHYS_DEDICATED, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PHYS_DIRECT, align 4
  %17 = load i32, i32* @PHYS_DEDICATED, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %14, %2
  %22 = load %struct.physical*, %struct.physical** %4, align 8
  %23 = getelementptr inbounds %struct.physical, %struct.physical* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PHYS_DIRECT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PHYS_BACKGROUND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %28, %21
  %34 = load i32, i32* @LogWARN, align 4
  %35 = load %struct.physical*, %struct.physical** %4, align 8
  %36 = getelementptr inbounds %struct.physical, %struct.physical* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.physical*, %struct.physical** %4, align 8
  %40 = getelementptr inbounds %struct.physical, %struct.physical* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mode2Nam(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @mode2Nam(i32 %43)
  %45 = call i32 @log_Printf(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42, i32 %44)
  store i32 0, i32* %3, align 4
  br label %50

46:                                               ; preds = %28, %14
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.physical*, %struct.physical** %4, align 8
  %49 = getelementptr inbounds %struct.physical, %struct.physical* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %33
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @log_Printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mode2Nam(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
