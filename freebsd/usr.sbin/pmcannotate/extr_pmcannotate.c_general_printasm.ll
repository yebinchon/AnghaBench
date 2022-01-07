; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_general_printasm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_general_printasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggent = type { float }
%struct.entry = type { i64 }

@LNBUFF = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" %p:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\09| %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%.2f%%\09| %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.aggent*)* @general_printasm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @general_printasm(i32* %0, %struct.aggent* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.aggent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.aggent* %1, %struct.aggent** %4, align 8
  %10 = load i32, i32* @LNBUFF, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  br label %14

14:                                               ; preds = %56, %35, %31, %2
  %15 = load i32, i32* @LNBUFF, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @fgets(i8* %13, i32 %15, i32* %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  %20 = call i32 @newfunction(i8* %13)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, -1
  %26 = load i32, i32* @SEEK_CUR, align 4
  %27 = call i32 @fseek(i32* %23, i32 %25, i32 %26)
  br label %57

28:                                               ; preds = %19
  %29 = call i32 @isasminline(i8* %13)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %14

32:                                               ; preds = %28
  %33 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %14

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = call %struct.entry* @general_findent(i64 %38)
  store %struct.entry* %39, %struct.entry** %7, align 8
  %40 = load %struct.entry*, %struct.entry** %7, align 8
  %41 = icmp eq %struct.entry* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %56

44:                                               ; preds = %36
  %45 = load %struct.entry*, %struct.entry** %7, align 8
  %46 = getelementptr inbounds %struct.entry, %struct.entry* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to float
  %49 = fmul float %48, 1.000000e+02
  %50 = load %struct.aggent*, %struct.aggent** %4, align 8
  %51 = getelementptr inbounds %struct.aggent, %struct.aggent* %50, i32 0, i32 0
  %52 = load float, float* %51, align 4
  %53 = fdiv float %49, %52
  %54 = fpext float %53 to double
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), double %54, i8* %13)
  br label %56

56:                                               ; preds = %44, %42
  br label %14

57:                                               ; preds = %22, %14
  %58 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @newfunction(i8*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32 @isasminline(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8**) #2

declare dso_local %struct.entry* @general_findent(i64) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
