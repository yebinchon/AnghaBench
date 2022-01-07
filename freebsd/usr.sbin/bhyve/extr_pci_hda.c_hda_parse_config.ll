; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_parse_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Opts too big\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"opts: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @hda_parse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_parse_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %13, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp uge i64 %20, 64
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %89

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %52, %24
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 44
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %10, align 8
  br label %55

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %30

55:                                               ; preds = %42, %30
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = call i32 @memcmp(i8* %56, i8* %57, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 @strncpy(i8* %63, i8* %67, i32 64)
  store i32 1, i32* %4, align 4
  br label %89

69:                                               ; preds = %55
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %89

73:                                               ; preds = %69
  %74 = load i8*, i8** %10, align 8
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = call i32 @memcmp(i8* %75, i8* %76, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %73
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i64 @strlen(i8* %84)
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = call i32 @strncpy(i8* %82, i8* %86, i32 64)
  store i32 1, i32* %4, align 4
  br label %89

88:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %81, %72, %62, %22, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
