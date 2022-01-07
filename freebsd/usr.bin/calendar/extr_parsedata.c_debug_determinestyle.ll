; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_debug_determinestyle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_debug_determinestyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"-------\0Adate: |%s|\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"flags: %x - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"modifieroffset: |%s|\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"modifierindex: |%s|\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"year: |%s| (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"month: |%s| (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"dayofmonth: |%s| (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"dayofweek: |%s| (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"specialday: |%s|\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i32)* @debug_determinestyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_determinestyle(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i32 %8, i8* %9, i8* %10, i8* %11, i8* %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i8* %1, i8** %16, align 8
  store i32 %2, i32* %17, align 4
  store i8* %3, i8** %18, align 8
  store i32 %4, i32* %19, align 4
  store i8* %5, i8** %20, align 8
  store i32 %6, i32* %21, align 4
  store i8* %7, i8** %22, align 8
  store i32 %8, i32* %23, align 4
  store i8* %9, i8** %24, align 8
  store i8* %10, i8** %25, align 8
  store i8* %11, i8** %26, align 8
  store i8* %12, i8** %27, align 8
  store i32 %13, i32* %28, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %14
  %32 = load i8*, i8** %16, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %109

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i8* @showflags(i32 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* %41)
  %43 = load i8*, i8** %24, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i8*, i8** %24, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i8*, i8** %25, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i8*, i8** %25, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i8*, i8** %27, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i8*, i8** %27, align 8
  %68 = load i32, i32* %28, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i8*, i8** %18, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8*, i8** %18, align 8
  %78 = load i32, i32* %19, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i8*, i8** %20, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i8*, i8** %20, align 8
  %88 = load i32, i32* %21, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %80
  %91 = load i8*, i8** %22, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i8*, i8** %22, align 8
  %98 = load i32, i32* %23, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %90
  %101 = load i8*, i8** %26, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i8*, i8** %26, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %36, %106, %100
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @showflags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
