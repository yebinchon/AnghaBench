; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptable/extr_mptable.c_MPConfigDefault.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptable/extr_mptable.c_MPConfigDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"  MP default config type: %d\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"   bus: ISA, APIC: 82489DX\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"   bus: EISA, APIC: 82489DX\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"   bus: MCA, APIC: 82489DX\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"   bus: ISA+PCI, APIC: Integrated\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"   bus: EISA+PCI, APIC: Integrated\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"   bus: MCA+PCI, APIC: Integrated\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"   future type\0A\00", align 1
@nbus = common dso_local global i32 0, align 4
@ncpu = common dso_local global i32 0, align 4
@napic = common dso_local global i32 0, align 4
@nintr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @MPConfigDefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MPConfigDefault(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %20 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
    i32 6, label %16
    i32 7, label %18
  ]

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %22

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %22

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %22

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %22

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %22

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %22

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %22

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %18, %16, %14, %12, %10, %8, %6
  %23 = load i32, i32* %2, align 4
  switch i32 %23, label %26 [
    i32 1, label %24
    i32 2, label %24
    i32 3, label %24
    i32 4, label %24
    i32 5, label %25
    i32 6, label %25
    i32 7, label %25
  ]

24:                                               ; preds = %22, %22, %22, %22
  store i32 1, i32* @nbus, align 4
  br label %28

25:                                               ; preds = %22, %22, %22
  store i32 2, i32* @nbus, align 4
  br label %28

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %25, %24
  store i32 2, i32* @ncpu, align 4
  store i32 1, i32* @napic, align 4
  store i32 16, i32* @nintr, align 4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
