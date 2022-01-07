; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_selectclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_selectclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@nc_scntl3 = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: enabling clock multiplier\0A\00", align 1
@nc_stest1 = common dso_local global i32 0, align 4
@DBLEN = common dso_local global i32 0, align 4
@FE_LCKFRQ = common dso_local global i32 0, align 4
@nc_stest4 = common dso_local global i32 0, align 4
@LCKFRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: the chip cannot lock the frequency\0A\00", align 1
@nc_stest3 = common dso_local global i32 0, align 4
@HSC = common dso_local global i32 0, align 4
@DBLSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @sym_selectclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_selectclock(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @nc_scntl3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @OUTB(i32 %11, i32 %12)
  br label %70

14:                                               ; preds = %2
  %15 = load i32, i32* @sym_verbose, align 4
  %16 = icmp sge i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = call i8* @sym_name(%struct.TYPE_4__* %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* @nc_stest1, align 4
  %23 = load i32, i32* @DBLEN, align 4
  %24 = call i32 @OUTB(i32 %22, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FE_LCKFRQ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %21
  store i32 20, i32* %5, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* @nc_stest4, align 4
  %34 = call i32 @INB(i32 %33)
  %35 = load i32, i32* @LCKFRQ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i1 [ false, %32 ], [ %41, %38 ]
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = call i32 @UDELAY(i32 20)
  br label %32

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = call i8* @sym_name(%struct.TYPE_4__* %50)
  %52 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %46
  br label %56

54:                                               ; preds = %21
  %55 = call i32 @UDELAY(i32 20)
  br label %56

56:                                               ; preds = %54, %53
  %57 = load i32, i32* @nc_stest3, align 4
  %58 = load i32, i32* @HSC, align 4
  %59 = call i32 @OUTB(i32 %57, i32 %58)
  %60 = load i32, i32* @nc_scntl3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @OUTB(i32 %60, i32 %61)
  %63 = load i32, i32* @nc_stest1, align 4
  %64 = load i32, i32* @DBLEN, align 4
  %65 = load i32, i32* @DBLSEL, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @OUTB(i32 %63, i32 %66)
  %68 = load i32, i32* @nc_stest3, align 4
  %69 = call i32 @OUTB(i32 %68, i32 0)
  br label %70

70:                                               ; preds = %56, %10
  ret void
}

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @sym_name(%struct.TYPE_4__*) #1

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
