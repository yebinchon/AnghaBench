; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_check_trunc_hack.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_check_trunc_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"no extend on truncate! not posix!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_trunc_hack() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = load i32, i32* @fd, align 4
  %3 = call i32 @ftruncate(i32 %2, i64 0)
  %4 = load i32, i32* @fd, align 4
  %5 = call i32 @ftruncate(i32 %4, i64 100000)
  %6 = load i32, i32* @fd, align 4
  %7 = call i32 @fstat(i32 %6, %struct.stat* %1)
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 100000
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 @prt(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 130) #3
  unreachable

14:                                               ; preds = %0
  %15 = load i32, i32* @fd, align 4
  %16 = call i32 @ftruncate(i32 %15, i64 0)
  ret void
}

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @prt(i8*) #1

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
