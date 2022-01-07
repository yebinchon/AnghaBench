; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_save_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_save_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%.2X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@KEY_FILE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"open()\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\0AKey: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"write %d/%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_key(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 %9, 3
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 64
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %15, align 16
  br label %16

16:                                               ; preds = %35, %2
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %29 = call i32 @strcat(i8* %27, i8* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %34 = call i32 @strcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %20
  br label %16

36:                                               ; preds = %16
  %37 = load i32, i32* @KEY_FILE, align 4
  %38 = load i32, i32* @O_WRONLY, align 4
  %39 = load i32, i32* @O_CREAT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @open(i32 %37, i32 %40, i32 420)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %36
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %48 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %52 = call i32 @strlen(i8* %51)
  %53 = call i32 @write(i32 %49, i8* %50, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %46
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %61 = call i32 @strlen(i8* %60)
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %66 = call i32 @strlen(i8* %65)
  %67 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @close(i32 %69)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
