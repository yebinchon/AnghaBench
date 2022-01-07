; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c__gone_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c__gone_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__FreeBSD_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Obsolete code will removed soon: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Deprecated code (to be removed in FreeBSD %d): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_gone_in(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @__FreeBSD_version, align 4
  %7 = call i32 @P_OSREL_MAJOR(i32 %6)
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @gone_panic(i32 %5, i32 %7, i8* %8)
  %10 = load i32, i32* @__FreeBSD_version, align 4
  %11 = call i32 @P_OSREL_MAJOR(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @gone_panic(i32, i32, i8*) #1

declare dso_local i32 @P_OSREL_MAJOR(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
