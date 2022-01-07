; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_main.c_CheckLabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_main.c_CheckLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@PHYS_DIRECT = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Label %s rejected -direct connection: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.prompt*, i32)* @CheckLabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckLabel(i8* %0, %struct.prompt* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.prompt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.prompt* %1, %struct.prompt** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.prompt*, %struct.prompt** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @system_IsValid(i8* %8, %struct.prompt* %9, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PHYS_DIRECT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @LogWARN, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @log_Printf(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %21, %13
  %27 = call i32 (...) @log_Close()
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %3
  ret void
}

declare dso_local i8* @system_IsValid(i8*, %struct.prompt*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @log_Close(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
