; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_default_initiator_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_default_initiator_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_POSIX_HOST_NAME_MAX = common dso_local global i64 0, align 8
@DEFAULT_IQN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gethostname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @default_initiator_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @default_initiator_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @_POSIX_HOST_NAME_MAX, align 8
  %5 = load i32, i32* @DEFAULT_IQN, align 4
  %6 = call i64 @strlen(i32 %5)
  %7 = add i64 %4, %6
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = add i64 %8, 1
  %10 = call i8* @calloc(i32 1, i64 %9)
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i8*, i8** %1, align 8
  %17 = load i32, i32* @DEFAULT_IQN, align 4
  %18 = call i32 @strcpy(i8* %16, i32 %17)
  %19 = load i8*, i8** %1, align 8
  %20 = load i32, i32* @DEFAULT_IQN, align 4
  %21 = call i64 @strlen(i32 %20)
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i64, i64* %2, align 8
  %24 = load i32, i32* @DEFAULT_IQN, align 4
  %25 = call i64 @strlen(i32 %24)
  %26 = sub i64 %23, %25
  %27 = call i32 @gethostname(i8* %22, i64 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %15
  %33 = load i8*, i8** %1, align 8
  ret i8* %33
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @gethostname(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
