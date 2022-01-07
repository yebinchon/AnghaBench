; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_keys.c_keys_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_keys.c_keys_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keys = type { i8**, i32** }

@.str = private unnamed_addr constant [21 x i8] c"key to send: \22%s=%s\22\00", align 1
@KEYS_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"too many keys\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keys_add(%struct.keys* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.keys*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.keys* %0, %struct.keys** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @log_debugx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %43, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @KEYS_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load %struct.keys*, %struct.keys** %4, align 8
  %17 = getelementptr inbounds %struct.keys, %struct.keys* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @checked_strdup(i8* %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.keys*, %struct.keys** %4, align 8
  %29 = getelementptr inbounds %struct.keys, %struct.keys* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  store i32* %27, i32** %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @checked_strdup(i8* %34)
  %36 = load %struct.keys*, %struct.keys** %4, align 8
  %37 = getelementptr inbounds %struct.keys, %struct.keys* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %35, i8** %41, align 8
  br label %48

42:                                               ; preds = %15
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %11

46:                                               ; preds = %11
  %47 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %24
  ret void
}

declare dso_local i32 @log_debugx(i8*, i8*, i8*) #1

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @log_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
