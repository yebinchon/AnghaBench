; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_get_locale.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_get_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@lang_default = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@DEFAULT_LANG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_locale() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %5, i8** %1, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %8, i8** %1, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i8*, i8** @lang_default, align 8
  store i8* %11, i8** %1, align 8
  br label %12

12:                                               ; preds = %10, %7, %4, %0
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** @DEFAULT_LANG, align 8
  store i8* %17, i8** %1, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i8*, i8** %1, align 8
  ret i8* %19
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
