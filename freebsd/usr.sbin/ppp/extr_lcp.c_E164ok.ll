; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_E164ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_E164ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.callback*, i8*, i32)* @E164ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @E164ok(%struct.callback* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.callback*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.callback* %0, %struct.callback** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.callback*, %struct.callback** %5, align 8
  %12 = getelementptr inbounds %struct.callback, %struct.callback* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcmp(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %19 = load %struct.callback*, %struct.callback** %5, align 8
  %20 = getelementptr inbounds %struct.callback, %struct.callback* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strncpy(i8* %18, i32 %21, i32 3)
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %25 = call i8* @strtok(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %9, align 8
  br label %26

26:                                               ; preds = %43, %17
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memcmp(i8* %36, i8* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %46

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42
  %44 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %9, align 8
  br label %26

45:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %41, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
