; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_config_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_config_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple = type { i32*, i64, i32 }

@CIS_CONF_MAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"\09Wrong length for configuration map tuple\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"\09Reg len = %d, config register addr = 0x%x, last config = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\09Registers: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%d bytes in subtuples\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tuple*)* @dump_config_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_config_map(%struct.tuple* %0) #0 {
  %2 = alloca %struct.tuple*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tuple* %0, %struct.tuple** %2, align 8
  %8 = load %struct.tuple*, %struct.tuple** %2, align 8
  %9 = getelementptr inbounds %struct.tuple, %struct.tuple* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 3
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.tuple*, %struct.tuple** %2, align 8
  %17 = getelementptr inbounds %struct.tuple, %struct.tuple* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CIS_CONF_MAP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 2
  %26 = and i32 %25, 3
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.tuple*, %struct.tuple** %2, align 8
  %30 = getelementptr inbounds %struct.tuple, %struct.tuple* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %32, %33
  %35 = add i32 %34, 2
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %109

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, 16
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = call i32 @parse_num(i32 %42, i32* %44, i32** %3, i32 0)
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %39
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %76, %52
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 88, i32 45
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  %73 = shl i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %59

74:                                               ; preds = %59
  %75 = call i32 @putchar(i8 signext 32)
  br label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %3, align 8
  br label %54

81:                                               ; preds = %54
  br label %82

82:                                               ; preds = %81, %39
  %83 = load %struct.tuple*, %struct.tuple** %2, align 8
  %84 = getelementptr inbounds %struct.tuple, %struct.tuple* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %86, %87
  %89 = add i32 %88, 2
  %90 = sub i32 %85, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %82
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i32 @putchar(i8 signext 9)
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %82
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104, %101
  %108 = call i32 @putchar(i8 signext 10)
  br label %109

109:                                              ; preds = %37, %107, %104
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @parse_num(i32, i32*, i32**, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
