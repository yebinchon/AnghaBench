; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/tablegen/extr_tablegen.c_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/tablegen/extr_tablegen.c_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%06X\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @magnitude(i32 %3)
  switch i32 %4, label %5 [
    i32 2, label %6
    i32 3, label %9
    i32 4, label %12
  ]

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %9, %6
  ret void
}

declare dso_local i32 @magnitude(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
