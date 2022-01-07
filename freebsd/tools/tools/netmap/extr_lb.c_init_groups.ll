; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_init_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_init_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.group_des = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.group_des* }

@glob_arg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@groups = common dso_local global %struct.group_des* null, align 8
@ports = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_groups() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.group_des*, align 8
  %5 = alloca %struct.group_des*, align 8
  store i32 0, i32* %3, align 4
  store %struct.group_des* null, %struct.group_des** %4, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %86, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glob_arg, i32 0, i32 0), align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %89

10:                                               ; preds = %6
  %11 = load %struct.group_des*, %struct.group_des** @groups, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.group_des, %struct.group_des* %11, i64 %13
  store %struct.group_des* %14, %struct.group_des** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ports, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = load %struct.group_des*, %struct.group_des** %4, align 8
  %20 = getelementptr inbounds %struct.group_des, %struct.group_des* %19, i32 0, i32 5
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %36, %10
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.group_des*, %struct.group_des** %4, align 8
  %24 = getelementptr inbounds %struct.group_des, %struct.group_des* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.group_des*, %struct.group_des** %4, align 8
  %29 = load %struct.group_des*, %struct.group_des** %4, align 8
  %30 = getelementptr inbounds %struct.group_des, %struct.group_des* %29, i32 0, i32 5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.group_des* %28, %struct.group_des** %35, align 8
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.group_des*, %struct.group_des** %4, align 8
  %41 = getelementptr inbounds %struct.group_des, %struct.group_des* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.group_des*, %struct.group_des** %4, align 8
  %46 = getelementptr inbounds %struct.group_des, %struct.group_des* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %39
  %50 = load %struct.group_des*, %struct.group_des** %4, align 8
  %51 = getelementptr inbounds %struct.group_des, %struct.group_des* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glob_arg, i32 0, i32 1), align 4
  %54 = call i32 @strcpy(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %39
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %82, %55
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %1, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = load %struct.group_des*, %struct.group_des** @groups, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.group_des, %struct.group_des* %61, i64 %63
  store %struct.group_des* %64, %struct.group_des** %5, align 8
  %65 = load %struct.group_des*, %struct.group_des** %5, align 8
  %66 = getelementptr inbounds %struct.group_des, %struct.group_des* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.group_des*, %struct.group_des** %4, align 8
  %69 = getelementptr inbounds %struct.group_des, %struct.group_des* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strcmp(i32 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %60
  %74 = load %struct.group_des*, %struct.group_des** %5, align 8
  %75 = getelementptr inbounds %struct.group_des, %struct.group_des* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.group_des*, %struct.group_des** %4, align 8
  %78 = getelementptr inbounds %struct.group_des, %struct.group_des* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %73, %60
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %56

85:                                               ; preds = %56
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %1, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %1, align 4
  br label %6

89:                                               ; preds = %6
  %90 = load %struct.group_des*, %struct.group_des** %4, align 8
  %91 = getelementptr inbounds %struct.group_des, %struct.group_des* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  ret void
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
