; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_element_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_element_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.mac_lomac_element = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"lomac_element_to_string: invalid type (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbuf*, %struct.mac_lomac_element*)* @lomac_element_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_element_to_string(%struct.sbuf* %0, %struct.mac_lomac_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.mac_lomac_element*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store %struct.mac_lomac_element* %1, %struct.mac_lomac_element** %5, align 8
  %6 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %5, align 8
  %7 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %24 [
    i32 129, label %9
    i32 128, label %12
    i32 131, label %15
    i32 130, label %18
  ]

9:                                                ; preds = %2
  %10 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %11 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %3, align 4
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %14 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %17 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %20 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %5, align 8
  %21 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %5, align 8
  %26 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %9, %12, %15, %18, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
