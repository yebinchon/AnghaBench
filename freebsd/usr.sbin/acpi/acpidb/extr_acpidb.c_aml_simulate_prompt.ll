; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_simulate_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_simulate_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"(default: 0x%jx \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" / %ju) >>\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @aml_simulate_prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aml_simulate_prompt(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %7, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = load i64, i64* %7, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fflush(i32 %22)
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %25 = call i32 @bzero(i8* %24, i32 16)
  br label %26

26:                                               ; preds = %15, %30
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %28 = call i64 @read(i32 0, i8* %27, i32 16)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %26

31:                                               ; preds = %26
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %54

37:                                               ; preds = %31
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 48
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 120
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %49 = call i64 @strtoq(i8* %48, i8** %6, i32 16)
  store i64 %49, i64* %7, align 8
  br label %53

50:                                               ; preds = %42, %37
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %52 = call i64 @strtoq(i8* %51, i8** %6, i32 10)
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i64, i64* %7, align 8
  ret i64 %55
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @strtoq(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
