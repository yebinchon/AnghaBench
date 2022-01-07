; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_blacklist_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_blacklist_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Blacklist not terminated, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Garbage in RAM blacklist, skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i8*)* @vm_page_blacklist_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vm_page_blacklist_next(i8** %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = icmp eq i8** %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  store i64 0, i64* %3, align 8
  br label %126

16:                                               ; preds = %11
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i8**, i8*** %4, align 8
  store i8* null, i8** %23, align 8
  store i64 0, i64* %3, align 8
  br label %126

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %27, %24
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 44
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %45, %40
  %56 = load i8*, i8** %5, align 8
  store i8 0, i8* %56, align 1
  br label %60

57:                                               ; preds = %50
  %58 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %59 = load i8**, i8*** %4, align 8
  store i8* null, i8** %59, align 8
  store i64 0, i64* %3, align 8
  br label %126

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %35
  %62 = load i8**, i8*** %4, align 8
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %121, %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %123

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @strtoq(i8* %70, i8** %7, i32 0)
  store i64 %71, i64* %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %69
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 44
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %102

91:                                               ; preds = %86, %81, %76, %69
  %92 = load i64, i64* %6, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %7, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = icmp ult i8* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %121

100:                                              ; preds = %94
  br label %123

101:                                              ; preds = %91
  br label %103

102:                                              ; preds = %86
  br label %123

103:                                              ; preds = %101
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = icmp uge i8* %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %108, %103
  %114 = load i8**, i8*** %4, align 8
  store i8* null, i8** %114, align 8
  br label %118

115:                                              ; preds = %108
  %116 = load i8*, i8** %7, align 8
  %117 = load i8**, i8*** %4, align 8
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %115, %113
  %119 = load i64, i64* %6, align 8
  %120 = call i64 @trunc_page(i64 %119)
  store i64 %120, i64* %3, align 8
  br label %126

121:                                              ; preds = %99
  %122 = load i8*, i8** %7, align 8
  store i8* %122, i8** %8, align 8
  br label %64

123:                                              ; preds = %102, %100, %64
  %124 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i8**, i8*** %4, align 8
  store i8* null, i8** %125, align 8
  store i64 0, i64* %3, align 8
  br label %126

126:                                              ; preds = %123, %118, %57, %22, %15
  %127 = load i64, i64* %3, align 8
  ret i64 %127
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strtoq(i8*, i8**, i32) #1

declare dso_local i64 @trunc_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
