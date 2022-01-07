; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_oct2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_oct2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OCTSTRING_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*, i8*)* @snmp_oct2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_oct2str(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @MAX_OCTSTRING_LEN, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %3
  store i8* null, i8** %4, align 8
  br label %81

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %10, align 8
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %41, %21
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @isprint(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %7, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %7, align 8
  br label %44

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %23

44:                                               ; preds = %34, %23
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %10, align 8
  store i64 0, i64* %9, align 8
  br label %46

46:                                               ; preds = %76, %44
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %10, align 8
  br label %75

64:                                               ; preds = %50
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %64, %53
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %46

79:                                               ; preds = %46
  %80 = load i8*, i8** %7, align 8
  store i8* %80, i8** %4, align 8
  br label %81

81:                                               ; preds = %79, %20
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
