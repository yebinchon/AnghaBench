; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_inithash.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_inithash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mesgread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inithash() #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @mesgread, align 4
  %4 = call i32 @rewind(i32 %3)
  br label %5

5:                                                ; preds = %10, %0
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %7 = load i32, i32* @mesgread, align 4
  %8 = call i64 @fgetNUL(i8* %6, i32 512, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @hashit(i8* %11, i32 0, i32 %12)
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %15 = call i64 @strlen(i8* %14)
  %16 = add nsw i64 %15, 2
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %5

21:                                               ; preds = %5
  ret void
}

declare dso_local i32 @rewind(i32) #1

declare dso_local i64 @fgetNUL(i8*, i32, i32) #1

declare dso_local i32 @hashit(i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
