; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_sms_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_sms_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asmc_softc = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c" notify=0x%x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ACPI\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"asmc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SMS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @asmc_sms_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmc_sms_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asmc_softc*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.asmc_softc*
  store %struct.asmc_softc* %9, %struct.asmc_softc** %5, align 8
  %10 = load %struct.asmc_softc*, %struct.asmc_softc** %5, align 8
  %11 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %16 [
    i32 130, label %13
    i32 129, label %14
    i32 128, label %15
  ]

13:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %17

14:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %17

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

16:                                               ; preds = %2
  store i32 255, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %13
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @snprintf(i8* %18, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %22 = call i32 @devctl_notify(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @devctl_notify(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
