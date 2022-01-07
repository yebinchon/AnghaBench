; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_set_constraint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_set_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Cannot get regulator status for %s\0A\00", align 1
@REGULATOR_STATUS_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Cannot get regulator voltage for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Regulator %s current voltage %d is not in the acceptable range : %d<->%d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot enable regulator %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regnode_set_constraint(%struct.regnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %3, align 8
  %7 = load %struct.regnode*, %struct.regnode** %3, align 8
  %8 = getelementptr inbounds %struct.regnode, %struct.regnode* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.regnode*, %struct.regnode** %3, align 8
  %14 = getelementptr inbounds %struct.regnode, %struct.regnode* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %99

19:                                               ; preds = %12, %1
  %20 = load %struct.regnode*, %struct.regnode** %3, align 8
  %21 = call i32 @regnode_status(%struct.regnode* %20, i32* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i64, i64* @bootverbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.regnode*, %struct.regnode** %3, align 8
  %29 = call i8* @regnode_get_name(%struct.regnode* %28)
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %99

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @REGULATOR_STATUS_ENABLED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %99

38:                                               ; preds = %33
  %39 = load %struct.regnode*, %struct.regnode** %3, align 8
  %40 = call i32 @regnode_get_voltage(%struct.regnode* %39, i32* %6)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i64, i64* @bootverbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.regnode*, %struct.regnode** %3, align 8
  %48 = call i8* @regnode_get_name(%struct.regnode* %47)
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %99

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.regnode*, %struct.regnode** %3, align 8
  %55 = getelementptr inbounds %struct.regnode, %struct.regnode* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.regnode*, %struct.regnode** %3, align 8
  %62 = getelementptr inbounds %struct.regnode, %struct.regnode* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %60, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %59, %52
  %67 = load i64, i64* @bootverbose, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.regnode*, %struct.regnode** %3, align 8
  %71 = call i8* @regnode_get_name(%struct.regnode* %70)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.regnode*, %struct.regnode** %3, align 8
  %74 = getelementptr inbounds %struct.regnode, %struct.regnode* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.regnode*, %struct.regnode** %3, align 8
  %78 = getelementptr inbounds %struct.regnode, %struct.regnode* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %71, i32 %72, i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %69, %66
  %83 = load i32, i32* @ERANGE, align 4
  store i32 %83, i32* %2, align 4
  br label %99

84:                                               ; preds = %59
  %85 = load %struct.regnode*, %struct.regnode** %3, align 8
  %86 = call i32 @regnode_enable(%struct.regnode* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load i64, i64* @bootverbose, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.regnode*, %struct.regnode** %3, align 8
  %94 = call i8* @regnode_get_name(%struct.regnode* %93)
  %95 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %99

98:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %96, %82, %50, %37, %31, %18
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @regnode_status(%struct.regnode*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @regnode_get_name(%struct.regnode*) #1

declare dso_local i32 @regnode_get_voltage(%struct.regnode*, i32*) #1

declare dso_local i32 @regnode_enable(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
