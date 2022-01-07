; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfe/extr_cfe_env.c_cfe_env_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfe/extr_cfe_env.c_cfe_env_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KENV_MNAMELEN = common dso_local global i32 0, align 4
@KENV_MVALLEN = common dso_local global i32 0, align 4
@cfe_env_buf = common dso_local global i32 0, align 4
@CFE_ENV_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No space to store CFE env: \22%s=%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfe_env_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @KENV_MNAMELEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i32, i32* @KENV_MVALLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %12 = load i32, i32* @cfe_env_buf, align 4
  %13 = load i32, i32* @CFE_ENV_SIZE, align 4
  %14 = call i32 @init_static_kenv(i32 %12, i32 %13)
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %28, %0
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %1, align 4
  %18 = trunc i64 %6 to i32
  %19 = trunc i64 %10 to i32
  %20 = call i64 @cfe_enumenv(i32 %17, i8* %8, i32 %18, i8* %11, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %31

23:                                               ; preds = %16
  %24 = call i64 @kern_setenv(i8* %8, i8* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %11)
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %15

31:                                               ; preds = %22
  %32 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %32)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @init_static_kenv(i32, i32) #2

declare dso_local i64 @cfe_enumenv(i32, i8*, i32, i8*, i32) #2

declare dso_local i64 @kern_setenv(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
