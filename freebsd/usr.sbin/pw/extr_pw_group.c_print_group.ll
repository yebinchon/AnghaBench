; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_print_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_print_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i64*, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Group Name: %-15s   #%lu\0A   Members: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.group*, i32)* @print_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_group(%struct.group* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.group* %0, %struct.group** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %2
  %11 = load %struct.group*, %struct.group** %4, align 8
  %12 = getelementptr inbounds %struct.group, %struct.group* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.group*, %struct.group** %4, align 8
  %15 = getelementptr inbounds %struct.group, %struct.group* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %13, i64 %16)
  %18 = load %struct.group*, %struct.group** %4, align 8
  %19 = getelementptr inbounds %struct.group, %struct.group* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load %struct.group*, %struct.group** %4, align 8
  %25 = getelementptr inbounds %struct.group, %struct.group* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %37 = load %struct.group*, %struct.group** %4, align 8
  %38 = getelementptr inbounds %struct.group, %struct.group* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36, i64 %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %23

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48, %10
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %61

53:                                               ; preds = %2
  %54 = load %struct.group*, %struct.group** %4, align 8
  %55 = call i8* @gr_make(%struct.group* %54)
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %49
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i8* @gr_make(%struct.group*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
