; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_v4k_print/extr_eeprom.c_load_eeprom_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_v4k_print/extr_eeprom.c_load_eeprom_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%x: %x %x %x %x %x %x %x %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_eeprom_dump(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  br label %16

16:                                               ; preds = %47, %15
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @feof(i32* %17)
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %114

21:                                               ; preds = %16
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @fgets(i8* %22, i32 1024, i32* %23)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %114

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @feof(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %114

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %34 = call i32 @strlen(i8* %33)
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %38 = call i32 @strlen(i8* %37)
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %36, %32
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %44 = call i32 @strlen(i8* %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %114

47:                                               ; preds = %42
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %57 = call i32 @sscanf(i8* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56)
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %87 = load i32, i32* %86, align 16
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %108, i32* %113, align 4
  br label %16

114:                                              ; preds = %46, %31, %26, %16
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @fclose(i32* %115)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
