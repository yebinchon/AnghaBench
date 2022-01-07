; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_eeprom.c_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_eeprom.c_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"nothing available for '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid value '%s' for '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strdup(i8* %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EX_OSERR, align 4
  %12 = call i32 @err(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 61)
  store i8* %15, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  store i8 0, i8* %18, align 1
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @ofwo_action(i8* %21, i8* %22)
  store i32 %23, i32* %3, align 4
  switch i32 %23, label %31 [
    i32 128, label %24
    i32 129, label %27
  ]

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %31

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %28, i8* %29)
  br label %31

31:                                               ; preds = %20, %27, %24
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @ofwo_action(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
