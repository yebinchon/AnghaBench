; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_v7.local.c_demail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_v7.local.c_demail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@mailname = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demail() #0 {
  %1 = alloca i32, align 4
  %2 = call i32* @value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i32* %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @mailname, align 4
  %6 = call i64 @rm(i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4, %0
  %9 = load i32, i32* @mailname, align 4
  %10 = load i32, i32* @O_CREAT, align 4
  %11 = load i32, i32* @O_TRUNC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @O_WRONLY, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @open(i32 %9, i32 %14, i32 384)
  store i32 %15, i32* %1, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @close(i32 %18)
  br label %20

20:                                               ; preds = %17, %8
  br label %21

21:                                               ; preds = %20, %4
  ret void
}

declare dso_local i32* @value(i8*) #1

declare dso_local i64 @rm(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
