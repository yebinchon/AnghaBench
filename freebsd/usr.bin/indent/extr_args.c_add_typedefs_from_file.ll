; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_args.c_add_typedefs_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_args.c_add_typedefs_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"indent: cannot open file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_typedefs_from_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @BUFSIZ, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = call i32 @exit(i32 1) #4
  unreachable

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %24, %18
  %20 = load i32, i32* @BUFSIZ, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @fgets(i8* %9, i32 %20, i32* %21)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i64 @strcspn(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = getelementptr inbounds i8, i8* %9, i64 %25
  store i8 0, i8* %26, align 1
  %27 = call i32 @add_typename(i8* %9)
  br label %19

28:                                               ; preds = %19
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @fclose(i32* %29)
  %31 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %31)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @add_typename(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
