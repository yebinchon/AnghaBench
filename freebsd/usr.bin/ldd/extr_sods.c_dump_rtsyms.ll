; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_rtsyms.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_rtsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"  Run-time symbols:\0A\00", align 1
@rtsym_count = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"    %6lu%c \00", align 1
@rtsym_used = common dso_local global i64* null, align 8
@rtsym_base = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"/%-5ld %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_rtsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_rtsyms() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %31, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @rtsym_count, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = load i64, i64* %1, align 8
  %9 = load i64*, i64** @rtsym_used, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 42, i32 32
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %8, i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtsym_base, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @dump_sym(i32* %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtsym_base, align 8
  %23 = load i64, i64* %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %1, align 8
  %28 = call signext i8 @rtsym_name(i64 %27)
  %29 = sext i8 %28 to i32
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %26, i32 %29)
  br label %31

31:                                               ; preds = %7
  %32 = load i64, i64* %1, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %1, align 8
  br label %3

34:                                               ; preds = %3
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_sym(i32*) #1

declare dso_local signext i8 @rtsym_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
