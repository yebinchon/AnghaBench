; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_element_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_element_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.mac_mls_element = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MAC_MLS_MAX_COMPARTMENTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"+%d\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"mls_element_to_string: invalid type (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbuf*, %struct.mac_mls_element*)* @mls_element_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_element_to_string(%struct.sbuf* %0, %struct.mac_mls_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.mac_mls_element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store %struct.mac_mls_element* %1, %struct.mac_mls_element** %5, align 8
  %8 = load %struct.mac_mls_element*, %struct.mac_mls_element** %5, align 8
  %9 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %68 [
    i32 130, label %11
    i32 128, label %14
    i32 131, label %17
    i32 129, label %20
  ]

11:                                               ; preds = %2
  %12 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %13 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %73

14:                                               ; preds = %2
  %15 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %16 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %19 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %22 = load %struct.mac_mls_element*, %struct.mac_mls_element** %5, align 8
  %23 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %73

28:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %64, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAC_MLS_MAX_COMPARTMENTS, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.mac_mls_element*, %struct.mac_mls_element** %5, align 8
  %36 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MAC_MLS_BIT_TEST(i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %45 = call i32 @sbuf_putc(%struct.sbuf* %44, i8 signext 58)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %73

48:                                               ; preds = %43
  %49 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %73

54:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %62

55:                                               ; preds = %40
  %56 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %73

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %54
  br label %63

63:                                               ; preds = %62, %33
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %29

67:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %73

68:                                               ; preds = %2
  %69 = load %struct.mac_mls_element*, %struct.mac_mls_element** %5, align 8
  %70 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %11, %14, %17, %27, %47, %53, %60, %67, %68
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @MAC_MLS_BIT_TEST(i32, i32) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
