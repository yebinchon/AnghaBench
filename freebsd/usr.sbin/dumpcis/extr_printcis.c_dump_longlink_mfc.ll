; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_longlink_mfc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_longlink_mfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"\09Wrong length for long link MFC tuple\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\09Function %d: %s memory, address 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32)* @dump_longlink_mfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_longlink_mfc(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64*, i64** %3, align 8
  %8 = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %8, i64** %3, align 8
  %9 = load i64, i64* %7, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %39

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %28 = load i64*, i64** %3, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = call i32 @tpl32(i64* %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %22, i8* %27, i32 %30)
  %32 = load i64*, i64** %3, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 5
  store i64* %33, i64** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 5
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %21
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %12

39:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tpl32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
