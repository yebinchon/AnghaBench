; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_oct2bridgeid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_oct2bridgeid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SNMP_BRIDGEID_OCTETS = common dso_local global i64 0, align 8
@SNMP_MAX_BRIDGE_PRIORITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid bridge priority %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%2.2x\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c":%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*, i8*)* @snmp_oct2bridgeid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_oct2bridgeid(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @SNMP_BRIDGEID_OCTETS, align 8
  %13 = icmp ne i64 %11, %12
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
  br label %80

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i64
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @SNMP_MAX_BRIDGE_PRIORITY, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %41)
  store i8* null, i8** %4, align 8
  br label %80

43:                                               ; preds = %21
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8 signext %47)
  %49 = load i8*, i8** %8, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 signext %56)
  %58 = load i8*, i8** %8, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %8, align 8
  store i64 1, i64* %9, align 8
  br label %61

61:                                               ; preds = %75, %52
  %62 = load i64, i64* %9, align 8
  %63 = icmp slt i64 %62, 6
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add nsw i64 %67, 2
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8 signext %70)
  %72 = load i8*, i8** %8, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %8, align 8
  br label %75

75:                                               ; preds = %64
  %76 = load i64, i64* %9, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %9, align 8
  br label %61

78:                                               ; preds = %61
  %79 = load i8*, i8** %7, align 8
  store i8* %79, i8** %4, align 8
  br label %80

80:                                               ; preds = %78, %40, %20
  %81 = load i8*, i8** %4, align 8
  ret i8* %81
}

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
