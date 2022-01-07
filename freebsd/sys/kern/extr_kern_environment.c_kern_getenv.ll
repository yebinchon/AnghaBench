; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_kern_getenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_kern_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KENV_MNAMELEN = common dso_local global i32 0, align 4
@KENV_MVALLEN = common dso_local global i64 0, align 8
@dynamic_kenv = common dso_local global i64 0, align 8
@M_KENV = common dso_local global i32 0, align 4
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"getenv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kern_getenv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @KENV_MNAMELEN, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @KENV_MVALLEN, align 8
  %10 = add nsw i64 %8, %9
  %11 = add nsw i64 %10, 1
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i64, i64* @dynamic_kenv, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = trunc i64 %11 to i32
  %19 = call i64 @getenv_string(i8* %17, i8* %13, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @M_KENV, align 4
  %23 = call i8* @strdup(i8* %13, i32 %22)
  store i8* %23, i8** %5, align 8
  br label %29

24:                                               ; preds = %16
  store i8* null, i8** %5, align 8
  %25 = load i32, i32* @WARN_GIANTOK, align 4
  %26 = load i32, i32* @WARN_SLEEPOK, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @WITNESS_WARN(i32 %27, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %21
  br label %33

30:                                               ; preds = %1
  %31 = load i8*, i8** %2, align 8
  %32 = call i8* @_getenv_static(i8* %31)
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %35)
  ret i8* %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getenv_string(i8*, i8*, i32) #2

declare dso_local i8* @strdup(i8*, i32) #2

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #2

declare dso_local i8* @_getenv_static(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
