; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c" mw %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" spad %d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" db %d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" at function %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_child*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.ntb_child* @device_get_ivars(i32 %7)
  store %struct.ntb_child* %8, %struct.ntb_child** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @bus_print_child_header(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %13 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %18 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %22 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %27 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %30 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = sub nsw i32 %32, 1
  %34 = call i64 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %25, %16
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %38 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %43 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %47 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %52 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %55 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = sub nsw i32 %57, 1
  %59 = call i64 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %50, %41
  br label %61

61:                                               ; preds = %60, %36
  %62 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %63 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %68 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %72 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %77 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %80 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = sub nsw i32 %82, 1
  %84 = call i64 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %75, %66
  br label %86

86:                                               ; preds = %85, %61
  %87 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %88 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @bus_print_child_domain(i32 %95, i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @bus_print_child_footer(i32 %102, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.ntb_child* @device_get_ivars(i32) #1

declare dso_local i32 @bus_print_child_header(i32, i32) #1

declare dso_local i64 @printf(i8*, i32) #1

declare dso_local i64 @bus_print_child_domain(i32, i32) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
