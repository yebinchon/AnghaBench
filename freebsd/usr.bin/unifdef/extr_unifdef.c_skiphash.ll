; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_skiphash.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_skiphash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linenum = common dso_local global i32 0, align 4
@tline = common dso_local global i8* null, align 8
@MAXLINE = common dso_local global i32 0, align 4
@input = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"can't read %s\00", align 1
@filename = common dso_local global i32 0, align 4
@linestate = common dso_local global i64 0, align 8
@LS_START = common dso_local global i64 0, align 8
@LS_HASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @skiphash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @skiphash() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @linenum, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @linenum, align 4
  %5 = load i8*, i8** @tline, align 8
  %6 = load i32, i32* @MAXLINE, align 4
  %7 = load i32, i32* @input, align 4
  %8 = call i32* @fgets(i8* %5, i32 %6, i32 %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* @input, align 4
  %12 = call i64 @ferror(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @filename, align 4
  %16 = call i32 @err(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %18

17:                                               ; preds = %10
  store i8* null, i8** %1, align 8
  br label %45

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i8*, i8** @tline, align 8
  %21 = call i8* @skipcomment(i8* %20)
  store i8* %21, i8** %2, align 8
  %22 = load i64, i64* @linestate, align 8
  %23 = load i64, i64* @LS_START, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i8*, i8** %2, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i64, i64* @LS_HASH, align 8
  store i64 %31, i64* @linestate, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i8* @skipcomment(i8* %33)
  store i8* %34, i8** %1, align 8
  br label %45

35:                                               ; preds = %25, %19
  %36 = load i8*, i8** %2, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** %2, align 8
  store i8* %41, i8** %1, align 8
  br label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %2, align 8
  %44 = call i8* @skipline(i8* %43)
  store i8* %44, i8** %1, align 8
  br label %45

45:                                               ; preds = %42, %40, %30, %17
  %46 = load i8*, i8** %1, align 8
  ret i8* %46
}

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i8* @skipcomment(i8*) #1

declare dso_local i8* @skipline(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
