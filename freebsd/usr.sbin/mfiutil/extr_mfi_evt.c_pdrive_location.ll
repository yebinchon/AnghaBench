; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_pdrive_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_pdrive_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_evt_pd = type { i32, i32, i32 }

@pdrive_location.buffer = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"%02d(s%d)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%02d(e%d/s%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mfi_evt_pd*)* @pdrive_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pdrive_location(%struct.mfi_evt_pd* %0) #0 {
  %2 = alloca %struct.mfi_evt_pd*, align 8
  store %struct.mfi_evt_pd* %0, %struct.mfi_evt_pd** %2, align 8
  %3 = load %struct.mfi_evt_pd*, %struct.mfi_evt_pd** %2, align 8
  %4 = getelementptr inbounds %struct.mfi_evt_pd, %struct.mfi_evt_pd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.mfi_evt_pd*, %struct.mfi_evt_pd** %2, align 8
  %9 = getelementptr inbounds %struct.mfi_evt_pd, %struct.mfi_evt_pd* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mfi_evt_pd*, %struct.mfi_evt_pd** %2, align 8
  %12 = getelementptr inbounds %struct.mfi_evt_pd, %struct.mfi_evt_pd* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @pdrive_location.buffer, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.mfi_evt_pd*, %struct.mfi_evt_pd** %2, align 8
  %17 = getelementptr inbounds %struct.mfi_evt_pd, %struct.mfi_evt_pd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mfi_evt_pd*, %struct.mfi_evt_pd** %2, align 8
  %20 = getelementptr inbounds %struct.mfi_evt_pd, %struct.mfi_evt_pd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mfi_evt_pd*, %struct.mfi_evt_pd** %2, align 8
  %23 = getelementptr inbounds %struct.mfi_evt_pd, %struct.mfi_evt_pd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @pdrive_location.buffer, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %15, %7
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @pdrive_location.buffer, i64 0, i64 0)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
