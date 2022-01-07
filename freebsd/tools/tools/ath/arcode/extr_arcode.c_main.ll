; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/arcode/extr_arcode.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/arcode/extr_arcode.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.athregrec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"usage: %s <ahq log>\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"op: %d; reg: 0x%x; val: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.athregrec, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 127) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @exit(i32 127) #3
  unreachable

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %57
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @read(i32 %32, %struct.athregrec* %8, i32 12)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 12
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %58

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %49 [
    i32 129, label %41
    i32 128, label %43
    i32 131, label %45
    i32 130, label %47
  ]

41:                                               ; preds = %38
  %42 = call i32 @op_read(%struct.athregrec* %8)
  br label %57

43:                                               ; preds = %38
  %44 = call i32 @op_write(%struct.athregrec* %8)
  br label %57

45:                                               ; preds = %38
  %46 = call i32 @op_device(%struct.athregrec* %8)
  br label %57

47:                                               ; preds = %38
  %48 = call i32 @op_mark(%struct.athregrec* %8)
  br label %57

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %8, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %49, %47, %45, %43, %41
  br label %31

58:                                               ; preds = %37
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read(i32, %struct.athregrec*, i32) #1

declare dso_local i32 @op_read(%struct.athregrec*) #1

declare dso_local i32 @op_write(%struct.athregrec*) #1

declare dso_local i32 @op_device(%struct.athregrec*) #1

declare dso_local i32 @op_mark(%struct.athregrec*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
