; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_DumpBuff.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_DumpBuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_DumpBuff(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [68 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @log_IsKept(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %87

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @log_Printf(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %18, %15
  br label %28

28:                                               ; preds = %72, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %28
  %32 = getelementptr inbounds [68 x i8], [68 x i8]* %9, i64 0, i64 0
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 50
  store i8* %34, i8** %11, align 8
  %35 = getelementptr inbounds [68 x i8], [68 x i8]* %9, i64 0, i64 0
  store i8* %35, i8** %10, align 8
  br label %36

36:                                               ; preds = %67, %31
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds [68 x i8], [68 x i8]* %9, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 48
  %40 = icmp ne i8* %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %42, 0
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i1 [ false, %36 ], [ %44, %41 ]
  br i1 %46, label %47, label %72

47:                                               ; preds = %45
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @isprint(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  br label %62

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ %60, %57 ], [ 46, %61 ]
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %11, align 8
  store i8 %64, i8* %65, align 1
  br label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  br label %36

72:                                               ; preds = %45
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds [68 x i8], [68 x i8]* %9, i64 0, i64 0
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sub nsw i64 50, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(i8* %73, i8 signext 32, i32 %80)
  %82 = load i8*, i8** %11, align 8
  store i8 0, i8* %82, align 1
  %83 = load i32, i32* %5, align 4
  %84 = getelementptr inbounds [68 x i8], [68 x i8]* %9, i64 0, i64 0
  %85 = call i32 @log_Printf(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %84)
  br label %28

86:                                               ; preds = %28
  br label %87

87:                                               ; preds = %86, %4
  ret void
}

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
